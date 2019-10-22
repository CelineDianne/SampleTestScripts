*** Settings ***
Documentation    Activity
Library    Selenium2Library
Resource    keyword.robot
Library    Collections
# Test Setup    Open Browser and go to registration page

*** Variable ***
${url}    http://localhost:8080/test-app/index.php
${browser}    chrome
${register_button}    //a[@class='btn btn-success']
${fullname_field}    //input[@placeholder='Full Name']
${email_field}    //input[@placeholder='Email']
${username_field}    //input[@placeholder='Username']
${password_field}    //input[@placeholder='Password']
${submit_button}    //input[@name='submit']
${login_button}    //a[@class='btn btn-primary']
${login_username_field}    //input[@placeholder='Username']
${login_password_field}    //input[@placeholder='Password']
${login_submit_button}    //input[@name='submit']
${delay}    1s

*** Test Cases ***
Registration
	[Documentation]    Registration of the User
	#1. Open Browser and register
	Fullname
	Email
	Username
	Password
	Submit Registration
	Wait Until Page Contains    Registration successful!

Valid_Login
	#1. This can verify a valid logging in to the system
	Input Username
	Input Password
	Click Submit Button
	Closing Browser

Invalid Login
	#2. This can verify an invalid logging in to the system
	Input Username1
	Input Password2
	Click Submit Button
	Wait Until Page Contains    Welcome Celine Dianne Montano!
	Closing Browser


TestCondition
	If_Else_Test    Pie


TestArray
	ArraySample


ArrayRange
	ArrayRangeSample