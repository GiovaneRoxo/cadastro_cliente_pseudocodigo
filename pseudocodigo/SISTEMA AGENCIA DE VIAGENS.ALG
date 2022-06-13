Algoritmo "sistema agencia de viagens"
// Descrição   : Cadastra clientes e destinos e possui sistema
//               de consulta dos clientes e destinos
// Autor(a)    : Giovane Serafim Roxo
// Data atual  : 12/06/22
arquivo "C:\Users\Giovane\Desktop\Nova pasta\bancodedados.txt"
Var
// Seção de Declarações das variáveis

 clientes:vetor[1..100, 0..5] de caractere   // matriz de clientes
 x, j: inteiro                               // variaveis da matriz de clientes
 destinos:vetor[1..100, 0..2] de caractere   // matriz de destinos
 z, y: inteiro                               // variaveis da matriz de destinos
 clientex: inteiro                           // Numero de clientes adicionados
 destinox: inteiro                           // numero de destinos adicionados
 c: inteiro                                  // variavel para estrutura de repetição
 i:inteiro                                   //variavel para estutura de repetição
 opcaoEscolhida: inteiro                     //opção escolhida pelo usuario

Inicio

enquanto verdadeiro faça                     //laço de repetição infinito
    escreval("=== MENU DE OPÇÕES ==========:")
    escreval("1- Cadastrar clientes")
    escreval("2- Cadastrar destinos")
    escreval("3- Consultar clientes")
    escreval("4- Consultar destinos")
    escreval("ESC- Sair")
    leia(opcaoEscolhida)                      //Armazena a opção escolhida

    escolha opcaoEscolhida
       caso 1
          limpatela
           escreval("=== CADASTRO DE CLIENTE =======:")
           escreval(" Quantos clientes vai adicionar? ")
           leia(clientex)                     // armazena numero de clientes que vai adicionar
               limpatela
               escreval("--Digite os dados do cliente: ")
               escreval("--Nome, Sobrenome, CPF, Endereço, Cidade, Estado")
                   para x de 1 até clientex faça     // repete perguntas pelo numero de quantidade informado anteriormente
                   escreval("/-/clentes ", x)
                       para j de 0 até 5 faça        // 5 tipos de finromação (Nome, sobrenomeme, cpf, endereço, cidade, estado) nessa ordem
                           leia(clientes[x,j])       // salva na matriz
                       fimpara
                   fimpara
       caso 2
           limpatela
           escreval("=== CADASTRO DE DESTINO =======:")
           escreval(" Quantos destinos vai adicionar? ")
           leia(destinox)
               limpatela
               escreval("--Digite os dados do destinos: ")
               escreval("--Cidade, Estado, País")
                   para z de 1 até destinox faça
                   escreval("/-/destinos ", z)
                       para y de 0 até 2 faça
                           leia(destinos[z,y])
                       fimpara
                   fimpara

       caso 3
          limpatela
          escreval("Clientes: ")
          para x de 1 até clientex faça
                      escreva(x)
                      escreva(" - ")
                      escreva(clientes[x,0])
                      escreva(" ")
                      escreva(clientes[x,1])
                      escreval()
          fimpara
          escreval()
       caso 4
          limpatela
          escreval("Destinos: ")
          para z de 1 até destinox faça
                      escreva(z)
                      escreva(" - ")
                      escreva(destinos[z,0])
                      escreva(", ")
                      escreva(destinos[z,1])
                      escreva(", ")
                      escreva(destinos[z,2])
                      escreval()
                      escreval()
          fimpara

       fimescolha
fimenquanto

limpatela
escreval("finalizado")

Fimalgoritmo