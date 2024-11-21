# Sports App

## Project Structure

1. Sources -> `src/main/abl`
1. Tests -> `src/test/abl`

## Databases Used

1. Sports

   - Created from a Sports2020 database from DLC (OpenEdge install location) as part of the build
   - Use Single User mode (`-1` option) to connect

1. Avengers
   - Created from `structure` (`.st`) and `schema` (`.df`) files as part of the build
     - Schema and Structure files -> `src/main/resources/avengers`
   - For the Unit tests, data is loaded from `data` (`.d`) files
     - Data files -> `src/test/resources/avengers`
     - Since OEDF doesn't have a task yet to load data files into a database, PCT ANT task is used
   - Use Single User mode (`-1` option) to connect

## Build the App

OEDF provides Gradle plugins for building `OpenEdge` projects. The entry point or the main build script in Gradle world is a `build.gradle` file. Refer to this OEDF documentation for more details - https://docs.progress.com/bundle/openedge-devops-framework/page/Learn-About-the-OpenEdge-DevOps-Framework.html

### Requirements

1. OpenEdge 12.2.x or later
1. Java 11 or later
1. Gradle 8.2.1
   - Gradle wrapper scripts are already provided as part of this project

**Notes**

- Follow this OEDF documentation for more details - https://docs.progress.com/bundle/openedge-devops-framework/page/Prerequisites.html
- The script used in this sample was tested with `OpenEdge 12.7` version but the same should be applicable for any `OpenEdge 12.2+` version
- For 11.7.x, OEDF is not certified. One should be able achieve a similar behavior by using ANT tasks provided by PCT and in DLC. Though, this might require extensive scripting and ANT tasks can become a little verbose

### Steps

1. Navigate to the `sports` folder. Know about the plugins and tasks used by following the `build.gradle` file
1. From a terminal, run the below command
   ```
   ./gradlew build -DDLC=<DLC-PATH>
   ```
1. To clean and build, use the below command
   ```
   ./gradlew clean build -DDLC=<DLC-PATH>
   ```
1. To run any other task,
   ```
   ./gradlew <task-name> -DDLC=<OepenEdge-install-path>
   ```

**Notes**

- You should use either `gradlew.bat` or `./gradlew` depending the type of the terminal and the OS
- For more details on the `Plugins` and the `Task Types` (and their configurations) refer to this - https://docs.progress.com/bundle/openedge-devops-framework/page/ABL-base-plugin.html
