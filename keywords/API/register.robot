*** Settings ***
Library  RequestsLibrary
Resource    ../../resources/imports.robot

*** Variables ***
${register_endpoint}  /api/register

*** Keywords ***
Register user
    [Arguments]  ${request}
    ${request}=  convert to string  ${request}
    Create Session    register    ${server_url}  disable_warnings=1
    &{headers}=  CREATE DICTIONARY   Content-type=application/json
    ${response}=  Post request  register  ${register_endpoint}  data=${request}  headers=${headers}
    [Return]  ${response}