*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot

*** Variables ***
${book_id}    1

*** Test Cases ***
Verify Delete A Book Function
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Capture Page Screenshot    delete-1-before.png
    # delete first row  
    Click Element    xpath://tbody/tr[1]/td[6]/a[1]
    Capture Page Screenshot    after-1-before.png
    Close Browser

Verify Delete Another Book Function At Line Two
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Capture Page Screenshot    delete-row-2-before.png
    # delete second row  
    Click Element    xpath://tbody/tr[2]/td[6]/a[1]
    Capture Page Screenshot    delete-row-2-after.png
    Close Browser

Verify Delete Another Book Function At Line One
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Capture Page Screenshot    delete-row-1-at-sencond-time-before.png
    # delete first row  
    Click Element    xpath://tbody/tr[1]/td[6]/a[1]
    Capture Page Screenshot    delete-row-1-at-sencond-time-after.png

    Close Browser

