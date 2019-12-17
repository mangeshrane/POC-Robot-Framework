*** Settings ***
Documentation    Tests to verify wordpress login with valid and invalid credentials
Resource    ../../resources/imports.robot
# Suite Setup    Open Chrome browser
# Suite Teardown    Close Browser
# Test Setup    Open login Page
Test Setup    open "${url}" in Browser "${browser}"
Test Teardown    Close Browser


*** Test Cases ***
Test Login into the application with valid credentials
    [Tags]    login    smoke    sprint-1
    Login to application    ${username}    ${password}
    Welcome Page Should Be Open

Test Login into the application with invalid credentials
    [Tags]    login    regression    sprint-1
    Login to application    ${username}    absclsk
    Welcome Page Should not Open

Test Login into the application with blank creadentials
    [Tags]    login    regression    sprint-1
    Login to application    ${EMPTY}    ${EMPTY}
    Welcome Page Should not Open


*** Keywords ***

Open login Page
    Go To    ${url}