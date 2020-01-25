*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${LOGIN URL}        http://localhost/Scrum/Web%20Application/Scrum/login.php
${INDEX URL}        http://localhost/Scrum/Web%20Application/Scrum/index.php
${BACKLOG URL}      http://localhost/Scrum/Web%20Application/Scrum/backlog_item.php
${PROFILE URL}      http://localhost/Scrum/Web%20Application/Scrum/profiles.php
${API URL}          http://localhost/Scrum/Web%20Application/Scrum/api/
${DELAY}    0.02


*** Test Case ***

Click Button Product Backlog Of Product Owner
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Element         xpath: //*[contains(text(), "LOG IN")]
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board
	
    Click Element                  xpath: //*[contains(text(), "PRODUCT BACKLOG")]        
    Location Should Contain        http://localhost/Scrum/Web%20Application/Scrum/backlog_item.php
    Title Should Be                Scrum Board
    Wait Until Page Contains       แก้ไข Product Backlog
    Close Browser

Click Menu Choose Product Backlog Item
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Element         xpath: //*[contains(text(), "LOG IN")]
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Product Backlog items")]
	Location Should Contain        ${BACKLOG URL}
    Title Should Be                Scrum Board
    Wait Until Page Contains        แก้ไข Product Backlog
    Close Browser
	
Click Menu Choose Profile
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Element         xpath: //*[contains(text(), "LOG IN")]
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Profile")]
	Location Should Contain        ${PROFILE URL}
    Title Should Be                Scrum Board
    Wait Until Page Contains        erza scarlet
    Close Browser
	
Click Menu Choose API
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Element         xpath: //*[contains(text(), "LOG IN")]
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "API")]
	Location Should Contain        ${API URL}
    Title Should Be                Scrum Board
	Wait Until Page Contains        Comments
    Close Browser
	
Click Menu Choose Logout
    Open Browser          ${LOGIN URL}    ${BROWSER}
    Location Should Be    ${LOGIN URL}
    Input Text            username        erza
    Input Password        password        123
    Click Element         xpath: //*[contains(text(), "LOG IN")]
    Location Should Contain    ${INDEX URL}
    Title Should Be            Scrum Board

    Click Element                  class:dropdown
    Click Element                  xpath: //*[contains(text(), "Logout")]
	Location Should Contain        ${INDEX URL}
    Title Should Be                Scrum Board
	Wait Until Page Contains        LOG IN
    Close Browser
	
    