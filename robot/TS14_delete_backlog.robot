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
${BURN_CART}        http://localhost/Scrum/summary.php?id=1
${COMMENT}          http://localhost/Scrum/comment_issues.php?id=1&sprint_id=1
${DELETE}           http://localhost/Scrum/delete_sprint.php?id=1
${DELAY}    0.02

*** Test Case ***
Open login page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}
	
Input username and password of scrum master
	Input Text    username    scrum
	Input Password     password    123
	Click Element                    xpath: //*[contains(text(), "LOG IN")]
	Click Element                    xpath: //*[contains(text(), "PRODUCT BACKLOG")]
		
Action_sprint page
	Location Should Be    ${BACKLOG_ITEM}
	Title Should Be       Scrum Board
	Go To                 ${ACTION_SPRINT}
	
Issuse sprint
	Location Should Be    ${ACTION_SPRINT}
	Title Should Be       Scrum Board
	Click button          button
	Click Element         xpath: //*[contains(text(), "ลบ")]
	Alert Should Be Present    Are you sure?