![image](https://github.com/mendesviton/economiza-facil/assets/94265037/31827634-59b7-479a-8969-86a241d5f730)# Economiza Fácil

## Projeto de Mentoria em Flutter

Este projeto de mentoria em Flutter visa o desenvolvimento didático de um aplicativo de controle financeiro com o objetivo de utilizar-se todas as habilidades de um desenvolvedor flutter júnior .

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

3. Toda a feature será revisada e corrigida por meio de um pull request (abrir pr para a branch develop-seu-nome)

  - Como abrir um pull request: https://www.youtube.com/watch?v=aUh21RzRRa8&ab_channel=TheCodingCocoon


# Etapa 1 - Desenvolvimento do UI 
A organização inicial de pastas do app será da seguinte maneira 

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
````
### Criaçao de um tema padrão para o aplicativo utilizando extensions


Extensões no Flutter

No Flutter, uma extensão é uma maneira de adicionar funcionalidades a um tipo existente sem modificar diretamente sua implementação.No snippet de código abaixo, a extensão CustomColorsScheme está sendo aplicada ao ColorScheme, que é um objeto usado para definir um esquema de cores no Flutter. Essa extensão adiciona métodos getter que facilitam o acesso a cores específicas dentro do seu esquema personalizado de cores.

A sintaxe extension CustomColorsScheme on ColorScheme define uma extensão chamada CustomColorsScheme que se aplica ao tipo ColorScheme. Dentro desta extensão, estão definidos métodos get para obter cores específicas do AppColors (presumivelmente uma classe ou recurso que define cores personalizadas no seu aplicativo).

Para a implementação das cores que você mencionou, aqui está a definição da extensão no Flutter:

Necessário criar um arquivo de extensions.dart (em um diretório que faça sentido, Shared ou Core)
adicione as cores que o app esta utilizando 
exemplo:
````
import 'package:flutter/material.dart';

// Supondo que AppColors seja uma classe que define cores personalizadas
class AppColors {
  static const Color greenFF57B98F = Color(0xFF57B98F);
  static const Color brownFF6F563E = Color(0xFF6F563E);
  static const Color greenFF228463 = Color(0xFF228463);
  static const Color greenFF2DB184 = Color(0xFF2DB184);
}

// Definindo a extensão para o ColorScheme
extension CustomColorsScheme on ColorScheme {
  Color get greenFF57B98F => AppColors.greenFF57B98F;
  Color get brown6F563E => AppColors.brownFF6F563E;
  Color get greenFF228463 => AppColors.greenFF228463;
  Color get greenFF2DB184 => AppColors.greenFF2DB184;
}
````

para utilizar as cores em um widget 

![image](https://github.com/mendesviton/economiza-facil/assets/94265037/6c814a8e-bc7e-4828-8709-1347d35071c6)

Da mesma forma pode ser utilizando com os textStyles 

exemplo:
````
extension CustomTextThemeX on TextTheme {
  TextStyle get _smallText => const TextStyle(fontSize: 14.0);
  

  TextStyle get smallWhiteTextStyle => _smallText.copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
        fontFamily: AppFontFamily.openSans,
      );
}
````

![Captura de Tela 2024-04-08 às 09 09 58](https://github.com/mendesviton/economiza-facil/assets/94265037/28af513f-cbc9-4b07-9464-fbaf6c4435c7)

Classe global para Strings

Deve-se criar uma classe para strings, aonde cada string utilizada no app é uma variavel estática (https://medium.com/@anslemAnsy/the-importance-of-static-variables-in-flutter-classes-7602b3abcc9a)
ou seja, uma variavel que pode ser utilizada sem instanciar a classe AppStrings por exemplo 

exemplo:
````
class AppStrings {
  static const String selectOptionsResetPassword =
      'Selecione uma das opções para receber\no seu token de confirmação de acesso:';
  static const String update = 'Atualizar';
  static const String toFinishEnterYourPassword =
      'Para concluir, insira sua senha';
  static const String searchAddress = 'Busca endereço';
  static const String advancedSearch = 'Busca avançada';
}
````

implementação

![Captura de Tela 2024-04-08 às 09 14 28](https://github.com/mendesviton/economiza-facil/assets/94265037/0091711a-d04e-456c-a21c-12e1f4ad8658)





