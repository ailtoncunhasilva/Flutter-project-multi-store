class ProfileValidator{

  String validateName(String text){
    if(text.isEmpty){
      return 'Preencha com seu nome';
    }
    else {
      return null;
    }
  }

  String validateEmail(String text){
    if(text.isEmpty){
      return 'Preencha com um e-mail válido';
    }
    else{
      return null;
    }
  }

  String validatePhone(String text){
    int phone = int.tryParse(text);
    if(phone != null){
      if(text.length < 9 || text.length > 9)
      return 'Telefone deve ter exatamente 9 dígitos';
    }
    else{
      return 'Telefone inválido';
    }
    return null;
  }

  String validateAdress(String text){
    if(text.isEmpty){
      return 'Adicione um endereço com ponto de referência';
    }
    else{
      return null;
    }
  }
}