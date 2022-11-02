*** Settings ***
Documentation       Login Functionality
Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000/stafflogin/    #Scalar
${UserName}         S360550    #Scalar
${Password}         sandeep@@@###    #Scalar


*** Test Cases ***
Verify Successful Login to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Wait Until Element Is Visible    id:loginuname    timeout=5
    Input Text    id:loginuname    ${UserName}
    Input Password    id:loginpassword    ${Password}
    Click Element     css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser