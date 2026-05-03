*** Settings ***
Library    SeleniumLibrary              
Resource   ../resources/variables.robot          

*** Keywords ***
E acesso o curso Fundamentos do ESG via teclado
    Wait Until Element Is Visible
    ...    xpath=//div[contains(.,'Fundamentos do ESG')]
    ...    ${timeout}
    Set Focus To Element
    ...    xpath=//div[contains(.,'Fundamentos do ESG')]/ancestor::a
    Press Keys    None    ENTER
    Wait Until Page Contains    Fundamentos do ESG    ${timeout}
Entao sou direcionado para a pagina do curso
    Wait Until Element Is Visible    xpath=//div[contains(@class,'font-extrabold') and contains(.,'Fundamentos do ESG')]    ${timeout}
    Element Text Should Be    xpath=//div[contains(@class,'font-extrabold') and contains(.,'Fundamentos do ESG')]    Awtra 2025.33_Fundamentos do ESG (Liderança) (Cópia)



