*** Settings ***
Documentation     Login to the ClinicalKey
Library           SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***



*** Test Cases ***
Login with instCode 999
    Common.Begin Web Test
    Common.Load Website
    Login as inst 999
    End Web Test
Login with instCode Test-123456
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    End Web Test

Login with instCode 767
    Common.Begin Web Test
    Common.Load Website
    Login as inst 767
    End Web Test

*** Keywords ***
