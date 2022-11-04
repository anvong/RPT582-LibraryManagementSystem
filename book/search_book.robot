*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary

Resource    book_resource.robot
*** Variables ***
${book_id}    1

*** Test Cases ***
Verify Search Book Function With ID 1
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID    PYTHON103
    There are some book found
    Capture Page Screenshot
    Sleep    2s
    Close Browser

Verify Search Book Function With ID 2
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID   PYTHON104
    There are some book found
    Capture Page Screenshot
    Sleep    2s
    Close Browser
    