*** Settings ***
Library     SeleniumLibrary
Library     SeleniumLibrary

*** Variables ***
${URL}  https://www.hubspot.com/
${BROWSER_NAME}  chrome

*** Keywords ***
Open the Browser with URL
    Open Browser    ${URL}  ${BROWSER_NAME}
    Maximize Browser Window
    Set Selenium Implicit Wait    5
    Delete All Cookies

Close Browser Session
    Close Browser

