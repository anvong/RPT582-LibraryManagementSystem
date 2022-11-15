*** Settings ***
Documentation       Search Book Functionality
Library             SeleniumLibrary
Resource            ${CURDIR}${/}..\\resource/resource.robot
*** Variables ***


*** Test Cases ***
Verify Search Book Function
    Open Web 
    Login Into System    ${UserName}    ${Password}
    Page Login Success
    Maximize Browser Window
    # insert book 1
    Add New Book   PYTHON101    PYTHON Book 1   RPT582 Testing 1   Not-Issued
    Add New Book   PYTHON102    PYTHON Book 2   RPT582 Testing 2   Not-Issued
    Add New Book   PYTHON103    PYTHON Book 3   RPT582 Testing 3   Not-Issued
    Add New Book   PYTHON104    PYTHON Book 4   RPT582 Testing 4   Not-Issued
    Add New Book   PYTHON105    PYThON Book 5   RPT582 Testing 5   Not-Issued   
    Capture Page Screenshot
    Close Browser
    