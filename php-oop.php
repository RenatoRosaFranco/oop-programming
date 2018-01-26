<?php 

  // Classe Pessoa
  // Implementação da classe Pessoa
  class Pessoa {
  	function __construct($nome){ 		
  	 $this->nome = $nome;
  	}
  }

  // Classe Cliente
  // Implementação da classe Cliente
  class Cliente extends Pessoa {
  	function __construct($nome){
  	 parent::__construct($nome);
  	}
  }
  
  // Classe Fornecedor
  // Implementação da classe Fornecedor
  class Fornecedor extends Pessoa{
  	function __construct($nome){
  	 parent::__construct($nome);
  	}
  }

  // Classe Conta 
  // Implementação da classe conta
  class Conta {
  	function __construct($descricao, $valor, $data_vencimento) {
     $this->descricricao = $descricao;
     $this->valor = $valor;
     $this->data_vencimento = $data_vencimento;
  	}
  	
    function conta(){
  	 // some code here
  	}

  	function cancelar(){
  	 // some code here	
  	}
  }

  // Classe ContaPagar 
  // Implementação da classe ContaPagar
  class ContaPagar extends Conta {
 	 function __construct($fornecedor, $descricao, $valor, $data_vencimento){
 	  $this->fornecedor = $fornecedor;
 	  parent::__construct($descricao, $valor, $data_vencimento);
 	 }
  }

  // Classe ContaReceber 
  // Implementação classe ContaReceber
  class ContaReceber extends Conta {
  	function __construct($cliente, $descricao, $valor, $data_vencimento) {
  	 $this->cliente = $cliente;
  	 parent::__construct($descricao, $valor, $data_vencimento);	
  	}
  }

  // Instancia Pessoa 
  $p1 = new Cliente('Renato Rosa Franco');
  $p2 = new Cliente('Hanzo Kimura');
  
  // Instancia Fornecedor 
  $f1 = new Fornecedor('Coca Cola');
  $f2 = new Fornecedor('Apple Inc.');

  // Instancia ContaPagar
  $c1 = new ContaPagar($f2, 'Mac Book Pro Late 2018', 18.000, '26/01/2018');
  $c2 = new ContaReceber($p1, 'Conta de Luz', 100.00, '18/02/2018');

  var_dump($p1, $p2, $f1, $f2, $c1, $C2);

?>