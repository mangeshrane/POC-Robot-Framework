*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Library     OperatingSystem
Resource    ../keywords/web/web_imports.robot
Variables   config/application_config.yaml

*** Keywords ***
set chrome driver
    [Documentation]    sets chromedriver in path
    set global variable  ${chromedriver}  ${EMPTY}
    ${chromedriver}=  Join Path  ${CURDIR}  drivers  chromedriver.exe
    set environment variable  webdriver.chrome.driver  ${chromedriver}
    [return]  ${chromedriver}