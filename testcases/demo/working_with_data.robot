*** Settings ***
Library    BuiltIn
Library    Collections

*** Variables ***
&{data_map}=    name=Robot framework    version=3.x    type=keyword driven
@{list_data}=    1    2    3    also    string    data

*** Test Cases ***

Creating list and printing each item
    @{list_data}=    Create List    1    2    3    also    string    data
    Log Many    @{list_data}

Interating over list
    @{list_data}=    Create List    1    2    3    also    string    data
    :FOR    ${data}    IN    @{list_data}
    \    Log    ${data}

Iterating over a range
    :FOR    ${i}    IN RANGE    1    5
    \    Log    ${i}


Enumerating over list
    @{list_data}=    Create List    1    2    3    also    string    data
    :FOR    ${index}    ${data}    IN ENUMERATE    @{list_data}
    \    Log Many    ${index}    ${data}

Creating dictionary and printing items in report
    &{data_map}=    Create Dictionary    name=Robot framework    version=3.x    type=keyword driven
    Set to dictionary    ${data_map}    foo    bar
    Log Dictionary    ${data_map}
    Log    Accessing single value name from map -> ${data_map.name}
    Log    Accessing single value name from map -> ${data_map['name']}
    Log    Accessing single value name from map ->
    Log    Accessing single value name from map -> &{data_map}[name]

Setting changing existing key value of dictionary
    Set To Dictionary    ${data_map}    name    awesome framework
    Log To Console    ${data_map}
    Log Dictionary    ${data_map}

Get Dictionary Keys Sorted
    ${keys} =    Get Dictionary Keys    ${data_map}

Get Dictionary Keys Unsorted
    ${keys} =    Get Dictionary Keys    ${data_map}    sort_keys=${False}

Printing start program
    [Documentation]    Printing
    ...    *
    ...    * *
    ...    * * *
    ...
    ${final}=    Set Variable    ${EMPTY}
    :FOR    ${index}    IN RANGE    0    6
    \    ${tmp}=    Evaluate    '* ' * ${index}
    \    ${final}=    Catenate    ${final}    ${tmp}    \n
    Log    ${final}

Sorting list
    Sort List    ${list_data}
    Log    ${list_data}
