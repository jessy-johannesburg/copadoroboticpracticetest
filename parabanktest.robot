*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser    about:blank    chrome

*** Variables ***
${PARABANK_URL}        https://parabank.parasoft.com/parabank/index.htm
${USERNAME}            copadouser1
${PASSWORD}            copadouser3

*** Test Cases ***
Login to Parabank Application
    [Documentation]    This is login Testcase
    [Tags]             smoke

    GoTo               ${PARABANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!

    TypeText           First Name     Copado
    TypeText           Last Name      Traning
    TypeText           Address        Midway mews
    TypeText           City           Johannesburg
    TypeText           State          Gauteng
    TypeText           Zip Code       1686
    TypeText           Phone          0658923455
    TypeText           SSN            456123365655

    TypeText           Username       ${USERNAME}    anchor=SSN
    TypeText           Password       ${PASSWORD}    anchor=Confirm
    TypeText           Confirm        ${PASSWORD}

    ClickText          REGISTER       anchor=Confirm

Opening New Account
    Login To Parabank
    Sleep              15s
    ClickText          Open New Account    anchor=Account Services

*** Keywords ***
Login To Parabank
    GoTo               ${PARABANK_URL}
    VerifyText         Customer Login
    TypeText           Username       ${USERNAME}    anchor=Customer Login
    Sleep              15s
    TypeText           Password       ${PASSWORD}    anchor=Customer Login
    Sleep              15s
    ClickText          LOG IN         anchor=Forgot login info?