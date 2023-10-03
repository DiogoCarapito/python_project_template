setup:
	python3 -m venv ~/.myrepo

install:
  pip install --upgrade pip &&\
	  pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main tests/*.py

format:
  black *.py

lint:
	pylint --disable=R,C main.py

all: install lint test format
