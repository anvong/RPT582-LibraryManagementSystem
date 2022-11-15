*** Settings ***
Documentation       Signup Functionality

Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}           http://127.0.0.1:8000/staffsignup/    #Scalar
${UserName1}            CDU    #Scalar
${FirstName1}           CDU    #Scalar
${LastName1}            University    #Scalar
${Email1}               cdu@gmail.com    #Scalar
${ContactNumber1}       0123456789    #Scalar
${Password1}            cdu@@@###    #Scalar

${UserName2}            CDUTest    #Scalar
${FirstName2}           CDUTest    #Scalar
${LastName2}            University    #Scalar
${Email2}               cdutest@gmail.com    #Scalar
${ContactNumber2}       9876543210    #Scalar
${Password2}            cdutest@@@###    #Scalar


*** Test Cases ***
Verify Successful Signup to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:uname    timeout=5
    Input Text    id:uname    ${UserName1}
    Input Text    id:fname    ${FirstName1}
    Input Text    id:lname    ${LastName1}
    Input Text    id:email    ${Email1}
    Input Text    id:phone    ${ContactNumber1}
    Input Password    id:password    ${Password1}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser

Verify Successful Signup And Login to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:uname    timeout=5
    Input Text    id:uname    ${UserName2}
    Input Text    id:fname    ${FirstName2}
    Input Text    id:lname    ${LastName2}
    Input Text    id:email    ${Email2}
    Input Text    id:phone    ${ContactNumber2}
    Input Password    id:password    ${Password2}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Wait Until Element Is Visible    id:loginuname
    Input Text    id:loginuname    ${UserName2}
    Input Password    id:loginpassword    ${Password2}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/dashboard/"]
    Close Browser

Verify User Already Registered with Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:uname    timeout=5
    Input Text    id:uname    ${UserName1}
    Input Text    id:fname    ${FirstName1}
    Input Text    id:lname    ${LastName1}
    Input Text    id:email    ${Email1}
    Input Text    id:phone    ${ContactNumber1}
    Input Password    id:password    ${Password1}
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser

Validation Test
    Open Browser    ${BrowserUrl}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    id:uname    timeout=5
    Should Not Be Empty    id:uname
    Should Not Be Empty    id:fname
    Should Not Be Empty    id:lname
    Should Not Be Empty    id:email
    Should Not Be Empty    id:phone
    Should Not Be Empty    id:password
    Click Button    css:input[type='submit']
    Element Should Be Visible    css:[href="/"]
    Close Browser
