*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

Resource  ./Soporte/Variables.robot

*** Keywords ***

Login
    Mouse Over  xpath=//*[@id="site-navigation"]/ul/li[3]/a  #Ubicar botón de ingreso
    Click Element   xpath=//*[@id="site-navigation"]/ul/li[3]/a  #Hace click en ingresar
    sleep  3s

    Input Text  xpath=//*[@id="user_login"]   ${USUARIO}    #Ingresando usuario
    sleep  3s
    Input Password  xpath=//*[@id="user_pass"]  ${PASS}     #Ingresando pass
    sleep  3s
    Mouse Over  css=#wp-submit  #Ubicando Botón de acceder
    Click Element   css=#wp-submit  #Ingresar
    sleep  5s

Logout
    Mouse Over  xpath=//*[@id="site-navigation"]/ul/li[4]/a  #Ubicar botón de salir
    Click Element   xpath=//*[@id="site-navigation"]/ul/li[4]/a  #Cerrar sesión
    sleep  5s