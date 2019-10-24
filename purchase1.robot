*** Settings ***
Library    Selenium2Library

*** Variables ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${Signup_Button}    //a[@class='login']
${delay}    2s
${Email_Field}    //input[@id='email']
${Password_Field}    //input[@id='passwd']
${Submit_Button}    //button[@id='SubmitLogin']
${women_button}    //a[@class='sf-with-ul'][contains(text(),'Women')]
${tshirts_button}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[1]/ul/li[1]/a
${faded_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addfaded_button}    //div//span[contains(text(),'Add to cart')]
${continue1_button}    //div//span[@class='continue btn btn-default button exclusive-medium']//span[1]
${women1_button}    //a[@class='sf-with-ul'][contains(text(),'Women')]
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

${dress_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${summer_button}    //li[@class='sfHover']//a[contains(text(),'Summer Dresses')]
${summer1_button}    //li[@class='ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line']//img[@class='replace-2x img-responsive']
${addsummer_button}    //li[@class='ajax_block_product col-xs-12 col-sm-6 col-md-4 first-in-line last-line first-item-of-tablet-line first-item-of-mobile-line last-mobile-line']//span[contains(text(),'Add to cart')]
${proceed_button}    //span[contains(text(),'Proceed to checkout')]


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
    Mouse Over    ${dress_button}
    Click Element    ${summer_button}
    Mouse Over    ${summer1_button}
    Click Element    ${addsummer_button}
    Click Element    ${proceed_button}




*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Sign up
    Email
    Password
    Submit
    Click women
    Click Dresses
