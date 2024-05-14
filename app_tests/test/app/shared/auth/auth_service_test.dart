import 'package:app_tests/app/shared/auth/auth_service.dart';
import 'package:flutter_test/flutter_test.dart';

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
