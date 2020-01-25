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
    Input Text             username         WeRockStar
    Click Button             ตกลง
	Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit FName	
	Input Text             fname            Kotchaphan  
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit LName	
	Input Text             lname            Muangsan 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
Edit E-mail	
	Input Text             email            Kotchaphan.m@kkumail.com
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit 	 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขไม่สำเร็จ
	
No Edit User Name	
    Input Text             fname            Kotchaphan1
	Input Text             lname            Muangsan1
    Input Text             email            Kotchaphan.m1@kkumail.com 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit FName	
    Input Text             username         WeRockStar2
	Input Text             lname            Muangsan2
    Input Text             email            Kotchaphan.m2@kkumail.com
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit LName	

    Input Text             username         WeRockStar3
    Input Text             fname            Kotchaphan3
    Input Text             email            Kotchaphan.m3@kkumail.com
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	
No Edit E-mail	
    Input Text             username         WeRockStar4
    Input Text             fname            Kotchaphan4
	Input Text             lname            Muangsan4 
    Click Button             ตกลง
    Wait Until Page Contains        แก้ไขสำเร็จ
	

	

	
