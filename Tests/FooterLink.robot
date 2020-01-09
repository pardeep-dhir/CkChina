*** Settings ***
Library  Selenium2Library
Resource  ../Resources/Common.robot
Library  BuiltIn
Library  String



*** Variables ***
${aboutels}  xpath=  //a[@href="/About.aspx"]
${privacypolicy}  xpath=  //a[@href="https://www.elsevier.com/legal/privacy-policy-zh-cn"]
${termsofuse}  xpath=  //a[@href="https://www.elsevier.com/legal/elsevier-website-terms-and-conditions"]
${contactus}  xpath=  //a[@href="/Contactus.aspx?RetnUrl=2f"]

*** Test Cases ***

#Click about us page in footer section
#    [Documentation]  Click about us page link 关于 Elsevier in footer section
#    [Tags]  footerlink
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    sleep  5s
#    wait until page contains  关于 Elsevier
#    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
#    sleep  2s
#    Click link  ${aboutels}
#    sleep  5s
#    Select window  url=https://ckchina.uat-hs.com/About.aspx
#    wait until page contains  临床精钥中的循证医学诊疗信息全部来源于与爱思唯尔


#Click Privacy policy link in footer
#    [Documentation]  Click about us page link 隐私政策 in footer section
#    [Tags]  footerlink
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    sleep  5s
#    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
#    sleep  2s
#    Click link  ${privacypolicy}
#    sleep  5s
#    Select window  title=Privacy Policy ZH-CH
#    wait until page contains  隐私政策


#Click Terms of use link in footer
#    [Documentation]  Click about us page link 使用条款 in footer section
#    [Tags]  footerlink
#    Common.Begin Web Test
#    Common.Load Website
#    Login as inst Test-123456
#    sleep  5s
#    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
#    sleep  2s
#    Click link  ${termsofuse}
#    sleep  5s
#    Select window  title=Elsevier Website Terms & Conditions
#    wait until page contains  Terms and conditions

Click Terms of use link in footer
    [Documentation]  Click about us page link 联系我们 in footer section
    [Tags]  footerlink
    Common.Begin Web Test
    Common.Load Website
    Login as inst Test-123456
    sleep  5s
    Execute JavaScript  window.scrollTo(0, document.body.scrollHeight)
    sleep  2s
    Click link  ${contactus}
    sleep  5s
    Select window  url=https://ckchina.uat-hs.com/Contactus.aspx?RetnUrl=2f
    wait until page contains  获取产品讯息和用户指南

*** Keywords ***
Verify user moved to drug search page
    wait until page contains  药品检索

verify user redirected to search result page
    wait until page contains  检索结果