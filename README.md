
**Project Documentation**
**Overview**
This documentation provides an overview of the project structure, design decisions, and instructions for running the app. This project is a weather application built with Flutter, using the OpenWeatherAPI for fetching weather data and Firebase for authentication and other backend services.

**Project Structure**

**1. Design Decisions**

**Architecture:** The app follows the MVVM (Model-View-ViewModel) architecture pattern.

**Model:** Represents data structures (CurrentWeather, WeatherCondition).

**ViewModel:** Manages state and business logic (WeatherViewModel).

**View:** Contains UI components (HomePage, WeatherCard, etc.).

**State Management:** Uses the Provider package for state management.

**API Integration**: Fetches weather data from OpenWeatherAPI and uses Firebase for authentication.

**2. Design Patterns:**

**Singleton Pattern:** Used in WeatherService to ensure a single instance is used for API requests.

**Factory Method:** Used in the CurrentWeather class to create instances from JSON data.

****3. How to Run the App**

**Prerequisites**

**Flutter:** Ensure that Flutter is installed on your machine. Flutter Installation Guide

**Firebase:** Set up a Firebase project and configure it for your app. Firebase Setup Guide

**API Key:** Obtain an API key from OpenWeatherAPI and configure it in WeatherService.

**4. Setup: Clone the Repository**

**bash**

git clone <repository-url>

cd <project-directory>

Install Dependencies

**bash**

flutter pub get

Configure Firebase

Download the google-services.json file from Firebase and place it in the android/app directory.

For iOS, follow the Firebase documentation to set up GoogleService-Info.plist.

**5. Configure API Key**


Open lib/services/weather_service.dart.

Replace YOUR_API_KEY_HERE with your actual OpenWeatherAPI key.

**6. Run the App**

**For Android:**

**bash**

flutter run
For iOS (requires macOS):

**bash**

flutter run

**7. Testing**

Unit Tests: Write unit tests for your view models and services.

Widget Tests: Test the UI components and their interactions.

Integration Tests: Test the complete functionality of the app, including API integration.

**8. Contributing**

Fork the Repository: Create your own fork of the repository.

Create a Branch: Create a new branch for your changes.

Submit a Pull Request: Open a pull request with a description of the changes.
