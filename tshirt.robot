*** Settings ***
Library    Selenium2Library




*** Variable ***
${url}    http://automationpractice.com/index.php
${browser}    chrome
${delay}    1s
${Signup_Button}    //a[@class='login']
${Email_Field}    //input[@id='email']
${Password_Field}    //input[@id='passwd']
${Submit_Button}    //p[@class='submit']//span[1]
${Tshirt_Button}    //*[@id="block_top_menu"]/ul/li[3]/a
${Size_Checklist}    //input[@id='layered_id_attribute_group_2']
${Color_Checklist}    //input[@id='layered_id_attribute_group_14']
${Cotton_Checklist}    //input[@id='layered_id_feature_5']
${Casual_Checklist}    //input[@id='layered_id_feature_11']
${Properties_Checklist}    //input[@id='layered_id_feature_17']
${Stock_Checklist}    //input[@id='layered_quantity_1']
${Manufacturer_Checklist}    //input[@id='layered_manufacturer_1']
${Condition_Checklist}    //input[@id='layered_condition_new']
${Price}    //div[@class='layered_price']//a[1]
${Product}    //select[@id='selectProductSort']
${PopUp}    //div[@class='right-block']
${Select}    //option[contains(text(),'Price: Lowest first')]
${AddCart}    //div[@class='right-block']
${Added}    //span[contains(text(),'Add to cart')]
${Proceed1}    //span[contains(text(),'Proceed to checkout')]
${Proceed2}    //a[@class='button btn btn-default standard-checkout button-medium']//span[contains(text(),'Proceed to checkout')]
${Proceed3}    //button[@name='processAddress']//span[contains(text(),'Proceed to checkout')]
${Agree}    //input[@id='cgv']
${Proceed4}    //button[@name='processCarrier']//span[contains(text(),'Proceed to checkout')]
${Cheque}    //a[@class='cheque']
${Confirmation}    //span[contains(text(),'I confirm my order')]
${Signout}    //a[@class='logout']
${delay1}    5s

*** Keywords ***
Opening Browser and go to page
    Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Sign up
    Click Element    ${Signup_Button}

Email
    [Arguments]    ${email}=celine.montano@simplevia.com
    Input text    ${Email_Field}    ${email}

Password
    [Arguments]    ${pass}=simplevia001
    Input text    ${Password_Field}    ${pass}

Submit
    Click Element    ${Submit_Button}

Tshirt
    Click Element    ${Tshirt_Button}

Size
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Size_Checklist}

Color
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Color_Checklist}

Cotton
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Cotton_Checklist}

Casual
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Casual_Checklist}

Properties
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Properties_Checklist}

Stock
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Stock_Checklist}

Manufacturer
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Manufacturer_Checklist}

Condition
    Set Selenium Implicit Wait    ${delay1}
    Click Button    ${Condition_Checklist}

Price
    Click Element    ${Price}

Product
    Click Element    ${Product}

PopUp
    Click Element    ${PopUp}

Select
    Click Element    ${Select}

AddCart
    Click Element    ${AddCart}

Added
    Click Element    ${Added}

Proceed1
    Click Element    ${Proceed1}

Proceed2
    Click Element    ${Proceed2}

Proceed3
    Click Element    ${Proceed3}

Agree
    Click Element    ${Agree}

Proceed4
    Click Element    ${Proceed4}

Cheque
    Click Element    ${Cheque}

Confirmation
    Click Element    ${Confirmation}

Signout
    Click Element    ${Signout}

Close
    Close Browser

*** Test Cases ***
Verify that customer can go to the website
    Opening Browser and go to page
    Sign up
    Email
    Password
    Submit
    Tshirt
    Size
    Color
    Cotton
    Casual
    Properties
    Stock
    Manufacturer
    Condition
    Price
    Product
    Select
    AddCart
    Added
    Proceed1
    Proceed2
    Proceed3
    Agree
    Proceed4
    Cheque
    Confirmation
    Signout
    Close