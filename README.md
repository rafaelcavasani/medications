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
  
## Layouts

Foi enviado ao github o layout 1 na branch master e o layout 2 na branch layout-2

## Login

Para acessar o sistema, preencha o seu nome de usuário e senha.

![Layout 1](/assets/images/login.png?raw=false)
![Layout 2](/assets/images/login_2.png?raw=true)

## Tele inicial

![Layout 1](/assets/images/home.png?raw=false)
![Layout 2](/assets/images/home_2.png?raw=true)

## Menu

1. Início: Retorna a tela inicial;
2. Medicamentos: Navega até a tela de busca dos medicamentos;
3. Sair: Logouot do usuário e retorna a tela de login;

![Layout 1](/assets/images/menu.png?raw=false)
![Layout 2](/assets/images/menu_2.png?raw=true)

## Medicamentos

Para realizar a busca, basta digitar o nome do medicamento e apertar Enter ou o botão para submeter o campo.

![Layout 1](/assets/images/medications.png?raw=false)
![Layout 1](/assets/images/medications_search.png?raw=false)
![Layout 2](/assets/images/medications_2.png?raw=false)
![Layout 2](/assets/images/medications_search_2.png?raw=true)

Ao rolar a lista de medicamentos até o final para baixo, o sistema fará a paginação, buscando mais medicamentos, se houver. 

![Layout 1](/assets/images/medications_pagination.png?raw=false)
![Layout 2](/assets/images/medications_pagination_2.png?raw=true)

Clicando em um medicamento da lista, é possível verificar os detalhes do mesmo.

![Layout 1](/assets/images/medication_details.png?raw=false)
![Layout 1](/assets/images/medication_details.png?raw=false)
![Layout 2](/assets/images/medication_details_2.png?raw=false)
![Layout 2](/assets/images/medication_details_2.png?raw=true)

## Release

Ao finalizar o projeto, foi gerado um arquivo apk para instalar a aplicação. O arquivo está disponível na pasta **release**.

O arquivo foi submetido a testes na AWS DEVICE FARM:

![Alt text](/assets/images/release_test.png?raw=true)

