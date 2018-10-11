## BUILD


### Base Image ###

This image contains all dependencies so if you add new dependencies, you need to build base image first.

#### Script ####
```
./build.sh base
```


### Chat Client V1/android/apple ###

After update source, you need to move `node_modules` to somewhere because our base image has those dependencies.

#### Script ####
```
./build.sh
```

 

