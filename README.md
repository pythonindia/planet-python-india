This is the code that runs http://planet.python.org.in.

### INSTALL
to install do the following:

1. Clone the repo

    $ git clone git://github.com/ipss/planet-python-india.git
    $ cd planet-python-india

2. Setup virtualenv

    $ make venv

This creates a virtualenv in the root of the project directory and installs all the dependencies. It also takes care of renaming `planet.py` as `run-planet.py` to avoid import conflicts.

3. Build the planet

    $ make

The output is available at output/index.html

### Editing Templates
A detailed template editing guide is available in the http://planetpython.org documentation.

### Some Useful Paver Commands
There are a few useful paver commands packaged in this repo.

#### clean_compiled_templates
Theclean_compiled_templates command is used to clean compiled templates from the source directory. Use this when you encounter a Permission Denied error on repeated runninng of the cron. 
