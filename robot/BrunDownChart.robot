*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${WELCOME URL}    http://localhost/Scrum/login.php 
${DESC}           http://localhost/scrum/summary.php?id=1
${DELAY}    0.02

*** Test Case ***
Open login page
	Open Browser    ${WELCOME URL}    ${BROWSER}
	Location Should Be    ${WELCOME URL}

Input username and password of scrum master
	Input Text         username      scrum
	Input Password     password      123
	Click Element                    xpath: //*[contains(text(), "LOG IN")]
	Click Element                    xpath: //*[contains(text(), "PRODUCT BACKLOG")]

	Go to    ${DESC}
	
Check detail
	Location Should Be               ${DESC}
	Title Should Be                  Scrum Board
	Page Should Contain              รายละเอียดของ Burn Down Chart