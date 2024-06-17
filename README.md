## Flutter Barber Shop App

This is a Dart Week project from Academia do Flutter that showcases a barber shop app with the following features:

* **User login:** Users can log in to the app using an API developed in Dart.
* **Schedule appointments:** Users can schedule appointments with their preferred barber at their chosen date and time.
* **Manage appointments:** Both users and barbershop administrators can view, add, and edit appointments.

The app is built using the MVVM architecture and utilizes the **Riverpod** state management library for efficient data handling. Additionally, it leverages a **JSON REST Server** to power the login and appointment scheduling functionalities.

### Features

* **User login:**
    * Users can create an account or log in using an existing account.
    * Authentication is handled by a Dart API powered by a JSON REST Server.
* **Schedule appointments:**
    * Users can view a list of available barbers and their schedules.
    * Users can select a barber, date, and time for their appointment.
    * Appointment data is managed through the JSON REST Server.
* **Manage appointments:**
    * Users can view their upcoming appointments.
    * Users can cancel or reschedule their appointments.
    * Barbershop administrators can view all appointments.
    * Barbershop administrators can add, edit, and delete appointments, all handled by the JSON REST Server.

### Architecture

The app is built using the MVVM architecture, a popular pattern for separating concerns in mobile app development. This pattern promotes code modularity and testability by clearly defining the responsibilities of each layer:

* **Model:** Manages the data of the app, including business logic and data access.
* **View:** Displays the UI to the user, responding to user interactions.
* **Viewmodel:** Acts as an intermediary between the view and the model, preparing data for the view and handling user actions.

### State Management with Riverpod

The app employs the **Riverpod** state management library to effectively manage the app's state across different components. Riverpod simplifies state management by offering a reactive approach that automatically updates the UI whenever the underlying data changes.

### JSON REST Server Integration

The app utilizes a **JSON REST Server** to handle user authentication and appointment scheduling. This server provides a RESTful API that allows the app to communicate with a backend database for storing and retrieving user and appointment data.

### Getting Started

To get started with the app, you will need to have the following:

* **Flutter SDK:** [https://docs.flutter.dev/get-started/install](https://docs.flutter.dev/get-started/install)
* **Android Studio or Visual Studio Code:** [https://code.visualstudio.com/download](https://code.visualstudio.com/download)
* **JSON REST Server:** A separate instance of the JSON REST Server needs to be running to handle API requests.

Once you have installed the prerequisites, you can clone the repository and run the following commands:

1. **Set up JSON REST Server:** Install and configure the JSON REST Server according to its documentation.
2. **Run the app:**
    * `flutter pub get` to install dependencies.
    * `flutter run` to launch the Flutter app.
