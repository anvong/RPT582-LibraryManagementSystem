*** Settings ***
Documentation       Signup Functionality

Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000/staffsignup/    #Scalar
${UserName}         CBUUU    #Scalar
${FirstName}        CDU Name    #Scalar
${LastName}         University    #Scalar
${Email}            cdu123@gmail.com    #Scalar
${ContactNumber}    8899007766    #Scalar
${Password}         cdu@@@###    #Scalar


*** Test Cases ***
Verify Successful Signup to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Wait Until Element Is Visible    id:uname    timeout=5
    Input Text    id:uname    ${UserName}
    Input Text    id:fname    ${FirstName}
    Input Text    id:lname    ${LastName}
    Input Text    id:email    ${Email}
    Input Text    id:phone    ${ContactNumber}
    Input Password    id:password    ${Password}
    Click Element    id:submit
    Element Should Be Visible    css:[href="/dashboard/"]
    Close Browser
