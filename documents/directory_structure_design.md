# Directory Structure Design Philosophy

## 1. Overview

The directory of application adopts a structure that is separated by functionality. This structure aims to improve the scalability, maintainability, and testability of the application.

## 2. Main Directories

### 2.1 core

Contains common components and utilities shared across the entire application.

- `constants`: Constants used throughout the app
- `common_widgets`: Common widgets reusable throughout the application
- `extensions`: Extension methods to add functionality to existing Dart classes and types
- `exceptions`: Custom exception classes
- `native_bridge`: Calls processes written in native code
- `utils`: General-purpose processing and functions without screens used throughout the application

### 2.2 features

Directories separated by the main functions of the application. Each feature has the following structure:

- `data`: Data sources and repository implementations
- `domain`: Business logic and entities
- `view`: UI-related code (screens and widgets)

### 2.3 routes.dart

File containing the routing settings of the application.

## 3. Design Principles

### 3.1 Separation of Concerns

Each feature is treated as an independent module with minimal dependencies on other features.

### 3.2 Layered Architecture

Within each feature, clearly separate the data, domain, and presentation layers.

### 3.3 Dependency Direction

Dependencies always point inwards (towards the domain layer). The outer layers depend on the inner layers, but not vice versa.

## 4. Native Bridge

When bridging content implemented in native code, create directories for each function under `lib/core/native_bridge`.
