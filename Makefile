VENV=.

default:
	$(VENV)/bin/run-planet.py template/config.ini

venv:
	virtualenv $(VENV)
	pip install -r requirements.txt
	-mv $(VENV)/bin/planet.py  $(VENV)/bin/run-planet.py
	
