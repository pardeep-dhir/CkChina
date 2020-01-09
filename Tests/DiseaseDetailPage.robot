*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Common.robot

*** Variables ***
${diseaselink}  xpath=  //*[@id="aspnetForm"]/div[3]/div[2]/a
${disease1}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCategory_ctrl0_lvCOTitle_ctrl0_hypTitle"]
${homelink}  xpath=  //*[@id="aspnetForm"]/ul/li[1]/a
${dpbtntopicsearch}  xpath=  //*[@id="aspnetForm"]/ul/li[2]/a
${dptopicsearch}  xpath=  //*[@id="txtHighlight"]
${topicterm}  或神经心理
${highlighteditem}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_lvCOcontent_ctrl0_lvActionItem_ctrl0_pageActionItem"]/div/ul/li[3]/span/span/span/span/span[5]/span/span/mark
${btntableofcontent}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_ucContentMenu_hypToggleChapterMenu"]
${chapterselection}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_ucContentMenu_lvContentMenuList_ctrl2_hypContentMenu"]
${chaptermenu}  xpath=  //*[@id="nav-chapter-menu"]
${chapterelement}  xpath=  //*[@id="MainContents"]/div[2]/span





*** Test Cases ***
#Go to disease detail page
#    [Documentation]  go to disease detail page, user should redirected to correct disease detail page
#    [Tags]  diseasedetail
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    ${diseasetext}  Get Text  ${disease1}
#    log to console  ${diseasetext}
#    Click link  ${disease1}
#    sleep  2s
#    wait until page contains  ${diseasetext}

#On disease detail page, click home link
#    [Documentation]  On disease detail page, click home link. User will redirected to home page
#    [Tags]  diseasedetail
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    sleep  2s
#    Click link  ${disease1}
#    sleep  2s
#    click link  ${homelink}
#    wait until page contains  临床精钥

#click topic search on detail page
#    [Documentation]  Click on topic search link on detail page, search input box will appear.
#    [Tags]  diseasedetail
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    sleep  2s
#    Click link  ${disease1}
#    sleep  2s
#    click link  ${dpbtntopicsearch}
#    Wait Until Element Is Visible  ${dptopicsearch}

#Search some topic keyword on detail page
#    [Documentation]  Click on topic search link on detail page, search input box will appear.Now search some topic keyword
#    [Tags]  diseasedetail
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    Click link  ${diseaselink}
#    sleep  2s
#    Click link  ${disease1}
#    sleep  2s
#    click link  ${dpbtntopicsearch}
#    Wait Until Element Is Visible  ${dptopicsearch}
#    Input text  ${dptopicsearch}  ${topicterm}
#    sleep  2s
#    ${value}=  Get Element Attribute  ${highlighteditem}  data-markjs
#    log to console  value is--> ${value}
#    pass execution if  '${value}'=='True'  log to console  searched item is highlighted


Search table of contents on detail page
    [Documentation]  Click on topic search link on detail page, now search by table of content. Focus should move to selected term
    [Tags]  diseasedetail
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    Click link  ${diseaselink}
    sleep  2s
    Click link  ${disease1}
    sleep  2s
    Click link  ${btntableofcontent}
    sleep  2s
    Set Focus To Element  ${chaptermenu}
    sleep  2s
    Click link  ${chapterselection}
    ${valuetext}=  Get Text  ${chapterelement}
    log to console  ${valuetext}
















*** Keywords ***
