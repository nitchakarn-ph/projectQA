*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}      http://localhost/Scrum/login.php 
${ACTION_SPRINT}    http://localhost/Scrum/action_sprint.php
${INDEX}            http://localhost/Scrum/index.php
${BACKLOG_ITEM}     http://localhost/Scrum/backlog_item.php
${ISSUES}           http://localhost/Scrum/action_issues.php?id=1
${ADD_ISSUES}       http://localhost/Scrum/add_issues.php?id=1
${DESC}             http://localhost/Scrum/desc_sprint.php?id=1
${TEAM}             http://localhost/Scrum/action_team.php
${DELAY}    0.02

*** Test Case ***
Open login page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Input username and password of scrum master
	Input Text         username    scrum
	Input Password     password    123
	Click Element                  xpath: //*[contains(text(), "LOG IN")]
	Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]
	
Action_sprint page
	Location Should Be    ${BACKLOG_ITEM}
	Title Should Be       Scrum Board
	
	Go To                 ${TEAM}
	
Input team name
	Location Should Be     ${TEAM}
	Title Should Be        Scrum Board
	Input Text             team_name     Android Dev 
	Click Button           เพิ่ม Team Development
	Page Should Contain    สร้างสำเร็จ
	
Not Input team name
	Location Should Be    ${TEAM}
	Title Should Be       Scrum Board
	Click Button          เพิ่ม Team Development
	
Delete team name
	Location Should Be    ${TEAM}
	Title Should Be       Scrum Board
	Click button          button
	Click Element         xpath: //*[contains(text(), "ลบ")]
	Alert Should Be Present    Are you sure? 
	