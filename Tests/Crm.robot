*** Settings ***
Documentation    This is some basic info about the whole suite
Resource         ../Resources/Common.robot
Resource         ../Resources/CrmApp.robot
Test Setup       Begin Web Test
Test Teardown    End Web Test

#Run the script
#robot -d results tests/crm.robot
# Differents browser = robot -d results -v BROWSER:edge  tests/Crm.robot

*** Variables ***
${BROWSER} =                chrome
${URL} =                    https://automationplayground.com/crm/
${VALID_LOGIN_EMAIL} =      admin@robotframeworktutorial.com
${VALID_LOGIN_PASSWORD} =   MyPassword!

*** Test Cases ***
Home Page should load
    [Documentation]          Test the home page
    [Tags]                   1001    Smoke   home
    CrmApp.Go to "Home" Page

Should be able to Login With Valid Credentials
    [Documentation]          Test the Login
    [Tags]                   1002    Smoke   Login
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}

Should be able to Log Out
    [Documentation]          Test the Log out
    [Tags]                   1004    Smoke   Logout
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Sign Out

Should be able to add new customer
    [Documentation]          Test adding a new customer!
    [Tags]                   1006    Smoke   Contacts
    CrmApp.Go to "Home" Page
    CrmApp.Login With Valid Credentials     ${VALID_LOGIN_EMAIL}        ${VALID_LOGIN_PASSWORD}
    CrmApp.Add New Customer
    CrmApp.Sign Out



