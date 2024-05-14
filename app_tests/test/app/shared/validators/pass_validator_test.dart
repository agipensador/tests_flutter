import 'package:flutter_test/flutter_test.dart';

class PassValidator {
  validate({String? pass}){
    //TESTE 1       ||TESTE 2
    if (pass == null || pass.isEmpty) {
      return 'Senha obrigatória';
    }

    //TESTE 3
    if(pass.length <6){
      return 'A senha deve possuir pelo menos 6 caracteres';
    }

    final alphanumeric = RegExp(r"^(?=.*[a-zA-Z])(?=.*[0-9]).+$");
    //TESTE 4
    if(alphanumeric.hasMatch(pass)){
      return null;
    }else {
      return 'A senha deve ser alfanumérica';
    }
  }
}

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
      //VERIFICA SE A SENHA É ALFANUMÉRICA
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
