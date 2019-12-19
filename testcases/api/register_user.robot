*** Settings ***
Documentation    Suite description
Resource    ../../resources/imports.robot
Resource    ../../keywords/API/api_imports.robot
Resource    ../../keywords/API/register.robot

*** Variables ***
${RESPONSE}   ${NONE}
${email}  eve.holt@reqres.in
${password}  pistol

*** Test Cases ***
Verify User registration
    [Tags]    Registration  api
    When I Register user with email ${email} and ${password}
    Then Response code should be 200 ok
    And Response should contains id and token

*** Keywords ***
I Register user with email ${email} and ${password}
    ${tmp}=  create dictionary  email=${email}  password=${password}
    ${request}=  Create json using dictionary  ${tmp}
    ${RESPONSE}=  register user  ${request}
    set suite variable  ${RESPONSE}

Response code should be 200 ok
    should be equal as strings  ${RESPONSE.status_code}  200

Response should contains id and token
    dictionary should contain key  ${RESPONSE.json()}  id
    dictionary should contain key  ${RESPONSE.json()}  token


