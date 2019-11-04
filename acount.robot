*** Settings ***
Documentation    SampleTestScript
Library    Selenium2Library


*** Variable ***
${url}    http://automationpractice.com
${browser}    chrome
${signin_button}    //a[@class='login']
${emailadd_field}    //input[@id='email_create']
${create_button}    //form[@id='create-account_form']//span[1]
${mrs_button}    //*[@id="id_gender2"]
${firstname_field}    //input[@id='customer_firstname']
${lastname_field}    //input[@id='customer_lastname']
${password_field}    //input[@id='passwd']
${date_dropdown}    //select[@id='days']
${date20_button}    //select[@id='days']//option[contains(text(),'20')]
${month_dropdown}    //select[@id='months']
${month1_button}    //option[contains(text(),'February')]
${year_dropdown}    //select[@id='years']
${year1_button}    //option[contains(text(),'2017')]
${seller_button}    //input[@id='newsletter']
${company_field}    //input[@id='company']
${address_field}    //input[@id='address1']
${address2_field}    //input[@id='address2']
${city_field}    //input[@id='city']
${state_dropdown}    //select[@id='id_state']
${state2_button}    //option[contains(text(),'Florida')]
${zip_field}    //input[@id='postcode']
${country_dropdown}    //select[@id='id_country']
${additional_field}    //textarea[@id='other']
${hphone_field}    //input[@id='phone']
${mphone_field}    //input[@id='phone_mobile']
${assignadd_field}    //input[@id='alias']
${register_button}    //span[contains(text(),'Register')]
${delay}    1s
${delay2}    5s

*** Keyword ***
Open Browser and go to login page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${signin_button}

Input emailadd
    [Arguments]    ${emailadd}=crmllx4@gmail.com
    Input text    ${emailadd_field}    ${emailadd}

Click create
    Click element    ${create_button}

Click mrs
    Set Selenium Implicit Wait    ${delay2}
    Click element    ${mrs_button}

Input firstname
    [Arguments]    ${firstname}=mela
    Input text    ${firstname_field}    ${firstname}

Input lastname
    [Arguments]    ${lastname}=asdfghjkl
    Input text    ${lastname_field}    ${lastname}

Input password
    [Arguments]    ${password}=bruhhh
    Input text    ${password_field}    ${password}

Click date
    Click element    ${date_dropdown}

Click date20
    Click element    ${date20_button}

Click month
    Click element    ${month_dropdown}

Click month1
    Click element    ${month1_button}

Click year
    Click element    ${year_dropdown}

Click year1
    Click element    ${year1_button}

Click seller
    Click element    ${seller_button}

Input company
    [Arguments]    ${company}=simplevia
    Input text    ${company_field}    ${company}

Input address
    [Arguments]    ${address}=#123 emeral st ortigas center
    Input text    ${address_field}    ${address}

Input address2
    [Arguments]    ${address2}=unit 405 4th floor
    Input text    ${address2_field}    ${address2}

Input city
    [Arguments]    ${city}=bell
    Input text    ${city_field}    ${city}

Click state
    Click element    ${state_dropdown}

Click state2
    Click element    ${state2_button}

Input zip
    [Arguments]    ${zip}=90201
    Input text    ${zip_field}    ${zip}

Click country
    Click element    ${country_dropdown}

Input additional
    [Arguments]    ${additional}=megamall
    Input text    ${additional_field}    ${additional}

Input hphone
    [Arguments]    ${hphone}=09201784685
    Input text    ${hphone_field}    ${hphone}

Input mphone
    [Arguments]    ${mphone}=0935624798
    Input text    ${mphone_field}    ${mphone}

Input assignadd
    [Arguments]    ${assignadd}=emeral
    Input text    ${assignadd_field}    ${assignadd}

Click register
    Click element    ${register_button}



*** Test Cases ***
Login User
    [Documentation]    Signin of the User
    Open Browser and go to login page
    Input emailadd
    Click create
    Click mrs
    Input firstname
    Input lastname
    Input password
    Click date
    Click date20
    Click month
    Click month1
    Click year
    Click year1
    Click seller
    Input company
    Input address
    Input address2
    Input city
    Click state
    Click state2
    Input zip
    Click country
    Input additional
    Input hphone
    Input mphone
    Input assignadd
    Click register