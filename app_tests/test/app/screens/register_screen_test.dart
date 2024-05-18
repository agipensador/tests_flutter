import 'package:app_tests/app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  //GRUPO DE TESTES
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

    //TESTE 1
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Confirmar que o campo TextForm de Pass aparece corretamente na tela",

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


    //TESTE 3
    //O QUE ESSA FUNÇÃO TESTWIDGET FARÁ?
    testWidgets("Exibir SnackBar caso o EMAIL seja nulo",

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
  });
}
