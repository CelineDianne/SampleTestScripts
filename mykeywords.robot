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

Click Submit button
    Click Button    ${login_submit_button}

Click Calendar Submit Button
    Wait Until Page Contains    CHECK SCHEDULE AVAILABILITY
    Click Element    ${calendar_submit}

December Bookings
    # Wait Until Page Contains    Reservation
    Click Button    ${december_button}
    Click Element    ${Decemberdays_selected}
    Click Element    ${first_slotDecember}
    Click Element    ${first_lightDecember}
    Click Element    ${second_slotDecember}
    Click Element    ${second_lightDecember}
    Click Element    ${third_slotDecember}
    Click Element    ${third_lightDecember}

November Bookings
    Click Element    ${november_button}
    Click Element    ${Novemberdays_selected}
    Click Element    ${first_slotNovember}
    Click Element    ${second_slotNovember}


Add to Cart
    Click Element    ${add_to_cart_button}
    Set Selenium Implicit Wait    ${delay2}
    Wait Until Page Contains    ADDED TO CART!
    Click Element    ${cart_button}
    Click Element    ${cart_checkbox}
    Click Element    ${proceed_button}
    Click Element    ${chosen_mode_of_payment}
    Click Element    ${payment_dropdown}
    Click Element    ${unionbank}
    Click Element    ${submit_payment_method}
    Set Selenium Implicit Wait    ${delay3}
    Wait Until Page Contains    BOOKING SUCCESSFUL
    Set Selenium Implicit Wait    ${delay2}
    Click Element    ${my_profile_button}
    Click Element    ${my_profile_button}
    Click Element    ${logout_dropdown}
    Click Element    ${logout_button}
    Close Browser