.PHONY: all lint dev run

all: ;

run:
	qiime decontam hello --o-text example_greeting --verbose
	qiime decontam text-vis --i-greeting example_greeting.qza --o-visualization greeting

lint:
	flake8

dev: all
	pip install -e .