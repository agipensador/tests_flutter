import 'package:app_tests/app/shared/auth/auth_service.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  //ESTES CONTROLLERS NÃO FAZEM PARTE DO TESTE, MAS GERENCIAM OS TEXTOS DO TEXTFORMFIELD
  final TextEditingController emailTextEditingController =
      TextEditingController();
  final TextEditingController passTextEditingController =
      TextEditingController();

  //INSTANCIANDO/INICIANDO A AUTENTICAÇÃO (ACESSA A CLASSE AUTH SERVICE)
  final Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Testes'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              //O TESTE LOCALIZA ESTE WIDGET POR CONTA DA KEY "email"
              key: const Key('email'),
              controller: emailTextEditingController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 8),
            TextFormField(
              //O TESTE LOCALIZA ESTE WIDGET POR CONTA DA KEY "pass"
              key: const Key('pass'),
              controller: passTextEditingController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    //O TESTE LOCALIZA ESTE WIDGET POR CONTA DA KEY "register"
                    key: const Key("register"),
                    onPressed: () {
                      //VARIÁVEL PARA SALVAR O RETORNO/RESULTADO DA FUNÇÃO RESULT
                      final result =
                          //CHAMA A FUNÇÃO DE AUTH
                          _auth.register(
                              //BUSCAMOS O TEXTO DO TEXTFORMFIEL DE EMAIL
                              emailTextEditingController.text,
                              //BUSCAMOS O TEXTO DO TEXTFORMFIEL DE PASSWORD
                              passTextEditingController.text);

                      //VERIFICA SE DEU CERTO (SE RESULT == NULL É PQ NÃO TEM PROBLEMA NO CADASTRO)
                      if (result == null) {
                      }
                      //SE NÃO, BUSCA O ERRO
                      else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(
                            //E CITA O RESULTADO DO ERRO
                            result.toString().toUpperCase(),
                            textAlign: TextAlign.center,
                          ),
                          backgroundColor: Colors.red,
                        ));
                      }
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text('CADASTRE-SE'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
