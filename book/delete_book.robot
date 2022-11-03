*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary

Resource    book_resource.robot
*** Variables ***
${book_id}    1

*** Test Cases ***
Verify Delete A Book Function
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    # delete first row  
    Click Element    xpath://tbody/tr[1]/td[6]/a[1]

    Close Browser
    