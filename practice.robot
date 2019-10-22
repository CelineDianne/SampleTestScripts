*** Settings ***
Library    Selenium2Library




*** Variable ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${delay}    1s






*** Keywords ***
Opening Browser and go to page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window




*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page