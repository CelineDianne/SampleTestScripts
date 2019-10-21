*** Settings ***
Documentation    Login and Book Test Script/Author: Celine Dianne/Date: 10.14.2019
Library    Selenium2Library



*** Variable ***
${url}    http://turftestenvforsimplevia.azurewebsites.net
${browser}    chrome
${login_button}    //*[@id="navbarSupportedContent"]/ul/li[4]
${delay}    1s
${delay1}    5s
${delay2}    10s
${username_field}    //*[@id="float-input-username"]
${password_field}    //*[@id="float-input-password"]
${login_submit_button}    //button[@class='align-self-center']
${my_profile_button}    //*[@id="navbarSupportedContent"]/ul/li[1]/a
${my_reservation}    //span[contains(text(),'MY RESERVATIONS')]
${payment_reference_button}    //tr[1]//td[6]//button[1]//span[1]
${payment_reference_input}    //html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/input[1]
${amount_input}    //input[@id='PAmount']
${submit_button}    //button[@class='turf-btn-p ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only']
${yes1_button}    //span[contains(text(),'Yes')]
${logout_dropdown}    //span[@class='ui-submenu-icon pi pi-fw pi-caret-down ng-star-inserted']
${logout_button}    //span[contains(text(),'LOGOUT')]
${change_payment_method}    //span[@class='ui-button-icon-left ui-clickable fa fa-pencil-alt']
${over_the_counter}    //div[@class='row payment-body bg-white text-dark']//div[1]//p-radiobutton[1]//div[1]//div[2]//span[1]
${check_radiobutton}    //div[@class='ui-dialog-content ui-widget-content']//div[2]//p-radiobutton[2]//div[1]//div[2]//span[1]
${remarks_textarea}    //html[1]/body[1]/div[1]/div[2]/div[1]/div[3]/textarea[1]
${proceed_button}    //span[contains(text(),'Proceed')]
${yes2_button}    //span[@class='ui-button-icon-left ui-clickable pi pi-check']



*** Keyword ***
Open Browser and go to login page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${login_button}

Input Customer Username
    [Arguments]    ${username}=RubyGooo1!
    Input Text    ${username_field}    ${username}

Input Customer Password
    [Arguments]    ${password}=RubyGooo1!
    Input Text    ${password_field}    ${password}

Click Submit
    Click Button    ${login_submit_button}

Go To My Profile
    Click Element    ${my_profile_button}

Go To my Reservations
    Click Element    ${my_reservation}


# Script for Update Mode of Payment

Update Mode of Payment
    Click Element    ${change_payment_method}
    Click Element    ${over_the_counter}
    Click Element    ${check_radiobutton}

Input Remarks
    [Arguments]    ${remarks}=testing
    Input Text    ${remarks_textarea}    ${remarks}

Click Proceed
    Click Element    ${proceed_button}
    Click Element    ${yes2_button}
    Set Selenium Implicit Wait    ${delay2}
    Wait Until Page Contains    UPDATED

Click Submit Button
    Click Element    ${logout_dropdown}
    Click Element    ${logout_button}
    Close Browser


# Script for Inputting Payment Reference (Payment Method)

Go To Payment Reference
    Click Element    ${payment_reference_button}
    Wait Until Page Contains    Input Payment Reference

Input Payment Reference
    [Arguments]    ${payment_reference}=UB5689098
    Input Text    ${payment_reference_input}    ${payment_reference}

Input Amount
    [Arguments]    ${amount}=33459.29
    Input Text    ${amount_input}    ${amount}

Click Submit and Logout
    Click Element    ${submit_button}
    Click Element    ${yes1_button}
    Set Selenium Implicit Wait    ${delay2}
    Wait Until Page Contains    PAYMENT REFERENCE
    Click Element    ${logout_dropdown}
    Click Element    ${logout_button}
    Close Browser



*** Test Cases ***
Verify that Customer can change its payment method
    Open Browser and go to login page
    Input Customer Username
    Input Customer Password
    Click Submit
    Go To My Profile
    Go To my Reservations
    Update Mode of Payment
    Input Remarks
    Click Proceed
    Click Submit Button


Verify that user can pay reservations
    Open Browser and go to login page
    Input Customer Username
    Input Customer Password
    Click Submit
    Go To My Profile
    Go To my Reservations
    Go To Payment Reference
    Input Payment Reference
    Input Amount
    Click Submit and Logout