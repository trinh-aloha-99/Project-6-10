*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Test Cases ***
LoginTestcase
        set selenium speed      0.5
        #open the browser  main
        open browser      https://demoqa.com/       chrome
        maximize browser window

        # demo conflict
        # erro
        execute javascript      window.scrollTo(0,500)
        click element           //h5[text()='Alerts, Frame & Windows']

        execute javascript      window.scrollTo(0,500)
        click element            //span[text()='Alerts']

        click element           //button[@id='confirmButton']
        #verify hiển thị alert và eccept alert
        #alert should be present     Do you confirm action?
        #click OK và get nội dung alert
        ${message}=         handle alert                ACCEPT
        log to console      ${message}
        #verify nội dung element
        element text should be      //span[@id='confirmResult']         You selected Ok

        click element               //button[@id='promtButton']
        #nhập string vào alert
        input text into alert        your name
        #verify nội dung element
        element text should be      //span[@id='promptResult']          You entered your name









        #execute javascript      window.scrollTo(0,500)
        #click element           //h5[text()='Elements']
        #click element           //span[text()='Check Box']
        #click element           //label[@for='tree-node-home']
        #${check}         get element attribute      //input[@id='tree-node-home']       checked
        #Log to Console          ${check}
