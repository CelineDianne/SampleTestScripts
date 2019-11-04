*** Settings ***
Documentation    SampleTestScript
Library    Selenium2Library


*** Variable ***
${url}    http://automationpractice.com
${browser}    chrome
${signin_button}    //a[@class='login']
${email_field}    //input[@id='email']
${password_field}    //input[@id='passwd']
${signin2_button}    //p[@class='submit']//span[1]
${women_button}    //a[@class='sf-with-ul'][contains(text(),'Women')]
${tshirt_button}    //ul[@class='submenu-container clearfix first-in-line-xs']//ul//li//a[contains(text(),'T-shirts')]
${sleeve_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addcart_button}    //span[contains(text(),'Add to cart')]
${continue_button}    //span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dress_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${casual_button}    //li[@class='sfHover']//a[contains(text(),'Casual Dresses')]
${printed_button}    //a[@class='product_img_link']//img[@class='replace-2x img-responsive']
${addcart2_button}    //span[contains(text(),'Add to cart')]
${cshopping_button}    //span[@class='continue btn btn-default button exclusive-medium']//span[1]
${dress2_button}    //*[@id="block_top_menu"]/ul/li[2]/a
${summer_button}    //div[@class='block_content']//ul[@class='tree dynamized']//a[contains(text(),'Summer Dresses')]
${chiffon_button}    //*[@id="center_column"]/ul/li[3]/div/div[1]/div/a[1]/img
${addcart3_button}    //span[contains(text(),'Add to cart')]
${pcheckout_button}    //span[contains(text(),'Proceed to checkout')]
${checkout_button}    //a[@class='button btn btn-default standard-checkout button-medium']//span[contains(text(),'Proceed to checkout')]
${message_field}    //textarea[@name='message']
${ptcheckout_button}    //button[@name='processAddress']//span[contains(text(),'Proceed to checkout')]
${agree_button}    //input[@id='cgv']
${finalcheckout_button}    //button[@name='processCarrier']//span[contains(text(),'Proceed to checkout')]
${bank_button}    //a[@class='bankwire']
${confirm_button}    //span[contains(text(),'I confirm my order')]
${signout_button}    //a[@class='logout']
${delay2}    5s
${delay}    1s


*** Keyword ***
Open Browser and go to login page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${signin_button}

Input email
    [Arguments]    ${email}=crmllx4@gmail.com
    Input text    ${email_field}    ${email}

Input password
    [Arguments]    ${password}=bruhhh
    Input text    ${password_field}    ${password}

Click signin2
    Click element    ${signin2_button}

Click women
    Mouse over    ${women_button}

Click tshirt
    Click element    ${tshirt_button}

Click sleeve
    Mouse over    ${sleeve_button}

Click addcart
    Click element    ${addcart_button}

Click continue
    Click element    ${continue_button}

Click dress
    Mouse over    ${dress_button}

Click casual
    Click element    ${casual_button}

Click printed
    Click element    ${printed_button}

Click addcart2
    Click element    ${addcart2_button}

Click cshopping
    Click element    ${cshopping_button}

Click dress2
    Click element    ${dress2_button}

Click summer
    Click element    ${summer_button}

Click chiffon
    Click element    ${chiffon_button}

Click addcart3
    Click element    ${addcart3_button}

Click pcheckout
    Click element    ${pcheckout_button}

Click checkout
    Click element    ${checkout_button}

Input message
    [Arguments]    ${message}=hello
    Input text    ${message_field}    ${message}

Click ptcheckout
    Click element    ${ptcheckout_button}

Click agree
    Click element    ${agree_button}

Click finalcheckout
    Click element    ${finalcheckout_button}

Click bank
    Click element    ${bank_button}

Click confirm
    Click element    ${confirm_button}

Click signout
    Click element    ${signout_button}

*** Test Cases ***
Login User
    [Documentation]    Signin of the User
    Open Browser and go to login page
    Input email
    Input password
    Click signin2
    Click women
    Click tshirt
    Click sleeve
    Click addcart
    Click continue
    Click dress
    Click casual
    Click printed
    Click addcart2
    Click cshopping
    Click dress2
    Click summer
    Click chiffon
    Click addcart3
    Click pcheckout
    Click checkout
    Input message
    Click ptcheckout
    Click agree
    Click finalcheckout
    Click bank
    Click confirm
    Click signout


