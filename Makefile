.PHONY: all  docs clean-pyc


docs: clean-pyc
	sphinx-apidoc -f -o ./docs/source ./myapp
	sphinx-build -b singlehtml ./docs/source ./docs/build/html
	

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +

