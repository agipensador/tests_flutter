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
    testWidgets("Confirmar que o campo Email aparece corretamente na tela",
        //PASSAMOS UM PARÂMETRO/VARIÁVEL PARA UTILIZAR NA FUNÇÃO(widgetTester)
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
  });
}
