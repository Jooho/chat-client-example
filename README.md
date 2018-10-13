# ChatClient

This project was generated with [Angular CLI](https://github.com/angular/angular-cli) version 6.2.3.

## Development server

Run `ng serve` for a dev server. Navigate to `http://localhost:4200/`. The app will automatically reload if you change any of the source files.

## Image Build
Before execute script, please login to Docker Registry first.

*Base Image*
```
./build.sh base
```

*Android/Apple/V1*
```
./build.sh base
```

## Custom Build 

*Update DOCKER_IMAGE name*
```
vi build.sh
export DOCKER_IMAGE=docker.io/ljhiyh/chat-client-base
...
```


