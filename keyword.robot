*** Keyword ***
Open Browser and go to registration page
	Set Selenium Speed    ${delay}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Click Element    ${register_button}

Fullname
	[Arguments]   ${fullname}=Celine Dianne Montano
	Input Text    ${fullname_field}    ${fullname}

Email
	[Arguments]    ${email}=celine.montano@simplevia.com
	Input Text    ${email_field}    ${email}

Username
	[Arguments]    ${username}=celine11
	Input Text    ${username_field}    ${username}

Password
	[Arguments]    ${password}=1234
	Input Text    ${password_field}    ${password}

Submit Registration
	Click Element    ${submit_button}

Go To Login page
	Click Element    ${login_button}

Input Username
	[Arguments]    ${registered_username}=celine11
	Input Text    ${login_username_field}    ${registered_username}

Input Password
	[Arguments]    ${registered_password}=123
	Input Text    ${login_password_field}    ${registered_password}

Input Username1
	[Arguments]    ${registered_username}=celine111
	Input Text    ${login_username_field}    ${registered_username}

Input Password2
	[Arguments]    ${registered_password}=12345
	Input Text    ${login_password_field}    ${registered_password}

Click Submit Button
	Click Element    ${login_submit_button}

Closing Browser
	[Teardown]
	Close Browser


If_Else_Test
	[Arguments]    ${input}
	@{fruits}    Create List    Apple    Banana    Cherry
	Run Keyword If    "${input}" == "Apple" or "Banana" or "Cherry"   Log    This is ${input}
	# ...    IF ELSE    "${input}" == "Banana" or "Cherry"    Log    This is ${input}
	...    ELSE    This is not a Fruit!

ArrayListSample
	@{fruits}    Create List
	Append To List    ${fruits}    banana    cherry    apple
	: FOR   ${item}    IN    @{fruits}
	\    Run Keyword If    "${item}" !="cherry"    Log    This is ${item}


ArrayRangeSample
	@{fruits}    Create List
	Append To List    ${fruits}    banana    cherry    grapes    apple
	${no_of_fruits}=    Get Length    ${fruits}
	:FOR    ${items}    IN RANGE    0    ${no_of_fruits}
	\    Log    This is @{fruits}[${items}]
	\    Exit For Loop If    ${items}
	# \
	# Exit For Loop If    ${items}