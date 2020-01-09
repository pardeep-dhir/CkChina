*** Settings ***
Library  Selenium2Library

*** Variables ***
${SiteURL}  https://ckchina.uat-hs.com/
${BROWSER}  Chrome
${loginlink}  xpath=  //*[@id="form1"]/header/div/ul/li[4]/a
${username}==  testdemo@gmail.com
${password}==  123456
${instcode}==  Test-123456
#Institute Code 999
${username999}==  mt003
${password999}==  123456
${instcode999}==  999

#Institute Code 767
${username767}==  simpleuser
${password767}==  123456
${instcode767}==  767

${InputUsername}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_txtLoginID"]
${inputPassword}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_txtPassword"]
${inputInstCode}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_txtInsitution"]
${btnSubmit}  xpath=  //*[@id="ctl00_ctl00_BodyPlaceHolder_MainContentsPlaceHolder_btnLogin2"]

*** Keywords ***
Begin Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

Load Website
    Go to  ${SiteURL}
    wait until page contains  临床精钥

Login as inst Test-123456
    click link  ${loginlink}
    SLEEP  2s
    Input Text  ${InputUsername}  ${username}
    Input Text  ${inputPassword}  ${password}
    Input Text  ${inputInstCode}  ${instcode}
    sleep  2s
    Click link  ${btnSubmit}

Login as inst 999
    click link  ${loginlink}
    SLEEP  2s
    Input Text  ${InputUsername}  ${username999}
    Input Text  ${inputPassword}  ${password999}
    Input Text  ${inputInstCode}  ${instcode999}
    sleep  2s
    Click link  ${btnSubmit}

Login as inst 767
    click link  ${loginlink}
    SLEEP  2s
    Input Text  ${InputUsername}  ${username767}
    Input Text  ${inputPassword}  ${password767}
    Input Text  ${inputInstCode}  ${instcode767}
    sleep  2s
    Click link  ${btnSubmit}

Capture Screen Shot
    Capture Page Screenshot  screenshot-{index}.png

End Web Test
    Close Browser

