*** Settings ***
Library    Selenium2Library


*** Variables ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${Signup_Button}    //a[@class='login']
${Email_Field}    //input[@id='email']
${Password_Field}    //input[@id='passwd']
${Submit_Button}    //button[@id='SubmitLogin']
${women_button}    //*[@id="block_top_menu"]/ul/li[1]/a
${tshirts_button}    //div//ul[@class='submenu-container clearfix first-in-line-xs']//ul//li//a[contains(text(),'T-shirts')]
${faded_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${add_button}    //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
${continue_button}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
${women1_button}    //a[@class='sf-with-ul'][contains(text(),'Women')]
${blouse_button}    //ul[@class='submenu-container clearfix first-in-line-xs']//ul//li//a[contains(text(),'Blouses')]
${blouse1_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addblouse_button}    //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
${continue1_button}    //span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dress_button}    //*[@id="block_top_menu"]/ul/li[2]
${casual_button}    //*[@id="block_top_menu"]/ul/li[2]/ul/li[1]/a
${printed_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addprinted_button}    //span[contains(text(),'Add to cart')]
${continue2_button}    //*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
${dress1_button}    //*[@id="block_top_menu"]/ul/li[2]
${evening_button}    //*[@id="block_top_menu"]/ul/li[2]/ul/li[2]/a
${evening1_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addevening_button}    //*[@id="center_column"]/ul/li/div/div[2]/div[2]/a[1]/span
${dress2_button}    //*[@id="block_top_menu"]/ul/li[2]
${summer_button}    //*[@id="block_top_menu"]/ul/li[2]/ul/li[3]/a
${summerdress_button}    //*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img
${addsummer_button}    //*[@id="center_column"]/ul/li[3]/div/div[2]/div[2]/a[1]/span
${proceed_button}    //div//span[contains(text(),'Proceed to checkout')]
${checkout_button}    //a[@class='button btn btn-default standard-checkout button-medium']//span[contains(text(),'Proceed to checkout')]
${delay}    3s


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

Click Women
    Mouse Over    ${women_button}
    Click Element    ${tshirts_button}
    Mouse Over    ${faded_button}
    Click Element    ${add_button}
    Click Element    ${continue_button}
    Mouse Over    ${women1_button}
    Click Element    ${blouse_button}
    Mouse Over    ${blouse1_button}
    Click Element    ${addblouse_button}
    Click Element    ${continue1_button}
    Mouse Over    ${dress_button}
    Click Element    ${casual_button}
    Mouse Over    ${printed_button}
    Click Element    ${addprinted_button}
    Click Element    ${continue2_button}
    Mouse Over    ${dress1_button}
    Click Element    ${evening_button}
    Mouse Over    ${evening1_button}
    Click Element    ${addevening_button}
    Mouse Over    ${dress2_button}
    Click Element    ${summer_button}
    Mouse Over    ${summerdress_button}
    Click Element    ${addsummer_button}
    Click Element    ${proceed_button}

Click Checkout button
    Click Element    ${checkout_button}



*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Sign up
    Email
    Password
    Submit
    Click Women
    Click Checkout button
