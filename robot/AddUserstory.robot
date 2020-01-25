*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}       http://localhost/Scrum/login.php
${USER STORY URL}    http://localhost/Scrum/add_backlog.php 
${DELAY}    0


*** Test Case ***
Open Event Edit Product Backlog Page
	Open Browser            ${WELCOME URL}    ${BROWSER}
	Location Should Be      ${WELCOME URL}

	Input Text        username    nit
	Input Password    password    123
	Click Button      submit

	Go To       ${USER STORY URL}

Input All Data
        Input Text                  userstory_name              As a user, I want to update profile.
        Input Text                  userstory_price             10000.00 
        Input Text                  userstory_priority          13 
        Click Button                บันทึก
		Page Should Contain         เพิ่ม User Story สำเร็จ 
		
Input Name and Price
		Input Text                  userstory_name              As a user, I want to update profile.
        Input Text                  userstory_price             10000.00 
		Click Button                บันทึก
		Page Should Contain         กรุณากรอกข้อมูลให้ครบ
		
Input Name and Priority
		Input Text                  userstory_name              As a user, I want to update profile.
        Input Text                  userstory_priority          13 
        Click Button                บันทึก
        Page Should Contain         กรุณากรอกข้อมูลให้ครบ
		
Input Price and Priority
		Input Text                  userstory_price             10000.00 
        Input Text                  userstory_priority          13 
        Click Button                บันทึก
		Page Should Contain         กรุณากรอกข้อมูลให้ครบ
		
Input Name
		Input Text                  userstory_name              As a user, I want to update profile.
        Click Button                บันทึก
        Page Should Contain         กรุณากรอกข้อมูลให้ครบ
		
Input Price
		Input Text                  userstory_price              10000.00
        Click Button                บันทึก
        Page Should Contain         กรุณากรอกข้อมูลให้ครบ

Input Priority
		Input Text                  userstory_priority          13 
        Click Button                บันทึก
        Page Should Contain         กรุณากรอกข้อมูลให้ครบ

No Input
		Click Button                บันทึก
        Page Should Contain         กรุณากรอกข้อมูลให้ครบ

Input Same Name change price and priority
        Input Text                  userstory_name              As a user, I want to update profile.
        Input Text                  userstory_price             10002.00
        Input Text                  userstory_priority          15 
        Click Button                บันทึก
        Page Should Contain         User Story นี้มีอยู่แล้ว

Input Same Price change name and priority
        Input Text                  userstory_name              As a user, I want to update profile2
        Input Text                  userstory_price             10000.00 
        Input Text                  userstory_priority          14 
        Click Button                บันทึก
		Page Should Contain         เพิ่ม User Story สำเร็จ 

Input Same Priority change price and name
        Input Text                  userstory_name              As a user, I want to update profile_3
        Input Text                  userstory_price             12000.00 
        Input Text                  userstory_priority          13 
        Click Button                บันทึก
		Page Should Contain         เพิ่ม User Story สำเร็จ 
		
Input Same Name price priority
		Input Text                  userstory_name              As a user, I want to update profile.
        Input Text                  userstory_price             10000.00 
        Input Text                  userstory_priority          13 
        Click Button                บันทึก
		Page Should Contain         User Story นี้มีอยู่แล้ว
		
Invalid priority
		Input Text                  userstory_name              As a user, I want to update profile. 5
        Input Text                  userstory_price             10000.00 
        Input Text                  userstory_priority          -1 
        Click Button                บันทึก
		Page Should Contain         เกิดข้อผิดพลาด
		
Invalid price
		Input Text                  userstory_name              As a user, I want to update profile. 6
        Input Text                  userstory_price             -1
        Input Text                  userstory_priority          13
        Click Button                บันทึก
		Page Should Contain         เกิดข้อผิดพลาด
		


