*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}            http://localhost/Scrum/login.php
${EDIT USER URL}    http://localhost/Scrum/edit_profile.php?id=10
${DELAY}    0


*** Test Case ***
Open Event Edit Product Backlog Page
	Open Browser            ${WELCOME URL}    ${BROWSER}
	Location Should Be      ${WELCOME URL}

Input username and password
	Input Text        username    moomee
	Input Password    password    123
	Click Element                  xpath: //*[contains(text(), "LOG IN")]
	Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]

	Go To       ${EDIT USER URL}
	
Edit User Name	
    Input Text             username         moomee1
    Click Button             ตกลง
	Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit FName	
	Input Text             fname            mee1  
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit LName	
	Input Text             lname            moo1
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit E-mail	
	Input Text             email            moo1@hotmail.com
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit 	 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขไม่สำเร็จ
	
No Edit User Name	
    Input Text             fname            mee2
	Input Text             lname            moo2
    Input Text             email            moo2@hotmail.com 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit FName	

    Input Text             username         moomee3
	Input Text             lname            moo13
    Input Text             email            moo13@hotmail.com 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit LName	

    Input Text             username         moomee4
    Input Text             fname            mee4
    Input Text             email            moo4@hotmail.com
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit E-mail	
    Input Text             username         moomee5
    Input Text             fname            mee5
	Input Text             lname            moo5 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	

	

	
