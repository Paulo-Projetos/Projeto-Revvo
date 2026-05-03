*** Settings ***
Library    SeleniumLibrary              
Resource   ../resources/variables.robot
Resource   ../resources/common.robot          

*** Keywords ***
Entao sou direcionado para a area de trabalho
    Element Text Should Be    xpath=//div[contains(@class,'font-extrabold') and contains(.,'Área de trabalho')]    Área de trabalho
Quando acesso o projeto Learn 360 via teclado
    Wait Until Page Contains    Área de trabalho    30s
    Sleep    1s
    Pressionar Tab Repetidas Vezes    7
    Press Keys    None    ENTER
Entao sou direcionado para a pagina dos projetos
    Wait Until Element Is Visible    xpath=//div[normalize-space(.)='Learn360']    ${timeout}
    Element Text Should Be    xpath=//div[normalize-space(.)='Learn360']    Learn360




