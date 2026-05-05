*** Settings ***

Documentation           New test suite
# You can change imported library to "QWeb" if testing generic web application, not Salesforce.
Library                 QForce 
Suite Setup             Open Browser    about:blank    chrome
Suite Teardown          Close All Browsers

*** Test Cases ***
test1
    [Documentation]    Test Case created using the QEditor

   GoTo   https://www.amazon.com/


amazontest
    [Documentation]    Test Case created using the QEditor

   GoTo   https://www.amazon.com/

