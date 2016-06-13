__Para começar...__
​
Vamos fazer uma aplicação com os seguintes características.
​
- Um usuario pode fazer vários desafios e um desafio pode ser feito por vários
usuários.
- Quando um usuário termina um desafio um solução é criada.
- Um desafio é iniciado e finalizado por usuários.
- Um usuário pode enviar comentários nos desafios.
- Um usuário ganha pontos quando termina um desafio
- A quantidade de pontos de um desafio pode mudar como o tempo, mas não pode
  alterar os pontos por usuários antes da mudança (ex: de preço de um produto)
​
#### Models
- Desafio
  - Título
  - Descrição
  - Comentários
  - Soluções
  - pode ser resolvido por vários usuários
  - pontos (quantos pontos valem cada desafio)
​
- Comentário
  - Texto
​
- Solução
  - Desafio
  - Usuario
​
- Usuário
  - login
  - email
  - pode resolver vários desafios
  - Soluções
​
__Discussões__:
​
- preload, eager_load, includes, references, and joins
- gem butter
- revisar testes juntos
