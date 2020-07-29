# medications

Esse é um aplicativo para busca de medicamentos desenvolvido em Flutter.

## Desenvolvimento

* Foi utilizado Mobx e Provider para gerenciamento de estado.
* Os arquivos foram divididos nas pastas:
  * **api**: arquivos relacionados a configuração do Dio para requisições a API;
  * **components**: componentes encapsulados criados para reaproveitamento e componentização;
  * **controllers**: classes de controle e armazenamento do estado da aplicação;
  * **models**: classes de serialização dos modelos User e Medication;
  * **pages**: widgets responsáveis por renderizar cada página do app;
  * **services**: classes exclusivas para acesso a API;

## Login

Para acessar o sistema, preencha o seu nome de usuário e senha.

![Alt text](/assets/images/login.png?raw=true)

## Tele inicial

![Alt text](/assets/images/home.png?raw=true)

## Menu

1. Início: Retorna a tela inicial;
2. Medicamentos: Navega até a tela de busca dos medicamentos;
3. Sair: Logouot do usuário e retorna a tela de login;

![Alt text](/assets/images/menu.png?raw=true)

## Medicamentos

Para realizar a busca, basta digitar o nome do medicamento e apertar Enter ou o botão para submeter o campo.

![Alt text](/assets/images/medications.png?raw=false)
![Alt text](/assets/images/medications_search.png?raw=true)

Ao rolar a lista de medicamentos até o final para baixo, o sistema fará a paginação, buscando mais medicamentos, se houver. 

![Alt text](/assets/images/medications_pagination.png?raw=true)

Clicando em um medicamento da lista, é possível verificar os detalhes do mesmo.

![Alt text](/assets/images/medication_details.png?raw=true)

## Release

Ao finalizar o projeto, foi gerado um arquivo apk para instalar a aplicação. O arquivo está disponível na pasta **release**.

O arquivo foi submetido a testes na AWS DEVICE FARM:

![Alt text](/assets/images/release_test.png?raw=true)

