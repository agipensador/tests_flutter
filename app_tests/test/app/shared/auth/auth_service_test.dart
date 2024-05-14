import 'package:app_tests/app/shared/validators/email_validator.dart';
import 'package:app_tests/app/shared/validators/pass_validator.dart';
import 'package:flutter_test/flutter_test.dart';

class Auth {
  register(String? emailAuth, String? passAuth) {
    //BUSCA NA CLASSE EmailValidator O RESULTADO DA VERIFICAÇÃO
    final emailError = EmailValidator().validate(email: emailAuth);

    //BUSCA NA CLASSE PassValidator O RESULTADO DA VERIFICAÇÃO
    final passError = PassValidator().validate(pass: passAuth);

    //VERIFICA SE O EMAILERROR É NULO, SE NÃO FOR ENTÃO VERIFICA SE PASSERROR É NULO.
    //CASO OS 2 ESTEJAM OK, RETORNA NULO
    return emailError ?? passError;
  }
}

main() {
  late Auth auth;

  //FUNÇÃO SETUP PARA REUTILIZAR O QUE SE REPETE EM DIVERSAS >FUNÇÔES DE TEST<
  setUp(() => auth = Auth());
  //GRUPO DE TESTES
  group(
      //O QUE ESSE GRUPO FARÁ?
      'Validar Cadastro', () {
    //TESTE 1
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar mensagem para email e senha inválidos', () {
      final result = auth.register('teste', '123');
      //VERIFICA SE O RESULTADO TEM O EMAIL(EmailValidator) OU A SENHA(PassValidator) INVÁLIDOS
      expect(result, isA<String>());
    });

    //TESTE 2
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar mensagem para email e senha válidos', () {
      final result = auth.register('teste@com.br', '123abc');
      //VERIFICA SE O RESULTADO TEM O EMAIL(EmailValidator) E A SENHA(PassValidator) INVÁLIDOS
      expect(result, isNull);
    });
  });
}
