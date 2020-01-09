*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***
${diseaselink}  xpath=  //*[@id="aspnetForm"]/div[3]/div[2]/a
${disease1}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl0_lvCOTitle_ctrl0_hypTitle"]
${disease2}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl1_lvCOTitle_ctrl0_hypTitle"]
${disease3}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl2_lvCOTitle_ctrl0_hypTitle"]
*** Test Cases ***
#View disease list page
#    [documentation]  View disease list page
#    [Tags]  disease
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    sleep  2s
#    Wait until page contains  疾病浏览

#View detail of disease 阿尔茨海默病 from disease list page
#    [Documentation]  Click term 阿尔茨海默病 View disease deta in disease list and verify detail page open
#    [Tags]  disease
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    ${diseasetext}  Get Text  ${disease1}
#    log to console  ${diseasetext}
#    Click link  ${disease1}
#    sleep  2s
#    wait until page contains  ${diseasetext}

#View detail of disease 阿片中毒 from disease list page
#    [Documentation]  Click term 阿片中毒 View disease deta in disease list and verify detail page open
#    [Tags]  diseaseClick link  ${disease1}
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    ${diseasetext}  Get Text  ${disease2}
#    log to console  ${diseasetext}
#    Click link  ${disease2}
#    sleep  2s
#    wait until page contains  ${diseasetext}

#View detail of disease 阿片戒断 from disease list page
#    [Documentation]  Click term 阿片戒断 View disease deta in disease list and verify detail page open
#    [Tags]  disease
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    ${diseasetext}  Get Text  ${disease3}
#    log to console  ${diseasetext}
#    Click link  ${disease3}
#    sleep  2s
#    wait until page contains  ${diseasetext}


On disease detail page, click home link
    [Documentation]  On disease detail page, click home link. User will redirected to home page
    [Tags]  disease
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    Click link  ${diseaselink}
    sleep  2s
    Click link  ${disease1}
    sleep  2s
    click link



*** Keywords ***
