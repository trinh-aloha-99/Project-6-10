*** Settings ***
Library         SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
Testcase03
    Set Selenium Speed    0.5
    # mở browser 1
    # demo change 
    Open Browser    https://demoqa.com/alerts      chrome
    Maximize Browser Window

    Show and handle alert        DISMISS
    
    ${result}=     Handle massage alert       //button[@id='confirmButton']        DISMISS
    Element Text Should Be    //span[@id='confirmResult']    You selected ${result}
    
*** Keywords ***
Show and Accept alert
    Click Element    //button[@id='confirmButton']
    Handle Alert        ACCEPT
Show and Cancle alert
    Click Element    //button[@id='confirmButton']
    Handle Alert        DISMISS

Show and Verify alert
    Click Element    //button[@id='confirmButton']
    Alert Should Be Present    Do you confirm action?      LEAVE
Show and Leve alert
    Click Element    //button[@id='confirmButton']
    Handle Alert        LEAVE
Show and handle alert
    [Arguments]            ${action}
    Run Keyword If    '${action}'=='LEAVE'    Show and Leve alert
    Run Keyword If    '${action}'=='DISMISS'    Show and Cancle alert
    Run Keyword If    '${action}'=='ACCEPT'    Show and Accept alert

Handle massage alert
    [Arguments]      ${location}        ${action}
    Click Element    ${location}
    Handle Alert       ${action}
    IF    '${action}'=='ACCEPT'
        ${result}     Set Variable           OK
    ELSE
        ${result}       Set Variable        Cancel
    END
    [Return]      ${result}

