*** Settings ***
Library     SeleniumLibrary
Resource       ../Resources/GenericResources.robot
Variables   ../PageObjects/clickChatbotLocators.py

*** Variables ***

*** Keywords ***
Open browser and click ChatBot
    Open the Browser with URL
    click element    ${alert_closeCookies}
    set selenium speed  2 seconds
    select frame    ${frame_chatbot}
    set selenium speed  2 seconds
    click element   ${btn_openChat}


