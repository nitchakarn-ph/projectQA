*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SIGNUP URL}    http://localhost/Scrum/sigup.php 


*** Test Case ***

Input All Data
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar 
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser
	
No Input Image
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan
    Input Text             username         WeRockStar 
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input First Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
	Choose File          id=image           E://anacolly/25620217_190820_0054.jpg
    Input Text             lname            Muangsan
    Input Text             username         WeRockStar 
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Last Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image           E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             username         WeRockStar 
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
	Close Browser
	
No Input User Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image           E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Password
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image           E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan
    Input Text             username         WeRockStar 
    Input Text             email            Kotchaphan.m@kkumail.com
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Email
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan
    Input Text             username         WeRockStar 
    Input Password         password            12345678
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Image
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
	Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser

Input Only First Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             fname            Kotchaphan 
	Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Last Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             lname            Muangsan
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser

Input Only User Name
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             username         WeRockStar 
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Password
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Password         password            12345678
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Input Only Email
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Input Text             email            Kotchaphan.m@kkumail.com
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Choose Only User Role
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
No Input Data
    Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Click Button             submit
    Wait Until Page Contains        กรุณกรอกข้อมูลให้ครบ
    Close Browser
	
Invalid Image
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            D://qa/pro/paper_project_qa.xlsx
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar5
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
    Close Browser
	
Invalid fname
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan&
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar6
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
    Close Browser
	
Invalid username
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar#
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser
	
Invalid lname
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image             E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan
    Input Text             lname            Muangsan#
    Input Text             username         WeRockStar7
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
    Close Browser
	
Invalid email
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image             E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan
    Input Text             lname            Muangsan#
    Input Text             username         WeRockStar7
    Input Password         password            12345678
    Input Text             email            Kotchaphan.mkkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนไม่สำเร็จ กรุณาลองใหม่อีกครั้ง
    Close Browser
	
Input username Test case #20
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ชื่อผู้ใช้งาน(username) นี้ถูกใช้งานแล้ว
    Close Browser
	
Input fname Test case #21
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar2
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser

Input lname Test case #22
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar3
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser
	
Input emailname Test case #23
	Open Browser    ${SIGNUP URL}    ${BROWSER}
    Location Should Be    ${SIGNUP URL}
    Choose File          id=image            E://anacolly/25620217_190820_0054.jpg
    Input Text             fname            Kotchaphan 
    Input Text             lname            Muangsan 
    Input Text             username         WeRockStar4
    Input Password         password            12345678
    Input Text             email            Kotchaphan.m@kkumail.com 
    Select From List By Index       user_role        2
    Click Button             submit
    Wait Until Page Contains        ลงทะเบียนสำเร็จ
    Close Browser
	

	


	

	