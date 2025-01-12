install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format:
	black .

lint:
	pylint --disable=R,C hello.py

all: install format lint test
