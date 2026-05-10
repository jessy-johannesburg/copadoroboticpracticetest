*** Settings ***
Library                QWeb
Suite Setup            OpenBrowser                 about:blank       chrome

*** Variables ***
${PARABANK_URL}        https://parabank.parasoft.com/parabank/index.htm

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
    TypeText           Username                    copadouser        anchor=SSN
    TypeText           Password                    copadouser1       anchor=Confirm
    Typetext           Confirm                     copadouser1
    ClickText          REGISTER                    anchor=Confirm