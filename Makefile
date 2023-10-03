setup:
	virtualenv ~/.venv
	source ~/.venv/bin/activate


install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt


test:
	python -m pytest -vv tests/*.py


format:
	black *.py


lint:
	pylint --disable=R,C app.py


all: install lint test format
