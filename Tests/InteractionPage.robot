*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***
${interactionlink}  xpath=  //*[@id="MainContents"]/div[2]/div[2]/div[3]/a
${tab1drug1}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvWestMedlistItem_ctrl0_hypListItem"]
${interactionsearchbox}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_txtsearhh"]
${firstterm}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCOcontent_ctrl0_selectimg"]
${secondterm}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCOcontent_ctrl1_selectimg"]
${thirdterm}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCOcontent_ctrl2_selectimg"]
${searchinteraction}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_divsecfooter"]
${apiresulturl}  https://ckchina.uat-hs.com/DrugAPIResult.aspx

${searcheddruglist}  xpath=  //*[@id="MainContents"]/div/table[2]/tbody/tr/td



*** Test Cases ***


Click term on drug search page
    [Documentation]  Click term 抗阿米巴药 on drug search page, user should redirected to search results page
    [Tags]  drugsearch
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    Click link  ${interactionlink}
    Wait until page contains  相互作用
    Click Element  ${interactionsearchbox}
    input text  ${interactionsearchbox}  a
    Press Key  ${interactionsearchbox}  \\13
    sleep  3s
    Click link  ${firstterm}
    wait until page contains  已添加1种药品
    input text  ${interactionsearchbox}  b
    Press Key  ${interactionsearchbox}  \\13
    sleep  3s
    Click link  ${secondterm}
    wait until page contains  已添加2种药品
    input text  ${interactionsearchbox}  f
    Press Key  ${interactionsearchbox}  \\13
    sleep  3s
    Click link  ${thirdterm}
    sleep  3s
    wait until page contains  已添加3种药品
    Click Element  ${searchinteraction}
    sleep  3s
    ${apiurl}  Get Location
    log to console  ${apiurl}
    Should Be Equal As Strings  ${apiresulturl}  ${apiurl}
    sleep  2s
    Element Should Be Visible  ${searcheddruglist}






*** Keywords ***
Verify user moved to drug search page
    wait until page contains  药品检索

verify user redirected to search result page
    wait until page contains  检索结果