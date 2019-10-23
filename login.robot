*** Settings ***
Library    Selenium2Library




*** Variable ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${delay}    1s
${Signup_Button}    //a[@class='login']
${Email_Field}    //input[@id='email']
${Password_Field}    //input[@id='passwd']
${Submit_Button}    //button[@id='SubmitLogin']



*** Keywords ***
Opening Browser and go to page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Sign up
    Click Element    ${Signup_Button}

Email
    [Arguments]    ${email}=deborah.duran@simplevia.com
    Input text    ${Email_Field}    ${email}

Password
    [Arguments]    ${pass}=Simplevia12345!
    Input text    ${Password_Field}    ${pass}

Submit
    Click Element    ${Submit_Button}





*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Sign up
    Email
    Password
    Submit