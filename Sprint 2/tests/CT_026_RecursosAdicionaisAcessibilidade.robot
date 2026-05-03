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
CT-026_Aplicar_Recursos_Adicionais_De_Acessibilidade_Em_Tempo_Real
    # Bloco 1 - Acesso ao curso
    Dado que acesso o site
    Quando realizo login via teclado
    Entao sou direcionado para a area de trabalho
    Quando acesso o projeto Learn 360 via teclado
    Entao sou direcionado para a pagina dos projetos
    E acesso o curso Fundamentos do ESG via teclado
    Entao sou direcionado para a pagina do curso

    # Bloco 2 - Acesso à página principal do curso
    Quando clico no botao Previa via teclado
    E aciono o botao Desbloquear via teclado
    Entao sou direcionado para a pagina principal
    E confirmo a existencia do botao Acessibilidade
    E aciono o botao Acessibilidade via teclado    9
    Entao sou direcionado para o painel de acessibilidade
    E posiciono o foco no recurso Escala de Cinza

    # Bloco 3 - Validação dos recursos adicionais na primeira página interna
    Quando aciono o recurso Escala de Cinza
    Entao o recurso Escala de Cinza esta ativo

    Quando aciono o recurso Sublinhar Links
    Entao o recurso Sublinhar Links foi acionado

    Quando aciono o recurso Fonte Legivel
    Entao o recurso Fonte Legivel esta ativo

    Quando aciono o recurso Cursor maior
    Entao o recurso Cursor maior esta ativo

    Quando aciono o recurso Mascara de Leitura
    Entao o recurso Mascara de Leitura esta ativa

    Quando aciono o recurso Espacamento de Texto
    Entao o recurso Espacamento de Texto esta ativo

    Quando aciono o recurso Ocultar Imagens
    Entao o recurso Ocultar Imagens esta ativo

    Quando aciono o recurso Resetar Configuracoes
    Entao os recursos de acessibilidade foram resetados

    Entao o layout permanece consistente

    # Bloco 4 - Página seguinte
    Quando aciono o botao Proxima Pagina apos reset de configuração
    Entao sou direcionado para a pagina seguinte e valido a existencia do botao Acessibilidade CT026
    E aciono o botao Acessibilidade via teclado    6
    Entao sou direcionado para o painel de acessibilidade
    E posiciono o foco no recurso Escala de Cinza

    Quando aciono o recurso Escala de Cinza
    Entao o recurso Escala de Cinza esta ativo

    Quando aciono o recurso Sublinhar Links
    Entao o recurso Sublinhar Links foi acionado

    Quando aciono o recurso Fonte Legivel
    Entao o recurso Fonte Legivel esta ativo

    Quando aciono o recurso Cursor maior
    Entao o recurso Cursor maior esta ativo

    Quando aciono o recurso Mascara de Leitura
    Entao o recurso Mascara de Leitura esta ativa

    Quando aciono o recurso Espacamento de Texto
    Entao o recurso Espacamento de Texto esta ativo

    Quando aciono o recurso Ocultar Imagens
    Entao o recurso Ocultar Imagens esta ativo

    Quando aciono o recurso Resetar Configuracoes
    Entao os recursos de acessibilidade foram resetados

    Entao o layout permanece consistente

