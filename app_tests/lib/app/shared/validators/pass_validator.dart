//CÓDIGO DE PRODUÇÃO
class PassValidator {
  String? validate({String? pass}){
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