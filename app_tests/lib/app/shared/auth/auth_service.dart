import 'package:app_tests/app/shared/validators/email_validator.dart';
import 'package:app_tests/app/shared/validators/pass_validator.dart';

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