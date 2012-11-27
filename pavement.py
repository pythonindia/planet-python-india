from paver.easy import *
from paver.path import path


@task
def create_output_folder():
    if not (path(".")/".."/"output").exists():
        (path(".")/".."/"output").makedirs()


@task
@needs(["create_output_folder"])
def build_media_files():
    output_folder = path(".")/".."/"output"
    media_files_source = path(".")/"output"
    for f in media_files_source.listdir():
        print f
        if f.isdir():
            f.copytree(output_folder/f.name)
        else:
            f.copy(output_folder/f.name)

@task
def clean_compiled_templates():
    src_dir=path(".")
    for f in src_dir.walk(pattern="*.tmplc"):
        f.unlink()