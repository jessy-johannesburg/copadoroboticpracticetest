*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:blank                chrome

*** Variables ***
${PARABANK_URL}        https://parabank.parasoft.com/parabank/index.htm
${BANK_USERNAME}       copadouser06
${BANK_PASSWORD}       copadouser03

*** Test Cases ***
Login to Parabank Application
    [Documentation]    This is login Testcase
    [Tags]             smoke

    GoTo               ${PARABANK_URL}
    ClickText          Register
    VerifyText         Signing up is easy!

    TypeText           First Name                  Copado
    TypeText           Last Name                   Traning
    TypeText           Address                     Midway mews
    TypeText           City                        Johannesburg
    TypeText           State                       Gauteng
    TypeText           Zip Code                    1686
    TypeText           Phone                       0658923455
    TypeText           SSN                         456123365655
    TypeText           Username                    ${BANK_USERNAME}           anchor=SSN
    TypeText           Password                    ${BANK_PASSWORD}           anchor=Confirm
    TypeText           Confirm                     ${BANK_PASSWORD}
    ClickText          REGISTER                    anchor=Confirm

Opening New Account
    [Tags]             smoke
    ClickText          Open New Account            anchor=Account Services
    DropDown           type                        SAVINGS
    DropDown           type                        CHECKING
    DropDown           type                        SAVINGS
    ClickText          OPEN NEW ACCOUNT            anchor=Log Out
    VerifyText         Congratulations
    ClickItem          newAccountId
    DropDown           month                       February
    DropDown           transactionType             Credit
    ClickText          Go
