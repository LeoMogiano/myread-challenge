# MyReads

`MyReads` es un proyecto de ejemplo construido con Flutter que implementa el patrón **BLoC** (Business Logic Component) para demostrar cómo estructurar una aplicación con **buenas prácticas** y una **arquitectura en capas**. Este proyecto está diseñado para ser modular, escalable y fácil de mantener, utilizando los principios de separación de responsabilidades.

[English](./README.md) | [Español](./README.es.md) | [Français](./README.fr.md) | [日本語](./README.jp.md)

## Descripción del Proyecto

El objetivo principal del proyecto es presentar un enfoque práctico para organizar una aplicación Flutter, implementando el patrón BLoC para manejar la lógica de negocios y asegurar una clara separación de capas. Además, se utilizan **archivos barril** para facilitar las exportaciones y mejorar la legibilidad del código.

El proyecto simula una aplicación de libros, donde los usuarios pueden navegar por diferentes pantallas relacionadas con libros, como una lista de libros, detalles, etc.

## Características

- **Arquitectura en Capas**:
  - **Bloc**: Manejo de la lógica de negocios con eventos y estados.
  - **Core**: Contiene la configuración principal y los proveedores globales de la aplicación, como el enrutador y los temas.
  - **Repositories**: Encapsulan el acceso a los datos (mock o APIs).
  - **Models**: Representación de los datos utilizados en la aplicación.
  - **Widgets**: Componentes reutilizables para la interfaz de usuario.
  - **Screens**: Páginas de la aplicación organizadas según funcionalidades.

  ## Capturas de Pantalla

| **Inicio** | **Detalle del Libro** |
|:-----------------------:|:-----------------------:|
| <img src="./screenshots/s1.png" width="200"> | <img src="./screenshots/s2.png" width="200"> |
