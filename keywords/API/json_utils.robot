*** Settings ***
Library  json
Library  OperatingSystem

*** Keywords ***

Create json using dictionary
    [Arguments]  ${input}
    ${jsn}    json.Dumps    ${input}
    [Return]  ${jsn}

load json from file
    ${json}=   Get file  example.json
    ${object}=   Evaluate  json.loads('''${json}''') | json
