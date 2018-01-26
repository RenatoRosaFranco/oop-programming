# Classe Pessoa 
# Implementação da classe Pessoa
class Pessoa
 construtor: (@nome) ->

# Classe Cliente 
# Implementação da classe Cliente
class Cliente extends Pessoa

# Classe Fornecedor 
# Implementação da classe Fornecedor
class Fornecedor extends Pessoa

# Classe Conta 
# Implementação da classe Conta
class Conta 
 construtor: (@descricao, @valor, @data_validade) ->
 conta: ->
  # some code here
 cancelar: ->
  # some code here

# Classe ContaReceber 
# Implementação da classe ContaReceber
class ContaPagar extends Conta 
 construtor: (@fornecedor, descricao, valor, data_validade) ->
  super(descricao, valor, data_validade)
 conta: ->
  # some code here
 cancelar: -> 
  # some code here

# Classe ContaReceber
# Implementação da classe ContaReceber
class ContaReceber extends Conta 
  construtor: (@cliente, descricao, valor, data_validade) ->
   super(descricao, valor, data_validade)
  conta: ->
   # some code here 
  cancelar: ->
   # some code here

# Instancia de Cliente
p1 = new Pessoa 'Renato Franco'
p2 = new Pessoa 'Hanzo Kimura'

# Instancia de Fornecedor 
f1 = new Fornecedor 'Coca Cola'
f2 = new Fornecedor 'Apple Inc'

# Instancia Conta Pagar / Receber 
c1 = new ContaPagar f2, 'MacBook Pro Late 2018', 18.000, '26/01/2018'
c2 = new ContaReceber p1, 'Conta de Luz', 100.00, '18/02/2018'

console.log(p1)