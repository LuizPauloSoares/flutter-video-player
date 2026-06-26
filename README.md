# 🎬 Flutter Video Player

Aplicativo Flutter que reproduz vídeos locais (assets) com controle de play/pause, desenvolvido como exercício prático de estudo do framework.

---

## 📱 Preview

> Player de vídeo com interface simples, botão de controle e suporte a vídeos em asset local.

---

## ✨ Funcionalidades

- ▶️ Reprodução de vídeo local (asset)
- ⏸️ Controle de play/pause via botão
- 📐 Aspect ratio automático do vídeo
- 🔄 Loading indicator enquanto o vídeo inicializa
- 🧹 Dispose correto do controller (sem memory leak)

---

## 🛠️ Tecnologias

| Tecnologia | Versão |
|---|---|
| Flutter | 3.x |
| Dart | 3.x |
| video_player | ^2.x |

---

## 📦 Dependências

```yaml
dependencies:
  flutter:
    sdk: flutter
  video_player: ^2.9.2
```

---

## 🚀 Como rodar

### Pré-requisitos
- Flutter SDK instalado
- Android Studio ou VS Code com extensão Flutter

### Passos

```bash
# 1. Clone o repositório
git clone https://github.com/lu1z-st/flutter-video-player.git

# 2. Entre na pasta
cd flutter-video-player

# 3. Instale as dependências
flutter pub get

# 4. Rode o app
flutter run
```

---

## 📁 Estrutura do projeto

```
flutter-video-player/
├── assets/
│   └── videos/
│       └── video_exemplo.mp4
├── lib/
│   └── main.dart
├── pubspec.yaml
└── README.md
```

---

## 🧠 O que aprendi

- Uso do `VideoPlayerController` para carregar e controlar vídeos
- Ciclo de vida com `initState` e `dispose`
- Uso de `setState` para atualizar a UI com base no estado do player
- Widget `AspectRatio` para manter a proporção correta do vídeo
- `StatefulWidget` na prática com lógica real

---

## 👤 Autor

**Luiz Paulo Soares**  
[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=flat&logo=linkedin&logoColor=white)](https://linkedin.com/in/luiz-paulo-soares/)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=flat&logo=instagram&logoColor=white)](https://instagram.com/lu1z_st)

---

## 📄 Licença

Este projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.
