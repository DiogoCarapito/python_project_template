install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest -vv --cov=main --cov=utils tests/test_*.py

format:
	black . *.py

lint:
	pylint --disable=R,C *.py utils/*.py tests/*.py

build:
	docker build -t python_project_template .

run :
	docker run --rm -it python_project_template

all: install lint test format build run