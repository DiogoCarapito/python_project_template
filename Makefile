install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	pytest -vv --cov=app --cov=lib test_*.py

format:
	black . *.py

lint:
	pylint --disable=R,C *.py lib/*.py

container-lint:
	docker run -rm -i hadolint/hadolint < Dockerfile

refactor:
	format lint

deploy:
#echo "deploy not implemented"

all: install lint test format deploy
