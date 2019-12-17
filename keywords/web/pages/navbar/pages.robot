*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
Library    OperatingSystem
Variables    ../../locators/sidebar_locators.yaml


*** Keywords ***
click pages in navbar
    [Documentation]    Method to click pages link on Navigation bar
    Click Element    ${sb_pages}

hover pages in navbar
    [Documentation]    Hovers Pages Link in navigation bar
    Mouse Over    ${sb_pages}

click on all pages in navbar
    [Documentation]    clicks on all Pages link in Pages section on Navbar
    hover pages in navbar
    Click Element    ${sb_pages_allPages}

click on Add new page link
    [Documentation]    clicks on new page link in pages section on navbar
    hover pages in navbar
    Click Element    ${sb_pages_newPage}