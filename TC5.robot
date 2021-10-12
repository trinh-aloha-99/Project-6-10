*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test title
    #demo change on server
    #open browser            https://demoqa.com/       chrome
    #maximize browser window
    #Execute javascript      window.scrollTo(0, document.body.scrollHeight)

    NoiTenTheo "separator"
    NoiTenTheo ""
    

*** Keywords ***
Catenate1
    # ham noi Catenate
    ${name}=    catenate    Trinh   Ta
    Log to Console      ${name}
Catenate2
    ${name1}=       Catenate        SEPARATOR=      Trinh     ta
    Log To Console      ${name1}

NoiTenTheo "${key}"
    run keyword if  '${key}'==''    Catenate1
    run keyword if  '${key}'=='separator'   Catenate2

Input "${text}" Element Text "${element}"
    input text      ${element}      ${text}







