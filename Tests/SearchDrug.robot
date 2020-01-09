*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***
${searchinput}  xpath=  //*[@id="txtSearchPlaceHolder"]
${searchterm1}  xpath=  //a[@href="SearchListing.aspx?SearchText=心房颤动"]
${searchterm2}  xpath=  //a[@href="SearchListing.aspx?SearchText=心力衰竭"]
${searchterm3}  xpath=  //a[@href="SearchListing.aspx?SearchText=糖尿病"]
${searchinputbox}  xpath=  //*[@id="txtSearchText"]
${searchbutton}  css=#callout-search-history > div.row > div.section-search-submit.small-10.columns > img
*** Keywords ***

*** Test Cases ***
#Search Drug
#    [Documentation]  Search Retrieve diseases, symptoms, drugs, more ..
#    [Tags]  SearchDrug
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click Element  ${searchinput}
#    Wait until page contains  心房颤动
#    SLEEP  2s
#    Close Browser
#
#Search by string 心房颤动
#    [Documentation]  Search by using string value 心房颤动
#    [Tags]  searchdrug
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click Element  ${searchinput}
#    sleep  3s
#    Click link  ${searchterm1}
#    Wait until page contains  疾病主题
#    SLEEP  2s
#    Close Browser
#
#Search by string 心力衰竭
#    [Documentation]  Search by using string value 心力衰竭
#    [Tags]  searchdrug
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click Element  ${searchinput}
#    sleep  3s
#    Click link  ${searchterm2}
#    Wait until page contains  疾病主题
#    SLEEP  2s
#    Close Browser
#
#Search by string 糖尿病
#    [Documentation]  Search by using string value 糖尿病
#    [Tags]  searchdrug
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click Element  ${searchinput}
#    sleep  3s
#    Click link  ${searchterm3}
#    Wait until page contains  疾病主题
#    SLEEP  2s
#    Close Browser

Etner search string 肝性脑病
    [Documentation]  Search by using string value 肝性脑病
    [Tags]  searchdrug
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    Click Element  ${searchinput}
    sleep  3s
    Input Text  ${searchinputbox}  肝性脑病2344
    sleep  2s
    Press Key  ${searchinputbox}  \\13
    sleep  5s
    Wait until page contains  疾病主题
    SLEEP  5s
    Close Browser





