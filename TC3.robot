*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
Testcase03
    Set Selenium Speed    0.5
    # mở browser 1
    Open Browser    https://www.google.com      chrome
    Maximize Browser Window
    # lấy location của browser 1
    ${loc}=     Get Location
    Log To Console    ${loc}
    # Đi tới browser 2
    #Open Browser       http://www.bing.com      chrome
    Go To               http://www.bing.com
    Maximize Browser Window
    #lấy loction của trình duyệt 2
    ${loc1}=    Get Location
    Log To Console    ${loc1}
    # click but back, trở về browser 1
    Go Back
    ${loc2}=    Get Location
    Log To Console    ${loc2}


