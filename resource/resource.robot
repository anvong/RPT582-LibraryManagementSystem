*** Settings ***
Library             SeleniumLibrary
*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000    #Scalar
${UserName}         CDU    #Scalar
${Password}         cdu@@@###    #Scalar
${Browser}          chrome
*** Keywords ***
Open Web
    Open Browser    ${BrowserUrl}    ${Browser}
    Maximize Browser Window

Login Into System
    [Arguments]    ${UserName}    ${Password}
    Go To     http://127.0.0.1:8000/stafflogin/
    Input Text        id:loginuname    ${UserName}
    Input Password    id:loginpassword    ${Password}
    Click Element     css:input[type='submit']
    
Page Login Success
    Page Should Contain    Message : Successfully logged in

Search Book ID
    [Arguments]    ${book_id}
    Input Text    //input[@id='query2']    ${book_id}
    Click Button    //button[@type='submit']
There are some book found
    @{books}=    Get WebElements    //table[@id='dataTable']/tbody/tr

Add New Book
    [Arguments]    ${book_id}    ${book_name}    ${subject}    ${category}
    # Go to add book
    Go To     http://127.0.0.1:8000/addbook/
    Input Text    id:bookid        ${book_id}
    Input Text    id:bookname      ${book_name}
    Input Text    id:subject       ${subject}
    Input Text    id:category      ${category}
    Click Element    //button[contains(text(),'Submit')]

Select A Book
    [Arguments]    ${edit_button}
    Click Element    ${edit_button}

Edit Book Info
    [Arguments]    ${book_id}    ${book_name}    ${subject}    ${category}
    # Go to add book
    # Go To     http://127.0.0.1:8000/dashboard/
    Input Text    id:bookid        ${book_id}
    Input Text    id:bookname      ${book_name}
    Input Text    id:subject       ${subject}
    Input Text    id:category      ${category}
    Click Element    //button[contains(text(),'Submit')]

# Add new student
Add New Student
    [Arguments]    ${studentname}    ${studentid}
    # Go to add new student
    Go To         http://127.0.0.1:8000/addstudent/
    Input Text    id:sname            ${studentname}
    Input Text    id:studentid        ${studentid}
    Click Element    //button[contains(text(),'Submit')]