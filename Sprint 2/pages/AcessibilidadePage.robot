*** Settings ***
Library    SeleniumLibrary              
Resource   ../resources/variables.robot
Resource   ../resources/common.robot          

*** Keywords ***
Entao sou direcionado para o painel de acessibilidade
    Wait Until Element Is Visible    id=a11y-panel-title    30s
    Element Text Should Be           id=a11y-panel-title    Acessibilidade
Quando aciono o botao Alto Contraste via teclado
    Wait Until Element Is Visible    css=button[data-a11y-action="toggle-contrast"]    30s
    Set Focus To Element    css=button[data-a11y-action="toggle-contrast"]
    Press Keys    None    SPACE
Entao o Alto Contraste esta ativado
    Wait Until Element Is Visible
    ...    css=button[data-a11y-action="toggle-contrast"]
    ...    30s
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-contrast"]
    ...    aria-pressed
    ...    true
    ${classe}=    Get Element Attribute
    ...    css=button[data-a11y-action="toggle-contrast"]
    ...    class
    Should Contain    ${classe}    is-active
E clico no botao Alto Contraste
    Wait Until Element Is Visible    xpath=//span[normalize-space(.)='Alto contraste']    30s
    Click Element    xpath=//span[normalize-space(.)='Alto contraste']
Entao o Alto Contraste esta Desativado
    Element Attribute Value Should Be
...    css=button[data-a11y-action="toggle-contrast"]
...    aria-pressed
...    false
Quando aumento o tamanho do texto via teclado
    Wait Until Element Is Visible    id=a11y-font-scale    30s
    ${valor_antes}=    Get Element Attribute    id=a11y-font-scale    aria-valuenow
    Set Test Variable    ${VALOR_FONTE_ANTES}    ${valor_antes}
    Set Focus To Element    id=a11y-font-scale
    Alterar Tamanho da Fonte    ARROW_RIGHT    3
    Sleep    1s
Entao o tamanho do texto esta aumentado
    ${valor_depois}=    Get Element Attribute    id=a11y-font-scale    aria-valuenow
    Log To Console    Fonte antes: ${VALOR_FONTE_ANTES} | Fonte depois: ${valor_depois}
    Should Be True    ${valor_depois} > ${VALOR_FONTE_ANTES}
Quando reduzo o tamanho do texto via teclado
    ${valor_antes}=    Get Element Attribute
    ...    id=a11y-font-scale
    ...    aria-valuenow
    Set Test Variable    ${VALOR_FONTE_ANTES}    ${valor_antes}
    Set Focus To Element    id=a11y-font-scale
    Alterar Tamanho da Fonte    ARROW_LEFT    3
Entao o tamanho do texto esta reduzido
    ${valor_depois}=    Get Element Attribute    id=a11y-font-scale    aria-valuenow
    Log To Console    Fonte antes: ${VALOR_FONTE_ANTES} | Fonte depois: ${valor_depois}
    Should Be True    ${valor_depois} < ${VALOR_FONTE_ANTES}
Quando clico no botao Acessibilidade para encerrar
    Wait Until Element Is Visible    css=i.bi-universal-access    20s
    Click Element    css=i.bi-universal-access
Alterar Tamanho da Fonte
    [Arguments]    ${direcao}    ${quantidade}
    FOR    ${i}    IN RANGE    ${quantidade}
        Press Keys    id=a11y-font-scale    ${direcao}
        Sleep    0.3s
    END
E confirmo a existencia do botao Acessibilidade
    Wait Until Element Is Visible    css=i.bi-universal-access    30s
    Element Should Be Visible       css=i.bi-universal-access
E aciono o botao Acessibilidade via teclado
    [Arguments]    ${quantidade_tabs}=9
    Wait Until Element Is Visible    css=i.bi-universal-access    30s
    Element Should Be Visible        css=i.bi-universal-access
    Sleep    1s
    Pressionar Tab Repetidas Vezes    ${quantidade_tabs}
    Press Keys    None    ENTER
    Sleep    1s
E aciono o botao Acessibilidade via teclado bloco 4
    [Arguments]    ${quantidade_tabs}=13
    Wait Until Element Is Visible    css=i.bi-universal-access    30s
    Element Should Be Visible       css=i.bi-universal-access
    Sleep    1s
    Pressionar Tab Repetidas Vezes    ${quantidade_tabs}
    Press Keys    None    ENTER
    Sleep    1s
E aciono o botao Acessibilidade via teclado bloco 4 para encerrar
    [Arguments]    ${quantidade_tabs}=26
    Pressionar Tab Repetidas Vezes    ${quantidade_tabs}
    Press Keys    None    ENTER
    Sleep    1s

E posiciono o foco no recurso Escala de Cinza
    Pressionar Tab Repetidas Vezes    3
    Sleep    0.5s
Quando aciono o recurso Escala de Cinza
    Wait Until Element Is Visible    css=button[data-a11y-action="toggle-grayscale"]    30s
    Set Focus To Element            css=button[data-a11y-action="toggle-grayscale"]
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Escala de Cinza esta ativo
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-grayscale"]
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s
Quando aciono o recurso Sublinhar Links
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Sublinhar Links foi acionado
    Element Attribute Value Should Be
    ...    xpath=//span[normalize-space(.)='Sublinhar links']/ancestor::button
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s
Quando aciono o recurso Fonte Legivel
    #Press Keys    None    SPACE
    #Sleep    1s
    Wait Until Element Is Visible
    ...    css=button[data-a11y-action="toggle-readable-font"]
    ...    30s
    Set Focus To Element
    ...    css=button[data-a11y-action="toggle-readable-font"]
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Fonte Legivel esta ativo
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-readable-font"]
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s

Quando aciono o recurso Cursor maior
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Cursor maior esta ativo
    Element Attribute Value Should Be
    ...    xpath=//span[normalize-space(.)='Cursor maior']/ancestor::button
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s


Quando aciono o recurso Mascara de Leitura
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Mascara de Leitura esta ativa
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-reading-mask"]
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s


Quando aciono o recurso Espacamento de Texto
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Espacamento de Texto esta ativo
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-text-spacing"]
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s

Quando aciono o recurso Ocultar Imagens
    Press Keys    None    SPACE
    Sleep    1s
Entao o recurso Ocultar Imagens esta ativo
    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-hide-images"]
    ...    aria-pressed
    ...    true
    Press Keys    None    TAB
    Sleep    0.5s

Quando aciono o recurso Resetar Configuracoes
    Press Keys    None    ENTER
    Sleep    1s

Entao os recursos de acessibilidade foram resetados
    Run Keyword And Ignore Error
    ...    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-grayscale"]
    ...    aria-pressed
    ...    false
    Run Keyword And Ignore Error
    ...    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-readable-font"]
    ...    aria-pressed
    ...    false
    Run Keyword And Ignore Error
    ...    Element Attribute Value Should Be
    ...    css=button[data-a11y-action="toggle-text-spacing"]
    ...    aria-pressed
    ...    false
    Log To Console    Reset de configurações validado.

Quando aciono o botao Proxima Pagina apos reset de configuração
    Sleep    2s
    Pressionar Tab Repetidas Vezes    11
    Press Keys    None    ENTER
    Sleep    4s
Entao sou direcionado para a pagina seguinte e valido a existencia do botao Acessibilidade CT026
    Run Keyword And Ignore Error    Unselect Frame
    ${iframe_existe}=    Run Keyword And Return Status
    ...    Page Should Contain Element    css=iframe.preview-iframe
    IF    ${iframe_existe}
        Select Frame    css=iframe.preview-iframe
    END
    Wait Until Keyword Succeeds
    ...    60s
    ...    1s
    ...    Page Should Contain Element
    ...    css=i.bi-universal-access
    Element Should Be Visible    css=i.bi-universal-access
