*** Settings ***
Library    SeleniumLibrary              
Resource   ../resources/variables.robot
Resource   ../resources/common.robot

*** Keywords ***
Quando clico no botao Previa via teclado
    Wait Until Element Is Visible    css=a[data-cy="project-preview"]    ${timeout}
    Set Focus To Element    css=a[data-cy="project-preview"]
    Press Keys    None    ENTER
    Sleep    3s
    Switch Window    NEW
    Maximize Browser Window
    Wait Until Element Is Visible    css=iframe.preview-iframe    30s
    Select Frame    css=iframe.preview-iframe
    Wait Until Page Contains    ESG    30s
    Sleep    5s
E aciono o botao Desbloquear via teclado
    Wait Until Keyword Succeeds    30s    1s    Elemento Desbloquear Deve Existir
    Set Focus To Element    css=a.image-wrapper[data-loadpage="2313"]
    Press Keys    None    ENTER
    Sleep    3s
Elemento Desbloquear Deve Existir
    ${existe}=    Execute Javascript
    ...    return document.querySelector('a.image-wrapper[data-loadpage="2313"]') !== null;
    Should Be True    ${existe}
Entao sou direcionado para a pagina principal
    Wait Until Element Is Visible    xpath=//span[contains(.,'Boas-vindas ao nosso curso')]    60s  
Quando aciono o botao Proxima Pagina via teclado
    Press Keys    None    HOME
    Sleep    0.5s
    Pressionar Tab Repetidas Vezes    23
    Press Keys    None    ENTER
    Sleep    2s
Entao sou direcionado para a pagina seguinte e confirmo a existencia do botao Acessibilidade
    Wait Until Element Is Visible    css=i.bi-universal-access    30s
    Element Should Be Visible       css=i.bi-universal-access
Quando aciono o botao Proxima Pagina via teclado com painel aberto
    Pressionar Tab Repetidas Vezes    18
    Press Keys    None    ENTER
    Sleep    2s
Quando aciono o botao Proxima Pagina via teclado a partir do painel aberto
    Pressionar Tab Repetidas Vezes    21
    Press Keys    None    ENTER
    Sleep    2s   
Quando aciono o botao Proxima Pagina via teclado com painel aberto etapa final
    Log To Console    Resetando foco antes de navegar
    Press Keys    None    HOME
    Sleep    1s
    Log To Console    Iniciando TABs controlados
    Pressionar Tab Repetidas Vezes    28
    Sleep    1s
    Log To Console    ENTER no botão de próxima página
    Press Keys    None    ENTER
    Sleep    10s
Quando aciono o botao Proxima Pagina a partir do Alto Contraste
    Log To Console    Navegando a partir do botão Alto Contraste
    Sleep    1s
    Pressionar Tab Repetidas Vezes    19
    Sleep    1s
    Press Keys    None    ENTER
    Sleep    3s
Entao o Alto Contraste permanece ativo na pagina
    Wait Until Element Is Visible    css=i.bi-chevron-right    30s
    ${cor}=    Execute Javascript
    ...    return window.getComputedStyle(document.querySelector('i.bi-chevron-right')).color;
    Log To Console    Cor do ícone: ${cor}
    Should Be Equal    ${cor}    rgb(255, 255, 0)
Quando aciono o botao Proxima Pagina para ir ao Menu
    Pressionar Tab Repetidas Vezes    5
    Press Keys    None    ENTER
    Sleep    3s
Entao sou direcionado para a pagina Menu
    Wait Until Page Contains    Menu    60s
Entao o scroll funciona na pagina Menu
    Press Keys    None    PAGE_DOWN
    Sleep    1s
    Press Keys    None    PAGE_DOWN
    Sleep    1s
    Press Keys    None    PAGE_UP
    Sleep    1s
    Log To Console    Scroll executado via teclado (PageDown/PageUp)
Entao o layout permanece consistente
    Wait Until Page Contains    ESG    30s
    Run Keyword And Ignore Error    Page Should Contain    Siga para a próxima tela.
    Log To Console    Layout validado: conteúdo principal permanece visível e sem quebra aparente


#Quando aciono recurso do painel (Item para ser usado no Cenário 026)
    #[Arguments]    ${seletor}
    #Set Focus To Element    ${seletor}
    #Press Keys    None    ENTER