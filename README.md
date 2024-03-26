# Economiza Fácil

## Projeto de Mentoria em Flutter

Este projeto de mentoria em Flutter visa o desenvolvimento didático de um aplicativo de controle financeiro com o objeito de utilizar-se todas as habilidades de um desenvolvedor flutter júnior .

### Habilidades a serem desenvolvidas:

- [x] Dominar os conceitos básicos de Flutter 
- [x] Construir interfaces de usuário responsivas
- [x] Implementar navegação entre telas de forma eficiente
- [x] Componentizaçao de widgets
- [x] Integrar APIs e serviços externos (utilizando o básico de arquitetura limpa)
- [x] Gerenciar estado de forma eficaz usando Cubit
- [x] Realizar testes unitários (nos fluxos da arquitetura)
- [x] Compreender os princípios básicos de design e arquitetura de aplicativos Flutter
- [x] Resolver problemas e depurar aplicativos com eficiência


![image](https://github.com/mendesviton/economiza-facil/assets/94265037/f29636fd-3287-4eac-8d4a-5066707dc626)

## Desenvolvimento

Este projeto é dividido em etapas, e cada etapa corresponde a uma funcionalidade específica do aplicativo de controle financeiro.

(Essa sequencia pode ser alterada conforme o desenvolvimento do app)

1. Desenvolvimento do UI (user interface)
   - Responsividade
   - Widgets dinâmicos (Listview buildada apartir de uma lista de um determinado model)
   - Componentização (extração de widgets)
   - Roteamento de telas
   - Arquitetura de pastas 
   - Controle de input de texto (Textfield TextFormfield)
   - Discobery de libs gráficas
   
2. Gerenciamento de estado
   - Métodos asíncronos
   - Hooks e Providers
   - Cubit
3. (Trilha em desenvolvimento)


### Workflow:

1. Siga os passos da trilha, cada feature equivale a uma branch.
2. Crie uma nova branch com o nome no padrão `feature/nome-da-tela`:

   ```bash
   git checkout -b feature/nome-da-tarefa
   ```
- Padrões de commit https://dev.to/renatoadorno/padroes-de-commits-commit-patterns-41co

- Padrões de branch e commit https://www.tabnews.com.br/danilocarsan/este-e-um-guia-guia-de-versionamento-nomenclatura-git-que-usso-e-tenho-melhorado-o-que-eu-pederia-melhorar-aberto-a-sugestao-e-discussao

3. Toda a feature será revisada e corrigida por meio de um pull request 

  - https://www.youtube.com/watch?v=aUh21RzRRa8&ab_channel=TheCodingCocoon


# Etapa 1 - Desenvolvimento do UI 
A organização inicialde pastas do app será da seguinte maneira 

<img width="206" alt="Captura de Tela 2024-03-26 às 00 25 06" src="https://github.com/mendesviton/economiza-facil/assets/94265037/84526a96-f9a0-466d-908c-920bb4e38559">

- O critério para componentizaçao(extração) de widgets é o seguinte:
  - quando melhora a visibilidade do código de uma UI
  - quando ele pode ser reutilizado em várias páginas

### Splash Screen
- Desenvolver a tela de splash screen, que não quebre em nenhum dispositivo seguindo fielmente os atributos do figma


<img src="https://github.com/mendesviton/economiza-facil/assets/94265037/6c00f872-23b9-43b1-895d-fccc49d84cf8" alt="SplashScreen" style="width: 200px; height: auto;">

Pontos chave:

Como criar rotas e navegar no flutter: https://docs.flutter.dev/ui/navigation

Como adicionar imagens no flutter: https://docs.flutter.dev/ui/assets/assets-and-images

Requisito da demanda: 
- A Imagem utilizada no centro da tela deve ser em SVG. (Utilizar https://pub.dev/packages/flutter_svg)

*Desafio: Desenvolver timer aonde a splashcreen ficará por 3 segundos na tela e depois isso navegar para uma nova tela em branco (futura login page)*

Exemplo de timer no flutter:
````
Future.delayed(const Duration(seconds: 1), () {
  print('One second has passed.'); // Prints after 1 second.
});

