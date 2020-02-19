# Hello Electron

## Installation

``` shell script
npm install electron --save-dev
npm install electron-packager -g #for build app
```

## How To Run

``` shell script
cd elec_source
npm start
```

## How To Build App

``` shell script
cd elec_source
electron-packager . fizzbuzz
```

## How To Run Test(Robotframework)

Before run test.

Please check the app package name is `fizzbuzz`

And the "fizzbuzz.app" package is put in `/Applications/` folder

``` shell script
./chromedriver80
robot hello.robot # another terminal
```
