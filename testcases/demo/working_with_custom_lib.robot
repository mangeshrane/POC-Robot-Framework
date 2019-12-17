*** Settings ***

Library    lib.py


*** Test Cases ***
Reading text file
    ${text}=    Read File    ${CURDIR}\\file.txt
    Log    ${text}

