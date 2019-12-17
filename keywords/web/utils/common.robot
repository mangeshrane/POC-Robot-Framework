*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Resource    ../../../resources/imports.robot

*** Keywords ***
open "${url}" in Browser "${browser}"
    [Documentation]    Open GitHub URL with specified browser
    Run Keyword If    '${browser.lower()}' == 'chrome'    Open Chrome Browser    ${url}    ELSE    Open Other Browsers    ${url}    ${browser}
    Title Should Be    ${login_title}    message=None

Open Other Browsers
    [Documentation]    Opens other browsers
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    browser=${browser}
    Maximize Browser Window

Open Chrome Browser
    [Arguments]    ${url}=False
    [Documentation]    Open Chrome Browser with headless mode
    ${chrome_options}=    Set Chrome Options
    ${chromedriver}=    set chrome driver
    Create Webdriver    Chrome    executable_path=${chromedriver}    chrome_options=${chrome_options}
    Maximize Browser Window
    Go To    ${url}
    # Run Keyword If    ${url}    Go To    ${url}

Set Chrome Options
    [Documentation]    Set Chrome Options for headless mode
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    :FOR    ${option}    IN    @{chrome_options}
    \    Call Method    ${options}    add_argument    ${option}
    [Return]    ${options}


