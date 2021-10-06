*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTestcase
        set selenium speed      0.5
        # open my browser
        open browser      https://demoqa.com/       chrome
        maximize browser window

        execute javascript      window.scrollTo(0,500)
        click element           //h5[text()='Elements']
        execute javascript      window.scrollTo(0,document.body.scrollHeight)
        click element        //div[text()='Forms']
        click element   //span[text()='Practice Form']

        input text          //input[@id='subjectsInput']            Physic
        #click Enter
        #press key      //input[@id='subjectsInput']                \\13
        #\\13
        press keys         //input[@id='subjectsInput']           ENTER




       execute javascript      window.scrollTo(0,600)
       click element       //label[@for='hobbies-checkbox-3']

        #click element       //input[@id='uploadPicture']
        choose file         //input[@type='file']        D:/document.txt

        input text           //input[@id='react-select-3-input']                NCR
        # gửi phím enter
        press key            //input[@id='react-select-3-input']              \\13







