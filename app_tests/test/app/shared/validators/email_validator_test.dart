import 'package:flutter_test/flutter_test.dart';

//CLASSE CRIADA PARA REPRESENTAR O CÓDIGO DE PRODUÇÃO
class EmailValidator{
  validate({String? email}){
    if(email == null){
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
  });
}