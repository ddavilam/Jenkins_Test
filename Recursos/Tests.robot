*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

Resource  ./Soporte/Variables.robot
Resource  ./Request.robot

Library  ./Soporte/PressEnterKey.py

*** Keywords ***
Test Jenkins
    Request.Login   #Loguear usuario
    sleep  3s

    #Ejecutar busqueda
    Mouse Over  xpath=//*[@id="site-navigation"]/ul/li[6]/form/input    #Ubicar buscador
    Click Element   xpath=//*[@id="site-navigation"]/ul/li[6]/form/input    #Clickear   buscador
    sleep  3s
    Input Text  xpath=//*[@id="site-navigation"]/ul/li[6]/form/input  ${BUSQUEDA}  #Ingresar texto de búsqueda
    sleep  3s
    Press Key   xpath=//*[@id="site-navigation"]/ul/li[6]/form/input    \\13  #Presiona la tecla enter
    sleep  3s
    Mouse Down  css=#post-50573  #Un libro cualquiera
    sleep  3s
    Mouse Over  css=#post-46826  #Un libro Cualquiera
    Click Element   css=#post-46826  #Un libro cualquiera
    sleep  3s
    Mouse Down  css=#download1  #Botón epub
    sleep  3s

    #Desloguear
    Request.Logout
    sleep  5s
