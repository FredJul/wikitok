# WikiTok

**Wikipedia x TikTok** - Discover knowledge in a fun and engaging way!
Wikitok combines the vast knowledge of Wikipedia with the engaging format of TikTok.
Based on an original idea by Tyler Angert and James Cham, and initially developed in React by [Isaac Gemal](https://github.com/IsaacGemal/wikitok).

This Flutter version serves as an architecture demonstration.

## Architecture

Based on MVVM + Clean Architecture. Each layer is correctly isolated (no data dependency in domain) and has a dedicated purpose (no useless layers that only call one below).

*Domain layer*:
- Entities: data definitions
- Repository interfaces: basic data manipulation operations
- Use cases: add intelligence above the repositories

*Data layer*:
- Data sources: basic data query and exception handling
- Repositories: handle several datasources (when needed), convert data models to domain entities and encapsulate them into a Result (to force error handling)

*Presentation layer*:
- View models: retrieve data from usecases and prepare them for the views

## About the use of Riverpod

While using ChangeNotifiers/Blocs/Signals/whatever could have been possible, I decided to use Riverpod here for its simplificty (especially compared to Bloc) and its auto-dispose feature.

I however didn't use the generator since it does not bring much value, makes it more complex to navigate in the code and can noticeably slow down code generation on big projects.

## TODO

- Make better responsive design to ensure the app looks great on all devices.
- Expand test coverage.
- Logging.
- Theme and spacing centralization
