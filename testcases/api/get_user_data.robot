*** Settings ***
Documentation    Suite description
Resource    ../../resources/imports.robot
Resource    ../../keywords/API/api_imports.robot
Resource    ../../keywords/API/get_user_data.robot

*** Variables ***
${RESPONSE}   ${NONE}
${user_id}=  2

*** Test Cases ***

Verify getting single user data
    get single user
    verify response code should be 200 ok
    log  ${RESPONSE.text}




*** Keywords ***
get single user
    ${RESPONSE}=  get single user data  ${user_id}
    set suite variable  ${RESPONSE}

Verify Response code should be 200 ok
    should be equal as strings  ${RESPONSE.status_code}  200
