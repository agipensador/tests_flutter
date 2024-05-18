# Testes Em Flutter.

Repositório criado com foco em testes Unitários(TDD), testes de Widget e testes de Integração

*Antes de mais nada, por boas práticas(e quase obrigação também kk) refaço minha arquitetura de packages da "lib" dentro da pasta "test", criando a mesma arquitetura para a parte de testes.<br><br>
-O código está desenvolvido no passo a passo por comits, então o primeiro commit contém a arquitetura da "lib" e de "test", com tudo pra começar os testes, ainda sem o código de produção, já que é primeiro o teste. E ao longo dos commits vou desenvolvendo um passo a passo entre testes e códigos.<br>

## Unitários - TDD
### 1.Escreva um teste que falhe; 2.Faça o código funcionar; 3.Refatore o teste.<br>
Passo 1 - Comece pelos testes! É isso mesmo, o conceito do TDD é: primeiro o teste, depois o código de produção.<br>
Passo 2 - flutter_test (pubspec.yaml) é a única dependência pra TDD.<br>
Passo 3 - Comece a escrever o teste... Para rodar o teste vai depender da IDE, pode ser em "Run"(VSCode), botão de Play(Android Studio) ou variar em outras plataformas.<br>
Passo 4 - Ao criar os testes você pode criar(em "test") a classe que vai para produção, e assim que os testes funcionarem, mova a classe para o package "lib" e importe-a no package de test.<br>
-Caso haja mais testes(TDD) em outras classes/arquivos, pode-se fazer novamente do Passo 1 ao Passo 4.<br><br>
Observação: No TDD você inicia os testes sobre as funcionalidades que o APP deve fazer. Então para que consiga desenvolver, é criada uma classe auxiliar dentro do arquivo do teste, e então você roda o teste, e assim que for aprovado todos os testes daquela classe, o último passo a fazer é mover a classe para o local exato dela dentro de "lib", e fazer os imports necessários!<br><br>
-OBS: Você pode ver mais na <a href="https://codelabs.developers.google.com/codelabs/flutter-app-testing?hl=pt-br#4">documentação do Flutter</a>
<br><br><br>

## Widget
### 1.Crie o widget; 2.Analise o que o widget deve entregar; 3.Faça os testes.<br>
Passo 1 - Crie seus widgets, como um TextFormField por exemplo. Adicione uma "key" para este widget. É por essa chave "key" que os testes encontram o widget.<br>
Passo 2 - Você pode criar sua funcionalidade validando com os testes de TDD; No botão de Cadestre-se por exemplo, se o Email e Senha estão corretas(DEMONSTRAÇÃO NO COMMIT: "PASSO 2 DOC"), você já utiliza a validação feita na classe AUTH.<br>
Passo 3 - Na teoria, você já refez a mesma arquitetura de "lib"(Se não já pode ir refazendo aí dentro do package "test" a mesma sequência de packages que se encontra seu arquivo de "lib"). Como eu havia copiado e colado a arquitetura, no meu código inicío apagando o código Flutter, para iniciar o teste de Widget!<br>
Passo 4 - Assim que o teste for programado, ao executar é normal que ele demore mais que o teste de TDD para finalizar, afinal ele está "buildando" widgets.<br>
-OBS: Passei o TESTE 2 (PASS) do Grupo EMAIL, para o Grupo PASS, renumerando o Grupo de EMAIL!!!
Passo 5 - Testes de TextFormField basicamente poderão ser usados em textes de projetos reais, assim como os testes de botão; claro que é necessário ajustar os "expect's" para o que o projeto expera de fato.<br>
Passo 6 - Uma boa prática após rodar teste por teste, é rodar o Grupo de teste(Ex: Rodar o grupo de testes do Botão Cadastre-se); e também rodar na "main" todos os grupos juntos.<br>
-OBS: Você pode ver mais na <a href="https://docs.flutter.dev/cookbook/testing/widget/introduction">documentação do Flutter</a>
<br><br><br>

