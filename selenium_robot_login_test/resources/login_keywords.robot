*** Variables ***
${LOGIN_URL}       https://www.saucedemo.com/
${BROWSER}         Chrome
${OPTIONS}         add_argument(--headless)    add_argument(--no-sandbox)    add_argument(--disable-dev-shm-usage)

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_URL}    ${BROWSER}    options=${OPTIONS}
    Maximize Browser Window
    Wait Until Page Contains Element    id:user-name    timeout=10s


Input Username
    [Arguments]    ${username}
    Input Text    id:user-name    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Click Login Button
    Click Button    id:login-button

Close Browser
    Close All Browsers
