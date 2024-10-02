*** Settings ***
Library    SeleniumLibrary
Suite Setup    Open Browser    file:///Users/dandev947366/Desktop/katuma2-web/index.html    Chrome
Suite Teardown    Close Browser

*** Variables ***
${PAGE_TITLE}    Katumajärvi Info
${HEADER_TEXT}    JÄRVI-MERI WIKI
${BANNER_TEXT}    Here you can find information about Katumajärvi
${SIDEBAR_XPATH}    xpath=/html/body/main/div[1]
${BLUE_GREEN_ALGAE_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[1]/a
${TEMPERATURE_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[2]/a
${WATER_LEVEL_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[3]/a
${WATER_CLARITY_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[4]/a
${TOTAL_NITROGEN_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[5]/a
${TOTAL_PHOSPHORUS_LINK_XPATH}    xpath=/html/body/main/div[1]/ul/li[6]/a
${INFO_CARD_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[1]
${BLUE_GREEN_ALGAE_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[1]/h4
${BLUE_GREEN_ALGAE_P_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[1]/p
${BLUE_GREEN_ALGAE_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[1]/button
${TEMPERATURE_INFO_CARD_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[2]
${TEMPERATURE_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[2]/h4
${TEMPERATURE_P_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[2]/p
${TEMPERATURE_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[2]/button
${WATER_LEVEL_INFO_CARD_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[3]
${WATER_LEVEL_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[3]/h4
${WATER_LEVEL_P_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[3]/p
${WATER_LEVEL_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[3]/button
${WATER_CLARITY_INFO_CARD_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[4]
${WATER_CLARITY_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[4]/h4
${WATER_CLARITY_P_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[4]/p
${WATER_CLARITY_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[1]/div[4]/button
${TOTAL_NITROGEN_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[1]/h4
${TOTAL_NITROGEN_P_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[1]/p
${TOTAL_NITROGEN_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[1]/button
${TOTAL_PHOSPHORUS_H4_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[2]/h4
${TOTAL_PHOSPHORUS_P_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[2]/p
${TOTAL_PHOSPHORUS_BUTTON_XPATH}    xpath=/html/body/main/div[2]/section/div[2]/div/div[2]/button

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

Verify Blue Green Algae Link Is Present
    [Documentation]    Check if the "Blue-green algae" link is present in the sidebar.
    Page Should Contain Element    ${BLUE_GREEN_ALGAE_LINK_XPATH}

Verify Temperature Link Is Present
    [Documentation]    Check if the "Temperature" link is present in the sidebar.
    Page Should Contain Element    ${TEMPERATURE_LINK_XPATH}

Verify Water Level Link Is Present
    [Documentation]    Check if the "Water level" link is present in the sidebar.
    Page Should Contain Element    ${WATER_LEVEL_LINK_XPATH}

Verify Water Clarity Link Is Present
    [Documentation]    Check if the "Water clarity" link is present in the sidebar.
    Page Should Contain Element    ${WATER_CLARITY_LINK_XPATH}

Verify Total Nitrogen Link Is Present
    [Documentation]    Check if the "Total nitrogen" link is present in the sidebar.
    Page Should Contain Element    ${TOTAL_NITROGEN_LINK_XPATH}

Verify Total Phosphorus Link Is Present
    [Documentation]    Check if the "Total phosphorus" link is present in the sidebar.
    Page Should Contain Element    ${TOTAL_PHOSPHORUS_LINK_XPATH}

Verify Info Card Is Present
    [Documentation]    Check if the info card is present on the page.
    Page Should Contain Element    ${INFO_CARD_XPATH}

Verify Blue Green Algae Info Card
    [Documentation]    Check if the Blue-green algae info card has the correct elements.
    Page Should Contain Element    ${BLUE_GREEN_ALGAE_H4_XPATH}
    Element Text Should Be    ${BLUE_GREEN_ALGAE_H4_XPATH}    blue-green algae
    Page Should Contain Element    ${BLUE_GREEN_ALGAE_P_XPATH}
    Element Text Should Be    ${BLUE_GREEN_ALGAE_P_XPATH}    NO ALGAE DETECTED
    Page Should Contain Element    ${BLUE_GREEN_ALGAE_BUTTON_XPATH}
    Element Text Should Be    ${BLUE_GREEN_ALGAE_BUTTON_XPATH}    Details

Verify Temperature Info Card
    [Documentation]    Check if the Temperature info card has the correct elements.
    Page Should Contain Element    ${TEMPERATURE_INFO_CARD_XPATH}
    Page Should Contain Element    ${TEMPERATURE_H4_XPATH}
    Element Text Should Be    ${TEMPERATURE_H4_XPATH}    Water temperature
    Page Should Contain Element    ${TEMPERATURE_P_XPATH}    23.7°C
    Page Should Contain Element    ${TEMPERATURE_BUTTON_XPATH}
    Element Text Should Be    ${TEMPERATURE_BUTTON_XPATH}    Details

Verify Water Level Info Card
    [Documentation]    Check if the Water Level info card has the correct elements.
    Page Should Contain Element    ${WATER_LEVEL_INFO_CARD_XPATH}
    Page Should Contain Element    ${WATER_LEVEL_H4_XPATH}
    Element Text Should Be    ${WATER_LEVEL_H4_XPATH}    Water level
    Page Should Contain Element    ${WATER_LEVEL_P_XPATH}    812 m
    Page Should Contain Element    ${WATER_LEVEL_BUTTON_XPATH}
    Element Text Should Be    ${WATER_LEVEL_BUTTON_XPATH}    Details

Verify Water Clarity Info Card
    [Documentation]    Check if the Water Clarity info card has the correct elements.
    Page Should Contain Element    ${WATER_CLARITY_INFO_CARD_XPATH}
    Page Should Contain Element    ${WATER_CLARITY_H4_XPATH}
    Element Text Should Be    ${WATER_CLARITY_H4_XPATH}    Water clarity
    Page Should Contain Element    ${WATER_CLARITY_P_XPATH}
    Element Text Should Be    ${WATER_CLARITY_P_XPATH}    4 FTU (Depth 2.9m)
    Page Should Contain Element    ${WATER_CLARITY_BUTTON_XPATH}
    Element Text Should Be    ${WATER_CLARITY_BUTTON_XPATH}    Details

Verify Total nitrogen Info Card
    [Documentation]    Check if the Total nitrogen info card has the correct elements.
    Page Should Contain Element    ${TOTAL_NITROGEN_H4_XPATH}
    Element Text Should Be    ${TOTAL_NITROGEN_H4_XPATH}    Total nitrogen
    Page Should Contain Element    ${TOTAL_NITROGEN_P_XPATH}
    Element Text Should Be    ${TOTAL_NITROGEN_P_XPATH}    390 μg/l
    Page Should Contain Element    ${TOTAL_NITROGEN_BUTTON_XPATH}
    Element Text Should Be    ${TOTAL_NITROGEN_BUTTON_XPATH}    Details

Verify Total Phosphorus Info Card
    [Documentation]    Check if the Total Phosphorus info card has the correct elements.
    Page Should Contain Element    ${TOTAL_PHOSPHORUS_H4_XPATH}
    Element Text Should Be    ${TOTAL_PHOSPHORUS_H4_XPATH}    Total phosphorus
    Page Should Contain Element    ${TOTAL_PHOSPHORUS_P_XPATH}
    Element Text Should Be    ${TOTAL_PHOSPHORUS_P_XPATH}    10 μg/l
    Page Should Contain Element    ${TOTAL_PHOSPHORUS_BUTTON_XPATH}
    Element Text Should Be    ${TOTAL_PHOSPHORUS_BUTTON_XPATH}    Details
