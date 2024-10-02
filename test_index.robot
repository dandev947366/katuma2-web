*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    file:///Users/dandev947366/Desktop/katuma2-web/index.html    Chrome
Suite Teardown    Close Browser

*** Variables ***
${PAGE_TITLE}    Katumajärvi Info
${HEADER_TEXT}    JÄRVI-MERI WIKI
${BANNER_TEXT}    Here you can find information about Katumajärvi
${SIDEBAR_XPATH}    xpath=/html/body/main/div[1]

*** Test Cases ***
Verify Page Title
    [Documentation]    Ensure that the page title is correct.
    Title Should Be    ${PAGE_TITLE}
    Sleep    2s

Verify Header Is Present
    [Documentation]    Check if the header and login button are displayed.
    Sleep    2s
    Page Should Contain Element    xpath=/html/body/header/div[1]/h1
    Page Should Contain Element    xpath=/html/body/header/div[1]/div

Verify Header Text
    [Documentation]    Check if the header text is correct.
    Element Text Should Be    xpath=/html/body/header/div[1]/h1    ${HEADER_TEXT}

Verify Banner Text
    [Documentation]    Check if the banner text is correct.
    Element Text Should Be    xpath=/html/body/header/div[2]/h2    ${BANNER_TEXT}

Verify Sidebar Is Present
    [Documentation]    Check if the sidebar is present on the page.
    Page Should Contain Element    ${SIDEBAR_XPATH}
