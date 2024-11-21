## Project Details - 'SportsREST'

- A Progress Developer Studio (PDS) project with REST services
- ABL code with Business Logic inside `AppServer/` folder
- `conf/` and and `tlr/` folder reperesent the corressponding folders from an PASOE ABL App structure
- Web app content inside `PASOEContent/` folder

## Build the App

OEDF provides Gradle plugins for building `OpenEdge` projects. The entry point or the main build script in Gradle world is a `build.gradle` file. Refer to this OEDF documentation for more details - https://docs.progress.com/bundle/openedge-devops-framework/page/Learn-About-the-OpenEdge-DevOps-Framework.html

### Requirements

1. OpenEdge 12.2.x or later
1. Java 11 or later (Should a version corresponding to the one required by OpenEdge version)
1. Gradle 8.2.1
   - Gradle wrapper scripts are already provided as part of this project

**Notes**

- Follow this OEDF documentation for more details - https://docs.progress.com/bundle/openedge-devops-framework/page/Prerequisites.html
- The script used in this sample was tested with `OpenEdge 12.8` version but the same should be applicable for any `OpenEdge 12.2+` version
- For 11.7.x, OEDF is not certified.

### Steps to run tasks

1. Navigate to the `SportsREST` folder. Know about the plugins and tasks used by following the `build.gradle` file
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
