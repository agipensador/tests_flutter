import 'package:flutter_test/flutter_test.dart';

class Auth {
  register(String? email, String? pass){
    
  }
}

main(){
  late Auth auth;
  
  setUp(() => auth = Auth());
  group('Validar Cadastro', () {
    test('Retornar mensagem para email e senha inválidos', () {
      final result = auth.register('teste', '123');
      expect(result, isA<String>());
    });
  });
}