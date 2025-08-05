# my_first_app

A new Flutter project.

This project is a showcase of my understanding regarding mvvm pattern project like.

lib/
│── core/
│ ├── utils/
│ └── services/
│
│── data/
│ ├── models/
│ ├── network/
│ └── repositories/
│
│── ui/
│ ├── features/
│ │ ├── home/
│ │ │ ├── home_view.dart
│ │ │ ├── home_viewmodel.dart
│ │ │ └── home_state.dart
│ │ └── widgets/
│ └── app.dart
│
└── main.dart

MVVM Components

Model (Data Layer) → Contains data structures and API services

View (UI Layer) → Displays the data to the user (Widgets/Pages)

ViewModel (Logic Layer) → Handles state management, API calls, and data processing for the view
