*** Settings ***
Library             SeleniumLibrary
*** Variables ***
${BrowserUrl}       http://127.0.0.1:8000    #Scalar
${UserName}         anvong    #Scalar
${Password}         123456    #Scalar
${Browser}          chrome
*** Keywords ***
Open Web
    Open Browser    ${BrowserUrl}    ${Browser}

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