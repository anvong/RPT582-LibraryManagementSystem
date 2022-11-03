*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary

Resource    book_resource.robot
*** Variables ***
${book_id}    1

*** Test Cases ***
Verify Search Book Function
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Search Book ID    1
    There are some book found

    # search id 2
    Search Book ID   2
    There are some book found
    
    Close Browser
    