*** Settings ***
Documentation     Sample login test using Selenium + Robot Framework
Library           SeleniumLibrary
Resource          ../resources/login_keywords.robot

*** Test Cases ***
Successful Login With Valid Credentials
    [Tags]    smoke
    Open Login Page
    Input Username    standard_user
    Input Password    secret_sauce
    Click Login Button
    Page Should Contain Element    xpath://div[@class='inventory_list']
    Close Browser
