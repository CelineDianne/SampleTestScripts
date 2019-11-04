*** Settings ***
Library    Selenium2Library





*** Variable ***
${url}    http://automationpractice.com/index.php
${browser}    firefox
${Sign_button}    //a[@class='login']
${enterEmail_field}    //*[@id="email_create"]
${createAccount_button}    //form[@id='create-account_form']//span[1]
${Mrs_button}    //input[@id='id_gender2']
${FirstName_field}    //input[@id='customer_firstname']
${LastName_field}    //input[@id='customer_lastname']
${password_field}    //*[@id="passwd"]
${days_button}    //div[@id='uniform-days']
${29_button}    //select[@id='days']//option[contains(text(),'29')]
${month_button}    //div[@id='uniform-months']
${dec_button}    //*[@id="months"]/option[13]
${year_button}    //select[@id='years']
${1997_button}    //*[@id="years"]/option[34]
${checkbox_button}    //*[@id="optin"]
${company_field}     //input[@id='company']
${Address_field}     //input[@id='address1']
${city_field}    //input[@id='city']
${state_button}    //select[@id='id_state']
${california_button}    //*[@id="id_state"]/option[6]
${zip_field}    //input[@id='postcode']
${country_button}    //select[@id='id_country']
${additional_field}    //textarea[@id='other']
${phone_field}    //input[@id='phone']
${mobile_field}    //input[@id='phone_mobile']
${alias_field}    //input[@id='alias']
${register_button}    //span[contains(text(),'Register')]
${delay}    2s


*** Keywords ***
Opening Browser and go to page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Click SignIn Button
    Click Element    ${Sign_button}

Enter Email
    [Arguments]    ${email}=mcelinedianne00@gmail.com
    Input Text    ${enterEmail_field}    ${email}

Click Create Account
    Click Element    ${createAccount_button}

Click Mrs
    Click Element    ${Mrs_button}

Enter First Name
    [Arguments]    ${firstname}=Selina
    Input Text    ${FirstName_field}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}=Jackson
    Input Text    ${LastName_field}    ${lastname}

Enter Password
    [Arguments]    ${password}=Simplevia12345!
    Input Text    ${password_field}    ${password}

Click Days
    Click Element    ${days_button}
    Click Element    ${29_button}
    Click Element    ${month_button}
    Click Element    ${dec_button}
    Click Element    ${year_button}
    Click Element    ${1997_button}
    Click Element    ${checkbox_button}

Enter Company
    [Arguments]    ${company}=ABCD Company
    Input Text    ${company_field}    ${company}

Enter Address
    [Arguments]    ${address1}=Manila
    Input Text    ${Address_field}    ${address1}

Enter City
    [Arguments]    ${city}=Bell
    Input text    ${city_field}    ${city}

Click My State
    Click Element    ${state_button}
    Click Element    ${california_button}

Enter Zipcode
    [Arguments]    ${zipcode}=90201
    Input text    ${zip_field}    ${zipcode}

Click Country
    Click Element    ${country_button}

Input Additional
    [Arguments]    ${additional}=Dev 09356478831
    Input Text    ${additional_field}    ${additional}

Input Phone
    [Arguments]    ${phone}=09263061006
    Input Text    ${phone_field}    ${phone}

Input Mobile
    [Arguments]    ${mobilephone}=09263061005
    Input Text    ${mobile_field}    ${mobilephone}


Input Alias
    [Arguments]    ${alias}=Bello
    Input Text    ${alias_field}    ${alias}

Click Register
    Click Element    ${register_button}
    Close Browser


*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Click SignIn Button
    Enter Email
    Click Create Account


Your Personal Information
    Click Mrs
    Enter First Name
    Enter Last Name
    Enter Password
    Click Days
    Enter Company
    Enter Address
    Enter City
    Click My State
    Enter Zipcode
    Input Additional
    Input Phone
    Input Mobile
    Input Alias
    Click Register

