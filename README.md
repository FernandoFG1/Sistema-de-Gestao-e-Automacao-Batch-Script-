Este repositório contém um conjunto de scripts desenvolvidos em Batch para Windows, criados como um projeto prático para a disciplina de Sistemas de Informação. O objetivo é demonstrar a automação de tarefas do sistema operacional, manipulação de diretórios e a aplicação de lógica de programação estruturada para gerenciar dados.

O projeto foi construído de forma modular, onde um menu principal atua como um "hub" integrando diversas funcionalidades.

## 🚀 Módulos do Sistema

### 1. Menu Principal (`Menu.bat`)
Um painel centralizado que permite ao usuário navegar entre as diferentes ferramentas da aplicação.
* Integração com aplicativos nativos do Windows (Calculadora, Excel, Edge).
* Ferramenta de teste de rede (Ping contínuo).
* Roteamento estruturado utilizando comandos `CALL` e `GOTO` para acionar os outros módulos do sistema.

### 2. Gerenciador de Arquivos (`Gerenciamento.bat`)
Automação focada na criação e organização de diretórios.
* **Geração em Lote:** Utiliza laços de repetição (`FOR /L`) para criar múltiplos arquivos sequenciais instantaneamente.
* **Organização Dinâmica:** Move arquivos por extensão para pastas específicas. Utiliza variáveis de ambiente nativas (`%USERPROFILE%`) para garantir que o script funcione universalmente em qualquer computador, direcionando os arquivos corretamente para a Área de Trabalho do usuário ativo.

### 3. Gestão de Clientes (`aula02.bat`)
Um mini sistema focado em persistência de dados, aplicando operações fundamentais de **CRUD** (Create e Read) diretamente via terminal.
* **Gravação:** Cadastra Nome e CPF, armazenando os dados de forma permanente em um arquivo de texto (`lista.txt`), carimbados com data e hora.
* **Leitura e Consulta:** Permite listar todos os registros ou realizar buscas precisas utilizando o comando `findstr`.

## 🛡️ Boas Práticas e Tratamento de Erros

Para garantir a estabilidade do sistema, diversas tratativas foram implementadas no código:
* **Proteção de Variáveis:** Uso de aspas nas condicionais (`if "%op%" == "N"`) para evitar o "crash" do script caso o usuário pressione *Enter* sem digitar valores.
* **Limpeza de Memória:** Implementação de `set "variavel="` no início dos loops para evitar que dados residuais de pesquisas anteriores afetem a operação atual.
* **Validação de Arquivos:** Uso de estruturas `IF EXIST` no módulo de clientes para verificar a existência do banco de dados (o arquivo `.txt`) antes de tentar realizar leituras ou buscas, retornando mensagens amigáveis ao usuário caso o arquivo ainda não exista.

## ⚙️ Como executar na sua máquina

1. Faça o clone deste repositório:
   ```bash
   git clone (https://github.com/FernandoFG1/Sistema-de-Gestao-e-Automacao-Batch-Script-)
