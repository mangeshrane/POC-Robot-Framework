*** Settings ***
Library  RequestsLibrary
Resource    ../../resources/imports.robot

*** Variables ***
${user_endpoint}  /api/users

*** Keywords ***
get single user data
    Create Session    users    ${server_url}  disable_warnings=1
    [Arguments]  ${user_id}
    ${response}=  get request  users  ${user_endpoint}/${user_id}
    [Return]  ${response}
