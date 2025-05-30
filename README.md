# 👾 RickandmortyDemo

RickandmortyDemo is a SwiftUI application built using the MVVM architecture that allows users to
fetch, display, and interact with characters from the "Rick and Morty" universe. The project uses
`Kingfisher` for asynchronous image loading and `CocoaPods` for dependency management.

---

## 🚀 Key Features

- Fetch character list from a public API
- Display character cards with image, name, gender, and status
- Asynchronous image loading using Kingfisher
- Responsive interface powered by SwiftUI
- Clean MVVM architecture
- Reusable UI components
- Button to navigate and watch episodes
- Characters marked as DEAD are displayed in grey color

---

## 📁 Project Structure

```
RickandmortyDemo/
│
├── App/                        # Application entry point
│   └── RickandmortyDemoApp.swift
│
├── Models/                     # Data models and error types
│   ├── Character/
│   │   ├── Character.swift
│   │   └── CharacterResponse.swift
│   └── Errors/
│       ├── AlertError.swift
│       └── APIError.swift
│
├── ViewModels/                 # API interaction and state management
│   └── CharactersViewModel.swift
│
├── Views/                      # UI and character components
│   ├── Character/
│   │   ├── CharacterImageView.swift
│   │   ├── CharacterRowView.swift
│   │   ├── CharactersListView.swift
│   │   └── CharacterStatusView.swift
│   ├── Components/
│   │   └── WatchEpisodesButton.swift
│   └── Modifiers/
│       └── ViewModifiers.swift
│
├── Services/                   # API service layer
│   └── APIService.swift
│
├── Resources/                  # Colors and assets
│   ├── Assets.xcassets
│   └── Color.swift
│
├── Preview Content/           # SwiftUI preview content
│
└── Pods/                       # Dependencies managed by CocoaPods (e.g. Kingfisher)
```

---

## 🛠 Technologies Used

- Swift 5
- SwiftUI
- MVVM
- Combine
- CocoaPods
- [Kingfisher](https://github.com/onevcat/Kingfisher)
- REST API

---

## 📦 Getting Started

1. Install dependencies:

```bash
pod install
```

2. Open the `.xcworkspace` file:

```bash
open RickandmortyDemo.xcworkspace
```

3. Build and run in Xcode (version 14.0 or later recommended).

---

## 📸 Screenshots

<img src="https://github.com/user-attachments/assets/cf9ab408-acae-416a-a474-389be40d31e3" width="150"/>
<img src="https://github.com/user-attachments/assets/bc9a4d33-0749-4f85-b7ae-b36f7efe7653" width="150"/>
