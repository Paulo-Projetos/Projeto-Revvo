*** Settings ***
Library    SeleniumLibrary              
Resource   ../resources/variables.robot          

*** Keywords ***
Dado que acesso o site
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Go To    https://builderstudio-qa-prod.smartlms.com.br/login
    Wait Until Element Is Visible    css=input[data-cy="login-password-input"]    ${timeout}
    Sleep    2s                             
Quando realizo login via teclado
    Wait Until Element Is Visible    id=maryda7aa2b3238dcfffd20cfde2eccad45demail    ${timeout}
    Set Focus To Element    id=maryda7aa2b3238dcfffd20cfde2eccad45demail
    Press Keys    None    CTRL+A
    Press Keys    None    ${USUARIO}
    Set Focus To Element    css=input[data-cy="login-password-input"]
    Press Keys    None    CTRL+A
    Press Keys    None    ${SENHA}
    Set Focus To Element    css=button[data-cy="login-submit"]
    Press Keys    None    ENTER
    Wait Until Page Contains    Área de trabalho    30s



