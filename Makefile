.PHONY: all install-dev test coverage cov test-all tox docs release clean-pyc upload-docs ebook


install-dev:
	pip install -q -e .[dev]

docs: clean-pyc
	cp -rf ./uml ./docs
	sphinx-apidoc -f -o ./docs ./myapp
	# sphinx-build -b singlehtml ./docs ./docs/_build
	sphinx-build ./docs ./docs/_build
	
clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

