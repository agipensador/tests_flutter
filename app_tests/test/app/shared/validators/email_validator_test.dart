import 'package:flutter_test/flutter_test.dart';

//CLASSE CRIADA PARA REPRESENTAR O CÓDIGO DE PRODUÇÃO
class EmailValidator{
  validate({String? email}){
    // teste 1       || teste 2
    if(email == null || email.isEmpty){
      return 'Email obrigatório';
    }
  }
}

//INICIALIZADOR DE TESTE
void main(){
  late EmailValidator emailValidator;

  //FUNÇÃO SETUP PARA REUTILIZAR O QUE SE REPETE EM DIVERSAS >FUNÇÔES DE TEST<
  setUp(() => emailValidator = EmailValidator());

  //GRUPO DE TESTES
  group(
      //O QUE ESSE GRUPO FARÁ?
      'Validar Email', () {
      //O QUE ESSA FUNÇÃO TEST FARÁ?
      test('Retornar erro caso email igual nulo', () {
        final result = emailValidator.validate();
        //VERIFICA SE O RESULTADO ESPERRADO É IGUAL A: Email obrigatório
        expect(result, equals('Email obrigatório'));
      });
      //O QUE ESSA FUNÇÃO TEST FARÁ?
      test('Retornar erro se o email for vazio', () {
        final result = emailValidator.validate(email: '');
        //VERIFICA SE O EMAIL É != DE VAZIO
        expect(result, equals('Email obrigatório'));
      });
  });
}