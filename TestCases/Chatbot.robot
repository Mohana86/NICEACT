*** Settings ***
Library     SeleniumLibrary

Library     DataDriver  ../TestData/Chatbot_TestData.xlsx
Resource       ../Resources/GenericResources.robot
Resource       ../Resources/ClickChatbot.robot

Suite Setup      Open browser and click ChatBot
Suite Teardown   Close Browser Session
Test Template   Input Messages

*** Test Cases ***
Chatbot scenarios

*** Keywords ***
Input Messages
    [Arguments]     ${inputMsg}     ${responseMsg}
    Click Element   xpath://div[contains(text(),'${inputMsg}')]
    click element    ${btn_sendMsg}
    sleep  10
    ${actOutput} =  get text    xpath:(//div[contains(@aria-label,'HubBot says: ${responseMsg}')])[last()]
    log to console      ${actOutput}
    log to console      ${responseMsg}



