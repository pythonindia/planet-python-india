This is the code that runs http://planet.python.org.in.

### INSTALL
to install do the following:

1. Create a virtualenv for planet in the server.
1. Create a src folder inside the virtualenv folder and checkout the [planet repository](https://github.com/ipss/planet-python-india)
1. Next pip instal all the requirements specified. (pip install -r requirements.txt)
1. Create the output folder and build the media files into it.(paver build_media_files.
1. Rename your planet.py file in your scripts / bin directory to planet-script.py to avoid import conflicts.
1. Finally Cron (python <path_to>/planet-script.py <path_to>/template/config.ini)
1.TADA you are done.

### Editing Templates
A detailed template editing guide is available in the http://planetpython.org documentation.

### Some Useful Paver Commands
There are a few useful paver commands packaged in this repo.

#### clean_compiled_templates
Theclean_compiled_templates command is used to clean compiled templates from the source directory. Use this when you encounter a Permission Denied error on repeated runninng of the cron. 
