*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***
${drugsearchlink}  xpath=  //*[@id="aspnetForm"]/div[3]/div[3]/a
${tab1drug1}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvWestMedlistItem_ctrl0_hypListItem"]
${tab2chinesemedicine}  xpath=  //*[@id="hypChineseMed"]
${chinesmed}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvChineseMedlistItem_ctrl0_hypListItem"]
${chinesemedsearchterm}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvClassification_ctrl1_hypListItem"]
${drugsearchedterm}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvClassification_ctrl3_hypListItem"]
${disease2}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl1_lvCOTitle_ctrl0_hypTitle"]
${disease3}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl2_lvCOTitle_ctrl0_hypTitle"]
*** Test Cases ***
#View drug search page
#    [Documentation]  On home page, click drug search link 药品 at bottom of page
#    [Tags]  drugsearch
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${drugsearchlink}
#    sleep  2s
#    wait until page contains  药品检索


#Drug search page, click term "抗病原微生物药物" under Western medicine tab
#    [Documentation]  On drug search page, click term 抗病原微生物药物 under western medicine tab
#    [Tags]  drugsearch
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${drugsearchlink}
#    sleep  2s
#    Wait until page contains  西药
#    Click link  ${tab1drug1}
#    wait until page contains  抗麻风病及抗麻风病反应药
#    Verify user moved to drug search page



#On drug search page, click search term
#    [Documentation]  On drug search page, click search term 检索结果, user redirected to search result page
#    [Tags]  drugsearch
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${drugsearchlink}
#    sleep  2s
#    Wait until page contains  西药
#    Click link  ${tab1drug1}
#    wait until page contains  抗麻风病及抗麻风病反应药
#    click link  ${drugsearchedterm}
#    verify user redirected to search result page

#Click on Chinese medicine tab
#    [Documentation]  On drug search page, click on Chinese medicine tab
#    [Tags]  drugsearch
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${drugsearchlink}
#    sleep  2s
#    Wait until page contains  西药
#    Click link  ${tab2chinesemedicine}
#    wait until page contains  抗寄生虫病药


#Click term 抗寄生虫病药 under Chinese medicine tab
#    [Documentation]  Click term 抗寄生虫病药 under Chinese medicine tab, user should navigate to drug search page
#    [Tags]  drugsearch
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${drugsearchlink}
#    Wait until page contains  西药
#    Click link  ${tab2chinesemedicine}
#    wait until page contains  抗寄生虫病药
#    sleep  3s
#    click link  ${chinesmed}
#    Verify user moved to drug search page

Click term on drug search page
    [Documentation]  Click term 抗阿米巴药 on drug search page, user should redirected to search results page
    [Tags]  drugsearch
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    Click link  ${drugsearchlink}
    Wait until page contains  西药
    Click link  ${tab2chinesemedicine}
    wait until page contains  抗寄生虫病药
    sleep  3s
    click link  ${chinesmed}
    Verify user moved to drug search page
    click link  ${chinesemedsearchterm}
    verify user redirected to search result page


*** Keywords ***
Verify user moved to drug search page
    wait until page contains  药品检索

verify user redirected to search result page
    wait until page contains  检索结果