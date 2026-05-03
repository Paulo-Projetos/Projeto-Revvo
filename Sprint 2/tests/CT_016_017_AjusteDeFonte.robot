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
CT-016-017 Ajuste de Fonte
    Dado que acesso o site
    Quando realizo login via teclado
    Entao sou direcionado para a area de trabalho
    Quando acesso o projeto Learn 360 via teclado
    Entao sou direcionado para a pagina dos projetos
    E acesso o curso Fundamentos do ESG via teclado
    Entao sou direcionado para a pagina do curso
    Quando clico no botao Previa via teclado
    E aciono o botao Desbloquear via teclado
    Entao sou direcionado para a pagina principal
    E aciono o botao Acessibilidade via teclado
    Entao sou direcionado para o painel de acessibilidade
    Quando aumento o tamanho do texto via teclado
    Entao o tamanho do texto esta aumentado
    Quando reduzo o tamanho do texto via teclado
    Entao o tamanho do texto esta reduzido
    Quando clico no botao Acessibilidade para encerrar




