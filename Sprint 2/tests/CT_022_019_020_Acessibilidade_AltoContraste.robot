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
CT-022-019-020 Acessibilidade e Alto Contraste Ativar e Desativar
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
    Quando aciono o botao Alto Contraste via teclado
    Entao o Alto Contraste esta ativado
    E clico no botao Alto Contraste
    Entao o Alto Contraste esta Desativado
    Quando clico no botao Acessibilidade para encerrar




