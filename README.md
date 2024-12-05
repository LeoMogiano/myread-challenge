# MyReads (English)

`MyReads` is a sample project built with Flutter that implements the **BLoC** (Business Logic Component) pattern to demonstrate how to structure an application using **best practices** and a **layered architecture**. This project is designed to be modular, scalable, and maintainable by adhering to the principles of separation of concerns.

[English](./README.md) | [Español](./README.es.md) | [Français](./README.fr.md) | [日本語](./README.jp.md)

## Project Description

The main goal of this project is to showcase a practical approach to organizing a Flutter application by implementing the BLoC pattern to handle business logic and ensure clear separation of layers. Additionally, **barrel files** are used to streamline exports and improve code readability.

The project simulates a book application where users can navigate through various book-related screens, such as a book list, details, etc.

## Features

- **Layered Architecture**:
  - **Bloc**: Manages business logic with events and states.
  - **Core**: Contains core app configurations and global providers like routing and themes.
  - **Repositories**: Encapsulate data access (mock or APIs).
  - **Models**: Represent the data used in the app.
  - **Widgets**: Reusable UI components.
  - **Screens**: App pages organized by functionality.

## Screenshots

| **Home** | **Book Detail** |
|:-----------------------:|:-----------------------:|
| <img src="./screenshots/s1.png" width="200"> | <img src="./screenshots/s2.png" width="200"> |