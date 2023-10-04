# Variables
SRC_DIR = src
GRAMMAR = TurtleGrammar.g4
PY_SCRIPT = TurtleInterpreter.py

# Targets
all: clean antlr python

clean:
	rm -rf $(SRC_DIR)/__pycache__ $(SRC_DIR)/*.interp $(SRC_DIR)/*.tokens $(SRC_DIR)/*Lexer.py $(SRC_DIR)/*Parser.py $(SRC_DIR)/*Visitor.py

antlr:
	cd $(SRC_DIR) && antlr4 -visitor -no-listener -Dlanguage=Python3 $(GRAMMAR)

python:
	cd $(SRC_DIR) && python3 $(PY_SCRIPT)
