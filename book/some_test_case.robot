*** Settings ***
Documentation       Add Book Functionality
Library             SeleniumLibrary


*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000/stafflogin/    #Scalar

${UserName}         anvong    #Scalar
${Password}         123456    #Scalar


*** Test Cases ***
Verify Successful Login to Library Management System
    Open Browser    ${BrowserUrl}    Chrome
    Wait Until Element Is Visible    id:loginuname    timeout=5
    Input Text    id:loginuname    ${UserName}
    Input Password    id:loginpassword    ${Password}
    Click Element    css:input[type='submit']
    # Element Should Be Visible    css:[href="/dashboard/"]

Verify Input Of The Book Info
    # Open Browser    ${BrowserUrl}    Chrome
    # Wait Until Element Is Visible    css:input[type='submit']    timeout=5
    # Maximize Browser Window
    Go To         http://127.0.0.1:8000/addbook/
    Input Text    id:bookid        12345
    Input Text    id:bookname        New book name
    Input Text    id:subject         New book subject
    Input Text    id:category        Not-Issued
    Click Element    //button[contains(text(),'Submit')]
    # Click Button    css:input[type='submit']
    # Go To    http://127.0.0.1:8000/staffsignup/
    # Page Should Contain     Please fill in this field.
    # ${message = driver.findElement(By.name("bookname")).getAttribute("validationMessage")
    # Element Should Be Visible    css:[href="/stafflogin/"]
    # Close Browser

Verify Add Student
    # Open Browser    ${BrowserUrl}    Chrome
    # Wait Until Element Is Visible    css:input[type='submit']    timeout=5
    # Maximize Browser Window
    Go To         http://127.0.0.1:8000/addstudent/
    Input Text    id:sname        MD Al Admin
    Input Text    id:studentid        s123456
    Click Element    //button[contains(text(),'Submit')]

Verify Issue A Book
    # Open Browser    ${BrowserUrl}    Chrome
    # Wait Until Element Is Visible    css:input[type='submit']    timeout=5
    # Maximize Browser Window
    Go To         http://127.0.0.1:8000/bookissue/
    Input Text    id:book1             12345
    Input Text    id:studentid        s123456
    Click Element    //button[contains(text(),'Submit')]