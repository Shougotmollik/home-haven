## 🪑 Furniture App

A modern Furniture E-Commerce App built with Flutter, implementing Clean Architecture, Cubit (BLoC) for state management, and GoRouter for navigation.
This project demonstrates scalable Flutter development practices with separation of concerns, testability, and production-ready patterns.


<img width="1600" height="960" alt="Screenshot 1" src="https://github.com/user-attachments/assets/fc1d50fb-5122-49b2-9aca-beaad6471d12" />


## App Tour  => https://shorturl.at/0xdxX

## ✨ Features

🏠 Onboarding & Authentication – User login & registration

🛋️ Product Listing – Browse furniture categories and products

🔍 Product Details – View product details with images, price, and description

🛒 Cart & Checkout – Add to cart, manage quantity, proceed to checkout

❤️ Wishlist & Favorites – Save favorite items for later

🔎 Search & Filters – Find products easily

📦 Order Management – Track placed orders

🌗 Dark & Light Mode – Adaptive theming


## 🏗️ Project Architecture

This project follows Clean Architecture with feature-based folder structure.


```
lib/
├── config/
│   ├── route/         # GoRouter configuration
│   ├── theme/         # App themes, colors, typography
│   └── di/            # Dependency injection setup
│
├── core/
│   ├── error/         # Exceptions & Failures
│   ├── utils/         # Helpers, constants
│   └── widgets/       # Reusable widgets
│
├── features/
│   ├── auth/          # Authentication (login, signup, profile)
│   ├── home/          # Product listing, categories
│   ├── product/       # Product details
│   ├── cart/          # Cart & checkout
│   ├── wishlist/      # Favorite items
│   └── order/         # Orders & tracking
│
└── main.dart          # Entry point
```
## 🌀 State Management – Cubit (BLoC)

- Each feature contains:

- Cubit → Manages UI state

- State → Represents current state (loading, success, error)

- Repository → Business logic, data handling

## 🧭 Navigation – GoRouter

Declarative routing

Handles nested navigation, authentication guards, and deep links.

```
final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.home,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/product/:id',
      name: RouteNames.productDetails,
      builder: (context, state) {
        final id = state.params['id']!;
        return ProductDetailsScreen(productId: id);
      },
    ),
  ],
);
```

## 🛠️ Tech Stack

- Flutter – UI framework

- Dart – Programming language

- Cubit (BLoC) – State management

- GoRouter – Navigation & routing

- Clean Architecture – Scalable codebase

- Equatable – Value equality in states

## 👨‍💻 Author
Developed with ❤️ by **[Shougot Mollik](https://github.com/Shougotmollik)**  

- 🌐 [LinkedIn](https://www.linkedin.com/in/shougotmollik/)  
- 🐙 [GitHub](https://github.com/Shougotmollik))  
- 💼 Flutter Developer | Clean Architecture Enthusiast  
