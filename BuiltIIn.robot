*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test title
    Log to console      message
    #Pass execution      message
    Log to console      end

    &{dic}=     Create Dictionary       abc=1       cde=2
    Log many      ${dic.cde}

    @{list}=        create list        hoc      sinh      lop       2

    Log to console      ${list}