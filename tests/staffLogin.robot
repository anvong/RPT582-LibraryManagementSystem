*** Settings ***
Documentation       Login Functionality

Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000/stafflogin/    #Scalar
${UserName}         CDU    #Scalar
${Password}         cdu@@@###    #Scalar
${WrongUserName}    Test    #Scalar
${WrongPassword}    test@@@###    #Scalar


*** Test Cases ***
Verify Successful Login to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:loginuname    timeout=5
    Input Text    id:loginuname    ${UserName}
    Input Password    id:loginpassword    ${Password}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/dashboard/"]
    Close Browser

Invalid Credential Login Test
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:loginuname    timeout=5
    Input Text    id:loginuname    ${WrongUserName}
    Input Password    id:loginpassword    ${WrongPassword}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser

Validation Test
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:loginuname    timeout=5
    Should Not Be Empty    id:loginuname
    Should Not Be Empty    id:loginpassword
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser
