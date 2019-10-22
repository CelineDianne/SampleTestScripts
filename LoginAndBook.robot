*** Settings ***
Documentation    Login and Book Test Script/Author: Celine Dianne/Date: 10.14.2019
Library    Selenium2Library
Resource    mykeywords.robot


*** Variable ***
${url}    http://turftestenvforsimplevia.azurewebsites.net
${browser}    chrome
${delay}    1s
${delay2}    10s
${delay3}    15s
${registration_button}    //*[@id="navbarSupportedContent"]/ul/li[5]/a
${login_button}    //*[@id="navbarSupportedContent"]/ul/li[4]
${username_field}    //*[@id="float-input-username"]
${password_field}    //*[@id="float-input-password"]
${login_submit_button}    //button[@class='align-self-center']
${calendar_submit}    //div//span[contains(text(),'SUBMIT')]
${december_button}    //button[contains(text(),'Dec')]
${Decemberdays_selected}    //span[contains(text(),'17')]
${first_slotDecember}    //div//tr[7]//td[1]//p-tablecheckbox[1]//div[1]//div[2]//span[1]
${first_lightDecember}    //div//tr[7]//td[4]//p-checkbox[1]//div[1]//div[2]
${second_slotDecember}    //div//tr[8]//td[1]//p-tablecheckbox[1]//div[1]//div[2]//span[1]
${second_lightDecember}    //div//tr[8]//td[4]//p-checkbox[1]//div[1]//div[2]
${third_slotDecember}    //div//tr[9]//td[1]//p-tablecheckbox[1]//div[1]//div[2]
${third_lightDecember}    //div//tr[9]//td[4]//p-checkbox[1]//div[1]//div[2]
${november_button}    //button[contains(text(),'Nov')]
${Novemberdays_selected}    //span[contains(text(),'23')]
${first_slotNovember}    //tr[4]//td[1]//p-tablecheckbox[1]//div[1]//div[2]//span[1]
${second_slotNovember}    //tr[5]//td[1]//p-tablecheckbox[1]//div[1]//div[2]//span[1]
${add_to_cart_button}    //div//span[contains(text(),'ADD TO CART')]
${cart_button}    //div//button[@id='BtnSummaryHeader']
${cart_checkbox}    //div[@class='ui-chkbox-box ui-widget ui-corner-all ui-state-default']
${proceed_button}    //div//button[@id='BtnProceedToPayment']
${chosen_mode_of_payment}    //div[@class='col-lg-6 col-md-6 col-sm-6']//p-radiobutton[2]//div[1]//div[2]//span[1]
${payment_dropdown}    //div[@class='ui-dropdown-trigger ui-state-default ui-corner-right']
${unionbank}    //app-reservation[@class='ng-star-inserted']//li[1]
${submit_payment_method}    //div//span[contains(text(),'Submit')]
${my_profile_button}    //*[@id="navbarSupportedContent"]/ul/li[1]/a
${my_reservations}    //span[contains(text(),'MY RESERVATIONS')]
${logout_dropdown}    //span[@class='ui-submenu-icon pi pi-fw pi-caret-down ng-star-inserted']
${logout_button}    //span[contains(text(),'LOGOUT')]



*** Test Cases ***
Verify that Customer can login to the system
    [Documentation]    Login of the User
    # This is for Login
    Open Browser and go to login page
    Input Customer Username
    Input Customer Password
    Click Submit button


# Verify that Customer can book and reserve to the sytem
#     # This is for booking slots
#     Click Calendar Submit Button
#     December Bookings
#     November Bookings
#     Add to Cart