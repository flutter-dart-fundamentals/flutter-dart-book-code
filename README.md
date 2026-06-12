# Flutter and Dart Fundamentals: Build Cross-Platform Mobile Apps, Step by Step

Companion code repository for the book, published by Apress.

## Repository Structure

Each chapter of the book has its own folder:

    chapter_NN/
      snippets/     Complete, numbered code listings from the chapter
      exercises/    Starter files for the Try It Yourself exercises

## Code Listings

Files in `snippets/` are named to match the listing numbers in the book.
For example, `Listing_13-3.dart` is Listing 13-3 in Chapter 13. Each file
begins with a comment identifying the section and listing it comes from.

Chapters 2 through 7 contain pure Dart programs that run from the command
line. Chapters 8 through 27 contain Flutter apps; to run one, create a new
Flutter project and replace the contents of `lib/main.dart` with the listing.
Listings in Chapters 26 and 27 also require adding the `http` or
`shared_preferences` package with `flutter pub add`.

## Exercises

Files in `exercises/` contain the exercise description from the book as a
comment, followed by a starter stub. Solve each one by replacing the
`// your code here` placeholder with your own code.

## Requirements

- Dart SDK 3.0 or later
- Flutter SDK (for Chapters 8 through 27)
