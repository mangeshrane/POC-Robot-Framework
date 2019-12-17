*** Settings ***
Library    SeleniumLibrary
Resource    ../../../resources/imports.robot
Variables    ../locators/loginpage_locators.yaml
Variables    ../locators/sidebar_locators.yaml

*** Keywords ***
Login to application
    [Documentation]    Login to wordpress Application
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Submit Credentials

*** Keywords ***
Wait till login page is ready
    [Documentation]    Waits until login page is empty
    Wait Until Page Contains Element    ${username_field}    timeout=None    error=None

Open Browser To Login Page
    [Documentation]    opens browser and loads login page url
    Open Browser    ${url}    ${BROWSER}
    Title Should Be    Login Page

Input Username
    [Documentation]    Inputs username on login page
    [Arguments]    ${username}
    Input Text    ${username_field}    ${username}

Input Password
    [Documentation]    Inputs password in password field in loginpage
    [Arguments]    ${password}
    Input Text    ${password_field}    ${password}

Submit Credentials
    [Documentation]    clicks on submit btn on login page
    Click Button    ${login_button}

Check Remember me checkbox
    [Documentation]    Checks Remember me checkbox
    Click Element    ${remember_me_checkbox}    modifier=False

Welcome Page Should Be Open
    [Documentation]    checks Welcome page is open after login
    Title Should Be    ${dashboard_title}

Welcome Page Should not Open
    [Documentation]    checks Welcome page is open after login
    Page Should Not Contain Element    ${sb_dashboard_link}
