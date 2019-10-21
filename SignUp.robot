*** Settings ***
Documentation    Sign Up Test Script/Author: Celine Dianne/Date: 10.14.2019
Library    Selenium2Library

*** Variable ***
${url}    http://turftestenvforsimplevia.azurewebsites.net
${browser}    chrome
${registration_button}    //*[@id="navbarSupportedContent"]/ul/li[5]/a
${individual_option}    //div[@class='row text-center mt-3 s-override']//div[1]//p-radiobutton[1]//div[1]//div[2]
${teamacademy_optionbutton}    //div[@class='col-md-8 w-100 main-form']//div[2]//p-radiobutton[1]//div[1]//div[2]//span[1]
${address_field}    //input[@id='Address']
${tin_field}    //p-inputmask[@id='TIN']//input[@placeholder='000-000-000-000']
${vatEx_checkbox}    //input[@id='inlineCheckbox1']
${firstname_field}    //input[@id='Representative1Fname']
${lastname_field}    //input[@id='Representative1Lname']
${email_field}    //input[@id='Representative1Email']
${contact_field}    //input[@id='Representative1Contact']
${payeename_field}    //input[@id='payee']
${payeeaddress_field}    //input[@id='payeeadd']
${payeetin_field}    //p-inputmask[@id='TIN2']//input[@placeholder='000-000-000-000']
${customer_username_field}    //input[@id='Username']
${customer_password_field}    //input[@id='Password']
${customer_confirmpass_field}    //input[@id='Confirm Password']
${certify_checkbox}    //input[@id='inlineCheckbox3']
${reg_submit_button}    //span[@class='ui-button-text ui-clickable']
${yes_button}    //span[contains(text(),'Yes')]
${done_button}    //div//button[@class='swal2-confirm swal2-styled']
${delay2}    10s
${delay1}    1s



*** Keyword ***
Open Browser and go to registration page
    Set Selenium Speed    ${delay1}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${registration_button}

Choosing type of customer
    Click Element    ${teamacademy_optionbutton}
    Click Element    ${individual_option}

Input Address in Membership Form
    [Arguments]    ${address}=Taguig City
    Input Text    ${address_field}    ${address}

Input Tin Number in Membership Form
    [Arguments]    ${tin_number}=753695124862
    Input Text    ${tin_field}    ${tin_number}

Choosing Vat Type of Customer
    Click Element    ${vatEx_checkbox}

Input Customer Firstname
    [Arguments]    ${firstname}=Ruby
    Input Text    ${firstname_field}    ${firstname}

Input Customer Lastname
    [Arguments]    ${lastname}=Go
    Input Text    ${lastname_field}    ${lastname}

Input Customer Email
    [Arguments]    ${email}=ruby01@gmail.com
    Input Text    ${email_field}    ${email}

Input Customer Contact Number
    [Arguments]    ${contact_number}=09996325555
    Input Text    ${contact_field}    ${contact_number}

Input Payee Name
    [Arguments]    ${payee_name}=Ruby Go
    Input Text    ${payeename_field}    ${payee_name}

Input Payee Address
    [Arguments]    ${payee_address}=Makati City
    Input Text    ${payeeaddress_field}    ${payee_address}

Input Payee Tax
    [Arguments]    ${payee_tin}=159357842685
    Input Text    ${payeetin_field}    ${payee_tin}

Input Customer New Username
    [Arguments]    ${new_username}=RubyGooo1!
    Input Text    ${customer_username_field}    ${new_username}

Input Customer New Password
    [Arguments]    ${new_password}=RubyGooo1!
    Input Text    ${customer_password_field}    ${new_password}

Input Confirm Password
    [Arguments]    ${new_confirm_password}=RubyGooo1!
    Input Text    ${customer_confirmpass_field}    ${new_confirm_password}

Click certify checkbox
    Click Element    ${certify_checkbox}
    Click Element    ${reg_submit_button}

Confirmation Dialog
    Wait Until Page Contains    Confirmation
    Click Element    ${yes_button}
    Wait Until Page Contains    Processing, please wait...
    Set Selenium Implicit Wait    ${delay2}

Successful Dialog
    Wait Until Page Contains    1 Government Issued ID
    Click Element    ${done_button}
    Close Browser



*** Test Cases ***
Verify that Customer register to the system
    [Documentation]    Registration of the User
    Open Browser and go to registration page
    Choosing type of customer
    Input Address in Membership Form
    Input Tin Number in Membership Form
    Choosing Vat Type of Customer
    Input Customer Firstname
    Input Customer Lastname
    Input Customer Email
    Input Customer Contact Number
    Input Payee Name
    Input Payee Address
    Input Payee Tax
    Input Customer New Username
    Input Customer New Password
    Input Confirm Password
    Click certify checkbox
    Confirmation Dialog
    Successful Dialog

