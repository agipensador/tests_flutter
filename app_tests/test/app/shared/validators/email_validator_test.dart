import 'package:flutter_test/flutter_test.dart';

//CLASSE CRIADA PARA REPRESENTAR O CÓDIGO DE PRODUÇÃO
class EmailValidator {
  validate({String? email}) {
    // teste 1       || teste 2
    if (email == null || email.isEmpty) {
      return 'Email obrigatório';
    }

    //teste 3
    //emailRegex É UM CÓDIGO REGEX PADRÃO QUE VERIFICA OS CARACTERES QUE SÃO VÁLIDOS PARA EMAIL
    final emailRegex = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    //VERIFICA SE O EMAIL QUE PASSAMOS ESTÁ EM >DESACORDO< COM OS CARACTERES DE EMAIL VÁLIDO
    if (emailRegex.hasMatch(email)) {
      //DEVE DAR ERRO PQ A VERIFICAÇÃO É SE FOR INVÁLIDO
      return null;
    } else {
      //O TESTE É APROVADO POIS É ISTO QUE ELE ESPERA
      return 'Email inválido';
    }
  }
}

//INICIALIZADOR DE TESTE
void main() {
  late EmailValidator emailValidator;

  //FUNÇÃO SETUP PARA REUTILIZAR O QUE SE REPETE EM DIVERSAS >FUNÇÔES DE TEST<
  setUp(() => emailValidator = EmailValidator());

  //GRUPO DE TESTES
  group(
      //O QUE ESSE GRUPO FARÁ?
      'Validar Email', () {
    //TESTE 1
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro caso email igual nulo', () {
      final result = emailValidator.validate();
      //VERIFICA SE O RESULTADO ESPERADO É IGUAL A: Email obrigatório
      expect(result, equals('Email obrigatório'));
    });

    //TESTE 2
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro se o email for vazio', () {
      final result = emailValidator.validate(email: '');
      //VERIFICA SE O EMAIL É == DE VAZIO
      expect(result, equals('Email obrigatório'));
    });

    //TESTE 3
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar erro se o email for inválido', () {
      //SE O EMAIL NÃO TIVER @, .COM.... É UM EMAIL INVÁLIDO
      final result = emailValidator.validate(email: 'teste.br');
      //VERIFICA SE O EMAIL É INVÁLIDO
      expect(result, equals('Email inválido'));
    });

    //TESTE 4
    //O QUE ESSA FUNÇÃO TEST FARÁ?
    test('Retornar nulo se o email for válido', () {
      //SE O EMAIL TIVER @, .COM.... É UM EMAIL VÁLIDO
      final result = emailValidator.validate(email: 'teste@com.com.br');
      //VERIFICA SE O EMAIL É NULO
      expect(result, isNull);
    });
  });
}
