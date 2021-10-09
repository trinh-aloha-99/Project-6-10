*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Test title
    #demo change on server
    open browser            https://demoqa.com/       chrome
    maximize browser window
    Execute javascript      window.scrollTo(0, document.body.scrollHeight)
    execute javascript      window.getTitle(
*** Keywords ***
Provided precondition
    Setup system under test
