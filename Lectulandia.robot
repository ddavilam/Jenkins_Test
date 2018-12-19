*** Settings ***
Library  SeleniumLibrary
Library  Dialogs

Resource  ./Recursos/Soporte/Acceso.robot
Resource  ./Recursos/Soporte/Variables.robot
Resource  ./Recursos/Request.robot
Resource  ./Recursos/Tests.robot

Test Setup  Abrir Navegador
Test Teardown  Cerrar Navegador

*** Test Cases ***
Lectulandia Jenkins
    [Documentation]  Prueba rapida de jenkins para automatizar tests
    [Tags]  Lectujenkins
    Tests.Test Jenkins