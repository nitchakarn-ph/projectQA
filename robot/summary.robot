*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}    http://localhost/Scrum/Web%20Application/Scrum/login.php 
${ACTION_SPRINT}    http://localhost/Scrum/Web%20Application/Scrum/action_sprint.php
${INDEX}    http://localhost/Scrum/Web%20Application/Scrum/index.php
${BACKLOG_ITEM}    http://localhost/Scrum/Web%20Application/Scrum/backlog_item.php
${ISSUES}    http://localhost/Scrum/Web%20Application/Scrum/action_issues.php?id=1
${ADD_ISSUES}     http://localhost/Scrum/Web%20Application/Scrum/add_issues.php?id=1
${DESC}     http://localhost/Scrum/Scrum/Web%20Application/desc_sprint.php?id=1
${BURN_CART}     http://localhost/Scrum/Web%20Application/Scrum/summary.php?id=1
${COMMENT}    http://localhost/Scrum/Web%20Application/Scrum/comment_issues.php?id=1&sprint_id=1
${DELAY}    0.02

*** Test Case ***
Open login page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Input username and password of scrum
	Input Text    username    scrum
	Input Password     password    123
	Click Element         xpath: //*[contains(text(), "LOG IN")]
	
Index page
	Location Should Be    ${INDEX}
	Title Should Be    Scrum Board
	Click Element         xpath: //*[contains(text(), "PRODUCT BACKLOG")]
	
Action_sprint page
	Location Should Be    ${BACKLOG_ITEM}
	Title Should Be    Scrum Board
	Go To                  ${ACTION_SPRINT}
	
Burn Down Chart
	Go To                  http://localhost/Scrum/Web%20Application/Scrum/summary.php?id=1
	Title Should Be           Scrum Board
	Wait Until Page Contains                ค่าของการ Estimate
	Close Browser