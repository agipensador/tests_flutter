# Testes Em Flutter.

Repositório criado com foco em testes Unitários(TDD), testes de Widget e testes de Integração

*Antes de mais nada, por boas práticas(e quase obrigação também kk) refaço minha arquitetura de packages da "lib" dentro da pasta "test", criando a mesma arquitetura para a parte de testes.

## Unitários - TDD
### 1.Escreva um teste que falhe; 2.Faça o código funcionar; 3.Refatore o teste.<br>
Passo 1 - Comece pelos testes! É isso mesmo, o conceito do TDD é: primeiro o teste, depois o código de produção.<br>
Passo 2 - flutter_test (pubspec.yaml) é a única dependência pra TDD.<br>
* O código está desenvolvido no passo a passo por comits, então o primeiro commit contém a arquitetura da "lib" e de "test", com tudo pra começar os testes, ainda sem o código de produção, já que é primeiro o teste. E ao longo dos commits vou desenvolvendo um passo a passo entre testes e códigos.<br>
Passo 3 - Comece a escrever o teste... Para rodar o teste vai depender da IDE, pode ser em "Run"(VSCode), botão de Play(Android Studio) ou variar em outras plataformas.<br>
Passo 4 - Ao criar os testes você pode criar(em "test") a classe que vai para produção, e assim que os testes funcionarem, mova a classe para o package "lib" e importe-a no package de test.<br>
* Caso haja mais testes(TDD) em outras classes/arquivos, pode-se fazer novamente do Passo 1 ao Passo 4.<br><br>
Observação: No TDD você inicia os testes sobre aa funcionalidades que o APP deve fazer. Então para que consiga desenvolver, é criada uma classe auxiliar dentro do arquivo do teste, e então você roda o teste, e assim que for aprovado todos os testes daquela classe, o último passo a fazer é mover a classe para o local exato dela dentro de "lib", e fazer os imports necessários!<br> 

