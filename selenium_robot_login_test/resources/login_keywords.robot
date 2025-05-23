*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://www.saucedemo.com/

*** Keywords ***
Open Login Page
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --no-sandbox
    Call Method    ${options}    add_argument    --disable-dev-shm-usage
    Create Webdriver    Chrome    options=${options}
    Go To    ${LOGIN_URL}
