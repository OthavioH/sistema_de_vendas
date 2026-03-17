# Sistema de Avaliação de Desenvolvimento de Sistemas

Nome: Othavio Henrico dos Santos Soares
Email: devothavioh@gmail.com

Este projeto é uma aplicação Flutter desenvolvida para a gestão e visualização de produtos, permitindo o fluxo completo de compra, desde a seleção de itens até a finalização do pagamento. O sistema foi projetado com foco em usabilidade, performance e suporte multiplataforma.

## 🚀 Funcionalidades

- **Listagem de Produtos:** Visualização clara e organizada de todos os itens disponíveis.
- **Carrinho de Compras:** Adição e remoção de produtos, com atualização dinâmica do total.
- **Checkout Estruturado:** Fluxo de finalização de compra intuitivo.
- **Identificação por CPF:** Validação integrada de CPF para identificação do cliente.
- **Métodos de Pagamento:** Suporte para múltiplos métodos, incluindo QR Code (PIX) e Cartão Físico.
- **Internacionalização (i18n):** Suporte nativo para Português (Brasil) e Inglês.
- **Exportação e Impressão:** Geração de recibos e documentos em formato PDF.
- **Persistência Local:** Armazenamento seguro de dados utilizando banco de dados SQLite.

## 🛠️ Tecnologias Utilizadas

- **Framework:** [Flutter](https://flutter.dev/) (Dart)
- **Gerenciamento de Estado:** [Riverpod](https://riverpod.dev/)
- **Navegação:** [GoRouter](https://pub.dev/packages/go_router)
- **Banco de Dados Local:** [Drift](https://drift.simonbinder.eu/) (SQLite)
- **Geração de PDF:** [pdf](https://pub.dev/packages/pdf) & [printing](https://pub.dev/packages/printing)
- **Localização:** `flutter_localizations` & `intl`

## 💻 Requisitos e Instalação

### Para o Usuário Comum
O sistema pode ser executado em três ambientes principais:

- **Windows:** Compatível com Windows 10 ou superior.
- **Linux:** Compatível com as principais distribuições (necessário suporte a pacotes GTK).
- **Android:** 

Para utilizar, basta executar o binário correspondente à sua plataforma (disponível na seção de Releases ou gerado pelo desenvolvedor).

---

### Para o Desenvolvedor
Se você deseja contribuir ou estudar o código, siga os passos abaixo:

#### Pré-requisitos
Para começar, você precisará ter o Flutter instalado e configurado em sua máquina. Consulte a documentação oficial para instruções detalhadas:
- **Instalação do Flutter:** [Get Started](https://docs.flutter.dev/get-started/install)
- **Configuração de Desktop:** [Desktop support for Flutter](https://docs.flutter.dev/desktop)
- **Configuração de Android:** [Android setup](https://docs.flutter.dev/get-started/install/android)
- **Laboratório Inicial:** [Escreva seu primeiro app Flutter](https://docs.flutter.dev/get-started/codelab)

#### Passo a Passo
1.  **Clonar o repositório:**
    ```bash
    git clone https://github.com/usuario/avaliacao_des_sistemas.git
    cd avaliacao_des_sistemas
    ```

2.  **Instalar as dependências:**
    ```bash
    flutter pub get
    ```

3.  **Gerar arquivos de código (Drift e Riverpod):**
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```

4.  **Executar o projeto:**
    ```bash
    flutter run
    ```

## 🌍 Sistemas Suportados
O aplicativo foi testado e é compatível com:
- ✅ **Windows**
- ✅ **Linux**
- ✅ **Android**
