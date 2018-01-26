# Classe Pessoa
# Implementação da classe Pessoa
class Pessoa:
	def __init__(self, nome):
		self.nome = nome

# classe Cliente
# Implementação da classe Cliente
class Cliente(Pessoa):
	def __init__(self, nome):
		Pessoa.__init__(self, nome)

# Classe Fornecedor
# Implementação da classe Fornecedor
class Fornecedor(Pessoa):
	def __init__(self, nome):
		Pessoa.__init__(self, nome)

# Classe Conta
# Implementação da classe Conta
class Conta:
	def __init__(self, descricao, valor, data_vencimento):
		self.descricao = descricao
		self.valor = valor 
		self.data_vencimento = data_vencimento
	
	def Conta(self):
		return 0

	def Cancelar(self):
		return 0

# Classe ContaPagar
# Implementação da classe ContaPagar
class ContaPagar(Conta):
	def __init__(self, fornecedor, descricao, valor, data_vencimento):
		self.fornecedor = fornecedor
		Conta.__init__(self, descricao, valor, data_vencimento)

	def Conta(self):
		return 0 

	def Cancelar(self):
		return 0

# Classe ContaReceber
# Implementação da classe ContaReceber
class ContaReceber(Conta):
	def __init__(self, cliente, descricao, valor, data_vencimento):
		self.cliente = cliente
		Conta.__init__(self, descricao, valor, data_vencimento)

	def Conta(self):
		return 0 

	def Cancelar(self):
		return 0


# Instancia de Cliente
p1 = Cliente('Renato Franco')
p2 = Cliente('Hanzo Kimura')
print(p1, p1.nome)
print(p1, p2.nome)

# Instancia de Fornecedor
f1 = Fornecedor('Coca Cola')
f2 = Fornecedor('Apple Inc')
print(f1, f1.nome)
print(f2, f2.nome)

# Instancia de ContaPagar
c1 = ContaPagar(f2, 'MacBook Pro Late 2018', 18.000, '26/01/2018')
print(c1, c1.fornecedor.nome, c1.descricao, c1.valor, c1.data_vencimento)

c2 = ContaReceber(p1, 'Conta de Luz', 100.00, '18/02/2018')
print(c2, c2.cliente.nome, c2.descricao, c2.valor, c2.data_vencimento)