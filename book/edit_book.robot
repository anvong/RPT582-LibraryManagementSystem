*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary

Resource    book_resource.robot
*** Variables ***


*** Test Cases ***
Verify Edit A Book Function
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Select A Book    xpath://tbody/tr[1]/td[5]/a[1]
    Edit Book Info   PYTHON101E    PYTHON Book 1 Edited   RPT582 Testing 1 Edited   Not-Issued
    Sleep    2s
    Capture Page Screenshot
    Close Browser
    

Verify Edit A Second Book Function
    Open Web 
    Maximize Browser Window
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Select A Book    xpath://tbody/tr[2]/td[5]/a[1]
    Edit Book Info   PYTHON102E    PYTHON Book 2 Edited   RPT582 Testing 2 Edited   Not-Issued
    Sleep    2s
    Capture Page Screenshot
    Close Browser