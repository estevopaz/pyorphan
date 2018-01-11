# PyOrphan
PyOrphan suggest unused code in your python project
as target to be removed.

Be careful, take in consideration that __python__ is a dynamic language,
and this tool can show false positives.

We suggest use __pyorphan__ as __pylint__ complement.

### Installation

- Clone project:

      git clone git@github.com:estevopaz/pyorphan.git

- System installation (as __root__):

      cd pyorphan
      ./setup.py install
      
  __Note__: If you want modify code use:

      ./setup.py develop
  
### Usage

    usage: pyorphan [-h] project_path [file_path]

    Orphan python code checker.

    positional arguments:
      project_path  Project path
      file_path     Tarjet file if required

    optional arguments:
      -h, --help    show this help message and exit


## Notes

This is a little but useful project to imporove code quality.

Any kind of contribution to the project will be welcome.


## TODO 

- Prevent false positives for Flask routes:
   
      @APP.route('/login', methods=('GET', 'POST'))

- Support _--except_ parameter.
- Look for unused global variables (not supported by pylint).
- Allow _--context_ like _grep_.
- Support for _GNU/Linux Debian_ package.
