*** Settings ***
Library    SeleniumLibrary
Resource   ../pages/LoginPage.robot
Resource   ../pages/HomePage.robot
Resource   ../pages/CursoPage.robot
Resource   ../pages/PreviewPage.robot
Resource   ../pages/AcessibilidadePage.robot
Resource   ../resources/common.robot
Test Teardown    Encerrar Sessao de Teste

*** Test Cases ***
CT-018 Ajuste de Fonte em Diferentes Contextos
    # Bloco 1 - Acesso ao curso
    Dado que acesso o site
    Quando realizo login via teclado
    Entao sou direcionado para a area de trabalho
    Quando acesso o projeto Learn 360 via teclado
    Entao sou direcionado para a pagina dos projetos
    E acesso o curso Fundamentos do ESG via teclado
    Entao sou direcionado para a pagina do curso
    
    # Bloco 2 - Página principal após desbloqueio
    Quando clico no botao Previa via teclado
    E aciono o botao Desbloquear via teclado
    Entao sou direcionado para a pagina principal
    E confirmo a existencia do botao Acessibilidade
    E aciono o botao Acessibilidade via teclado    9
    Entao sou direcionado para o painel de acessibilidade

    Quando aumento o tamanho do texto via teclado
    Entao o tamanho do texto esta aumentado
    Quando reduzo o tamanho do texto via teclado
    Entao o tamanho do texto esta reduzido

    # Bloco 3 - Página seguinte
    Quando aciono o botao Proxima Pagina via teclado a partir do painel aberto
    Entao sou direcionado para a pagina seguinte e confirmo a existencia do botao Acessibilidade
    E aciono o botao Acessibilidade via teclado    6
    Entao sou direcionado para o painel de acessibilidade

    Quando aumento o tamanho do texto via teclado
    Entao o tamanho do texto esta aumentado
    Quando reduzo o tamanho do texto via teclado
    Entao o tamanho do texto esta reduzido

    # Bloco 4 - Segunda página seguinte
    Quando aciono o botao Proxima Pagina via teclado com painel aberto
    Entao sou direcionado para a pagina seguinte e confirmo a existencia do botao Acessibilidade
    E aciono o botao Acessibilidade via teclado bloco 4
    Entao sou direcionado para o painel de acessibilidade

    Quando aumento o tamanho do texto via teclado
    Entao o tamanho do texto esta aumentado
    Quando reduzo o tamanho do texto via teclado
    Entao o tamanho do texto esta reduzido
    Quando clico no botao Acessibilidade para encerrar
    Entao o layout permanece consistente
    




