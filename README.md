# WikiTok

**Wikipedia x TikTok** - Discover knowledge in a fun and engaging way!
Made with Flutter, Riverpod, and MVVM + Clean Architecture.

Wikitok combines the vast knowledge of Wikipedia with the engaging format of TikTok.
Based on an original idea by Tyler Angert and James Cham, and initially developed in React by [Isaac Gemal](https://github.com/IsaacGemal/wikitok).

This flutter version serves as an architecture demonstration where each layer is correctly isolated (no data dependency in domain) and has a dedicated purpose (no useless layers that only call one below).

*Domain layer*:
- Entities: data definitions
- Repository interfaces: basic data manipulation operations
- Use cases: add intelligence above the repositories

*Data layer*:
- Data sources: basic data query and exception handling
- Repositories: handle several datasources in needed and convert data models to domain entities and encapsulate them into a Result (to force error handling)

*Presentation layer*:
- View models: retrieve data from usecases and prepare them for the views

## TODO

- Make better responsive design to ensure the app looks great on all devices.
- Expand test coverage.
- Logging.
- Theme and spacing centralization
