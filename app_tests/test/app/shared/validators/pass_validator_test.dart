import 'package:app_tests/app/shared/validators/pass_validator.dart';
import 'package:flutter_test/flutter_test.dart';

//INICIALIZADOR DE TESTE
main() {
  late PassValidator passValidator;

//FUNÇÃO SETUP PARA REUTILIZAR O QUE SE REPETE EM DIVERSAS >FUNÇÔES DE TEST<
  setUp(() => passValidator = PassValidator());

  //GRUPO DE TESTES
  group(
      //O QUE ESSE GRUPO FARÁ?
      "Validar Senha", () {
    //TESTE 1
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro caso senha igual nulo', () {
      final result = passValidator.validate();
      //VERIFICA SE O RESULTADO ESPERADO É IGUAL A: Senha obrigatória
      expect(result, equals('Senha obrigatória'));
    });

    //TESTE 2
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro se a senha for vazia', () {
      final result = passValidator.validate(pass: '');
      //VERIFICA SE A SENHA É == DE VAZIO
      expect(result, equals('Senha obrigatória'));
    });

    //TESTE 3
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro se a senha for menor que 6 caracteres', () {
      final result = passValidator.validate(pass: 'teste');
      //VERIFICA SE A SENHA É < 6
      expect(result, equals('A senha deve possuir pelo menos 6 caracteres'));
    });

    //TESTE 4
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro se a senha não for alfanumérica', () {
      //TESTE C/ + DE 6 CARACTERES P/ PASSAR NO TESTE 3
      final result = passValidator.validate(pass: 'testesenha');
      //VERIFICA SE A SENHA NÃO É ALFANUMÉRICA
      expect(result, equals('A senha deve ser alfanumérica'));
    });

    //TESTE 5
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar null se a senha for alfanumérica', () {
      //TESTE C/ + DE 6 CARACTERES P/ PASSAR NO TESTE 3
      final result = passValidator.validate(pass: 'teste1345');
      //VERIFICA SE A SENHA É ALFANUMÉRICA
      expect(result, isNull);
    });
  });
}
