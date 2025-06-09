# 📦 StocPad

O **StocPad** é um aplicativo de controle de estoque desenvolvido para **iPad**, com o objetivo de facilitar o gerenciamento de equipamentos e suas movimentações dentro da organização.

Este projeto foi desenvolvido como parte da formação prática dos estagiários de desenvolvimento iOS da iRede, com foco em aplicar os conceitos de arquitetura MVVM, boas práticas com GitFlow, controle de estado e uso de tecnologias modernas do ecossistema Apple.

---

## 📱 Plataforma

* **iOS (iPadOS)**
* Desenvolvido com **Swift** e **SwiftUI**

---

## 🧠 Tecnologias e Conceitos

* SwiftUI
* MVVM (Model-View-ViewModel)
* GitFlow
* Controle de estado com `@State`, `@Binding`, `@ObservedObject` e `@EnvironmentObject`
* Reutilização de componentes
* Responsividade para iPad
* Boas práticas de versionamento e organização de código

---

## 📁 Estrutura de Pastas

```
StocPad/
├── Models/            # Modelos de dados como Equipamento e Movimentação
├── Views/             # Telas da aplicação
├── ViewModels/        # Lógicas de negócio das Views
├── Components/        # Componentes reutilizáveis (Botões, Cards, Inputs)
├── Resources/         # Imagens e assets
├── Utils/             # Extensões e helpers
└── README.md
```

---

## 📌 Funcionalidades (MVP)

* Cadastro de equipamentos
* Registro de movimentações
* Lista de registros por data ou tipo
* Filtros por tag
* Interface otimizada para iPad

---

## 🚀 Como rodar o projeto

1. Clone o repositório:

   ```bash
   https://github.com/caio11pessoa/StocPad.git
   ```
2. Abra o projeto no **Xcode 15+**
3. Selecione o **Simulator de iPad** ou conecte um dispositivo físico
4. Execute com `Cmd + R`

---

## 🤝 Contribuindo

Durante o desenvolvimento, siga o fluxo do GitFlow.

* Crie branches com prefixos como `feature/`, `bugfix/`, `hotfix/`
* Faça commits claros e objetivos
* Mantenha o código limpo e documentado
