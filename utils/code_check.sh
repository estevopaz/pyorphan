#!/bin/bash

#
# Simple script to check python code
# Usage:
#    cd PROJECT_PATH
#    ./code_check [file.py]  # Avoid file to check all project
# Geany command:
#    PYTHONPATH=${PYTHONPATH}:"%p" bash code_check.sh "%d/%f"

if [ $1 ]; then

    echo "Checking $1 ..."

    echo -e "#\n# pycodestyle\n#"
    pycodestyle --max-line-length=100 $1

    echo -e "\n#\n# pyorphan\n#"
    pyorphan . $1

    echo -e "\n#\n# pylint\n#"
    pylint3 --output-format=parseable $1

else

    echo -e "#\n# pycodestyle\n#"
    pycodestyle . --max-line-length=100

    echo -e "\n#\n# pyorphan\n#"
    pyorphan .

    echo -e "\n#\n# pylint\n#"
    pylint3 --output-format=parseable anadb hoot

fi
