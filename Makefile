install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C *.py

test:
	python -m pytest -vv --cov=predefinelib test_*.py

format:
	black *.py *.ipynb

all:	install		lint	test	format