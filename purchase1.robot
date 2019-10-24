*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${Signup_Button}    //a[@class='login']
${Email_Field}    //input[@id='email']
${Password_Field}    //input[@id='passwd']
${Submit_Button}    //button[@id='SubmitLogin']
${women_button}    //a[@class='sf-with-ul'][contains(text(),'Women')]
${tshirts_button}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[1]/a
${faded_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addfaded_button}    //div//span[contains(text(),'Add to cart')]
${continue1_button}    //div//span[@class='continue btn btn-default button exclusive-medium']//span[1]
${women1_button}     //a[@class='sf-with-ul'][contains(text(),'Women')]
${blouse_button}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[2]/a
${blousehov_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addblouse_button}    //div//span[contains(text(),'Add to cart')]
${continue2_button}    //div//span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dresses_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${casual_button}    //*[@id="block_top_menu"]/ul/li[2]/ul/li[1]/a
${casualdress_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addcasual_button}    //div//span[contains(text(),'Add to cart')]
${printedcasual_button}    //span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dresses1_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${eveningdress_button}    //*[@id="block_top_menu"]/ul/li[2]/ul/li[2]/a
${eveninghov_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addevening_button}    //div//span[contains(text(),'Add to cart')]
${continue3_button}    //div//span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dresses2_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${summer_button}     //html[1]/body[1]/div[1]/div[1]/header[1]/div[3]/div[1]/div[1]/div[6]/ul[1]/li[2]/ul[1]/li[3]/a[1]
${summerdress_button}    //*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img
${addsummer_button}    //span[contains(text(),'Add to cart')]
${proceed_button}     //span[contains(text(),'Proceed to checkout')]
${checkout_button}    //a[@class='button btn btn-default standard-checkout button-medium']//span[contains(text(),'Proceed to checkout')]
${delay}    2s
${delay1}    10s

*** Keywords ***
Opening Browser and go to page
    Set Selenium Speed    ${delay}
    Set Selenium Implicit Wait    ${delay1}
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

Click women
    Mouse Over    ${women_button}
    Click Element    ${tshirts_button}
    Mouse Over    ${faded_button}
    Click Element    ${addfaded_button}
    Click Element    ${continue1_button}
    Mouse Over    ${women1_button}
    Click Element    ${blouse_button}
    Mouse Over    ${blousehov_button}
    Click Element    ${addblouse_button}
    Click Element    ${continue2_button}


Click Dresses
    Mouse Over    ${dresses_button}
    Click Element    ${casual_button}
    Mouse Over    ${casualdress_button}
    Click Element    ${addcasual_button}
    Click Element    ${printedcasual_button}
    Mouse Over    ${dresses1_button}
    Click Element    ${eveningdress_button}
    Mouse Over    ${eveninghov_button}
    Click Element    ${addevening_button}
    Click Element    ${continue3_button}
    Mouse Over    ${summer_button}
    Click Element    ${summerdress_button}
    Click Element    ${addsummer_button}
    Click Element    ${proceed_button}
    Click Element    ${checkout_button}



*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Sign up
    Email
    Password
    Submit
    Click women
    Click Dresses
