VENV=.

default: update

update:
	$(VENV)/bin/run-planet.py template/config.ini

venv:
	virtualenv $(VENV)
	$(VENV)/bin/pip install -r requirements.txt
	-mv $(VENV)/bin/planet.py  $(VENV)/bin/run-planet.py
	
# Planet Python India is available at http://python.org.in/planet/.
# To update it, we just symlink the output dir in the right place.
deploy: 
	ln -fs output ~/public_html/planet
