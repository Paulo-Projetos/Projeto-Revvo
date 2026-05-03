*** Settings ***
Library    SeleniumLibrary              
Resource   variables.robot          

*** Keywords ***
Pressionar Tab Repetidas Vezes
    [Arguments]    ${quantidade}
    FOR    ${i}    IN RANGE    ${quantidade}
        Press Keys    None    TAB
        Sleep    0.3s
    END
Fazer Logout
    Run Keyword And Ignore Error    Go To    https://builderstudio-qa-prod.smartlms.com.br/
    Run Keyword And Ignore Error    Wait Until Element Is Visible    css=button[data-cy="user-menu"]    5s
    Run Keyword And Ignore Error    Click Element    css=button[data-cy="user-menu"]
    Run Keyword And Ignore Error    Wait Until Element Is Visible    xpath=//a[contains(.,'Sair') or contains(.,'Logout')]    5s
    Run Keyword And Ignore Error    Click Element    xpath=//a[contains(.,'Sair') or contains(.,'Logout')]
Encerrar Sessao de Teste
    Run Keyword And Ignore Error    Fazer Logout
    Run Keyword And Ignore Error    Delete All Cookies
    Run Keyword And Ignore Error    Execute Javascript    window.localStorage.clear();
    Run Keyword And Ignore Error    Execute Javascript    window.sessionStorage.clear();
    Close Browser


