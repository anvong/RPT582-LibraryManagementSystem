*** Settings ***
Documentation       Signup Functionality

Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000/staffsignup/    #Scalar
${UserName}         test1292    #Scalar
${FirstName}        CDU Name    #Scalar
${LastName}         University    #Scalar
${Email}            test125@gmail.com    #Scalar
${ContactNumber}    8899007766    #Scalar
${Password}         cdu@@@###    #Scalar


*** Test Cases ***
Verify Successful Signup to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Wait Until Element Is Visible    id:uname    timeout=5
    Input Text    id:uname    ${UserName}1
    Input Text    id:fname    ${FirstName}
    Input Text    id:lname    ${LastName}
    Input Text    id:email    ${Email}
    Input Text    id:phone    ${ContactNumber}
    Input Password    id:password    ${Password}
    Click Button    css:input[type='submit']
    # Go To    http://127.0.0.1:8000/staffsignup/
    Sleep    5
    # Page Should Contain    STAFF LOGIN
    Element Should Be Visible    css:[href="/stafflogin/"]
    Close Browser
