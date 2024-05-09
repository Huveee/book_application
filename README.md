
# Book Tracking Application

## Project Overview
This project involves the development of a Book Tracking application that allows users to list, access details, and manage their reading lists. The application comprises three main pages: Home (Listing), Detail, and Reading List pages, and is designed to work seamlessly across phone, tablet, and web platforms.

## Features
- **Home Page:** Lists all books with their title, author, genre, image, and publication details fetched from an API.
- **Detail Page:** Displays comprehensive information about a book.
- **Reading List Page:** Allows users to view, reorder, and remove books from their reading list.

## Technical Specifications
- **API:** Uses data from [FakerAPI](https://fakerapi.it/api/v1/books?_quantity=100) to populate the book details.
- **Architecture:** Implements the MVVM (Model-View-ViewModel) architecture.
- **State Management:** Can be handled using Bloc, Provider, or Riverpod.
- **Navigation:** Utilizes the AutoRoute package for navigation.
- **Concurrency:** Employs isolates for HTTP requests and JSON parsing to enhance performance.
- **SkSL Warm-up:** Includes SkSL warm-up for optimal shader performance on chosen device platforms.
- **Responsive Design:** Ensures compatibility with various device sizes and orientations.

## Installation
To get started with this project:
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory and install dependencies:
   ```bash
   cd book_tracking_app
   flutter pub get
   ```

## Usage
To run the application:
```bash
flutter run
```

