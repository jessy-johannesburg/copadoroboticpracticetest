*** Settings ***
Library            QWeb
Suite Setup        OpenBrowser                 about:blank    chrome

*** Variables ***
${PARABANK_URL}    https://parabank.parasoft.com/parabank/index.htm

*** Test Cases ***
Login to Parabank application
[Documentation]        This is login Testcase
[Tags]                 smoke
Goto                ${PARABANK_URL}
ClickText            Register    