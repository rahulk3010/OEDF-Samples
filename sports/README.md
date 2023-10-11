# Sports application

## Application structure
1. Sources  -> src/main/abl
1. Tests    -> src/test/abl

## Databases used
1. Sports
    - Created from a Sports2020 database from DLC (OpenEdge install location) as part of the build 
    - Use Single User mode (`-1` option) to connect
1. Avengers
    - Created from `structure` (`.st`) and `schema`(`.df`) files as part of the build 
    - For the Unit tests, data is loaded from data (`.d`) files

## Build the app
1. Navigate to the `sports` folder
1. From a terminal, run the below command
    ```
    ./gradlew build -DDLC=<DLC-PATH>
    ```
1. To clean and build, use the below command
    ```
    ./gradlew clean build -DDLC=<DLC-PATH>
    ```
**NOTE**: You should use either `gradlew.bat` or `./gradlew` depending the type of the terminal and the OS