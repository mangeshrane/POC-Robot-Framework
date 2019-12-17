*** Settings ***
Resource    ../../resources/imports.robot
Test Setup    Given open "${url}" in Browser "${browser}"
# Test Teardown    Close Browser


*** Test Cases ***
TC-01: This is test case 1
    Log    inside test case one

TC-02: This is test case 2
    Log    Executing test case two

