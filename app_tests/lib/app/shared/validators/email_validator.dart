//CÓDIGO DE PRODUÇÃO
class EmailValidator {
  validate({String? email}) {
    // teste 1       || teste 2
    if (email == null || email.isEmpty) {
      return 'Email obrigatório';
    }

    //teste 3 e 4
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
