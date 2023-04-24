*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Begin Web Test
    #Initialize Selenium
    #set selenium speed       .2s
    set selenium timeout     10s
    open browser             about:blank       ${BROWSER}

    # resize browser window for recording
    set window position      x=341  y=169
    set window size          width=1935  height=1098



End Web Test
     close all browsers