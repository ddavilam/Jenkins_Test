*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

Resource  ./Variables.robot

*** Keywords ***

Abrir Navegador
    ${new_browser} =    get selection from user     Elija su navegador de preferencia   Chrome  Firefox  Opera  Safari  IE
    Open Browser    @{BROWSER}  ${new_browser}
    #maximize browser window

    sleep  5s
    Go To   ${URL}
    sleep  5s

Cerrar Navegador
    Close All Browsers
    sleep  3s
