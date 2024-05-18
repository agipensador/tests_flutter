import 'package:app_tests/app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //GRUPO DE TESTES EMAIL
  group(
      //O QUE ESSE GRUPO FARÁ?
      "Testar Campo de Email", () {

     //TESTE 1
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Confirmar que o campo TextForm de Email aparece corretamente na tela",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
        (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

          //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
          //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
          const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE EMAIL PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final emailKey = find.byKey(const Key("email"));

          //VERIFICA emailKey SE ESTÁ REALMENTE SENDO EXIBIDO NA TELA
          expect(emailKey, findsOneWidget);
    });

    //TESTE 2
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso o EMAIL seja NULO",

            //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

            //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
            await widgetTester.pumpWidget(

              //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
              //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

            //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
            final button = find.byKey(const Key("register"));

            //BUSCA E CLICA NO BOTÃO COM KEY register
            await widgetTester.tap(button);
            //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
            await widgetTester.pumpAndSettle();

            //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
            //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
            expect(find.text("Email obrigatório".toUpperCase()), findsOneWidget);
        });


    //TESTE 3
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso o EMAIL seja VAZIO",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VAZIO ''
          await widgetTester.enterText(campoEmail, '');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));

          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("Email obrigatório".toUpperCase()), findsOneWidget);
        });

    //TESTE 4
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso o EMAIL seja INVÁLIDO",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email INVÁLIDO
          await widgetTester.enterText(campoEmail, 'email_invalido');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));

          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email inválido (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("Email inválido".toUpperCase()), findsOneWidget);
        });

    //TESTE 5
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Não Exibe snackbar caso o EMAIL seja VÁLIDO",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));

          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email inválido (TO UPPERCASE(MAIÚSCULO))
          //findsNothing ESPERA Q NÃO CONTENHA WIDGET SNACKBAR
          expect(find.text("Email inválido".toUpperCase()), findsNothing);
        });
  });

  //GRUPO DE TESTES PASSWORD/SENHA
  group(
    //O QUE ESSE GRUPO FARÁ?
      "Testar Campo de Senha", () {

    //TESTE 1 PASS
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Confirmar que o campo TextForm de senha aparece corretamente na tela",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE PASS PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "pass"
          final passKey = find.byKey(const Key("pass"));

          //VERIFICA passKey SE ESTÁ REALMENTE SENDO EXIBIDO NA TELA
          expect(passKey, findsOneWidget);
        });

    //TESTE 2 PASS
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso A Senha seja NULA",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));
          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("Senha obrigatória".toUpperCase()), findsOneWidget);
        });


    //TESTE 3 PASS
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso a SENHA seja VAZIA",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "pass"
          final campoPass = find.byKey(const Key("pass"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY pass
          await widgetTester.tap(campoPass);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY pass VAZIO
          await widgetTester.enterText(campoPass, '');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));
          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("Senha obrigatória".toUpperCase()), findsOneWidget);
        });


    //TESTE 4 PASS
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso a Senha seja menor que 6 caracteres",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "pass"
          final campoPass = find.byKey(const Key("pass"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY pass
          await widgetTester.tap(campoPass);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // O TEXTO DA KEY É MENOR QUE 6 CARACTERES
          await widgetTester.enterText(campoPass, 'curta');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));
          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("A senha deve possuir pelo menos 6 caracteres".toUpperCase()), findsOneWidget);
        });

    //TESTE 5 PASS
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso a Senha é alfanumérica",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "pass"
          final campoPass = find.byKey(const Key("pass"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY pass
          await widgetTester.tap(campoPass);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //  O TEXTO DA KEY pass PRECISARIA SER ALFANUMÉRICO
          await widgetTester.enterText(campoPass, '1234567');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));
          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsOneWidget SIGNIFICA 1 WIDGET QUE CONTENHA ISSO
          expect(find.text("A senha deve ser alfanumérica".toUpperCase()), findsOneWidget);
        });

    //TESTE 6
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Não exibe snackbar caso o Senha seja VÁLIDA",

        //PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
            (widgetTester) async {

          //pumpWidget RENDERIZA TODA A TELA, INICIALIZANDO O MATERIAL E O REGISTER
          await widgetTester.pumpWidget(

            //IMPORTANTE O MATERIA APP PQ A TELA REGISTERSCREEN NÃO POSSUI O MATERIALAPP
            //E PARA TELA FLUTTER BUILDAR É NECESSÁRIO O MATERIAL
              const MaterialApp(home: RegisterScreen()));

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "email"
          final campoEmail = find.byKey(const Key("email"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY email
          await widgetTester.tap(campoEmail);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          // DEIXA O TEXTO DA KEY email VÁLIDO
          await widgetTester.enterText(campoEmail, 'email@valido.com');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "pass"
          final campoPass = find.byKey(const Key("pass"));
          //BUSCA E CLICA NO TEXTFORMFIELD COM KEY pass
          await widgetTester.tap(campoPass);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //  O TEXTO DA KEY pass PRECISARIA É ALFANUMÉRICO
          await widgetTester.enterText(campoPass, '1234567@Ab');
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();


          //PARA RECUPERAR A CHAVE DE REGISTER PRECISA SER EXATAMENTE O MESMO TEXTO DA KEY DECLARADA "register"
          final button = find.byKey(const Key("register"));
          //BUSCA E CLICA NO BOTÃO COM KEY register
          await widgetTester.tap(button);
          //pumpAndSettle RENDERIZA A TELA APÓS O CLIQUE E DEIXA PRONTA PRO PRÓXIMO COMANDO/TESTE
          await widgetTester.pumpAndSettle();

          //VERIFICA SE EXISTE O CASO DE ERRO Email obrigatório (TO UPPERCASE(MAIÚSCULO))
          //findsNothing NÃO DEVE TER A FRASE A senha deve ser alfanumérica EM NENHUM WIDGET
          expect(find.text("A senha deve ser alfanumérica".toUpperCase()), findsNothing);
        });
  });
}
