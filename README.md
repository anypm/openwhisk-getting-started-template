# OpenWhisk 101 - Sample Application Template
This project provides sample code for creating an application with Apache OpenWhisk on IBM Bluemix. It should take no more than 10 minutes to get up and running. Once you complete this sample application, you can move on to more complex serverless application use cases, such as those named _OpenWhisk 201_ or tagged as [_openwhisk-use-cases_](https://github.com/search?q=topic%3Aopenwhisk-use-cases+org%3AIBM&type=Repositories).

# Overview of the sample application (image)
To come.

## Flow of the application
1. The first step.
2. The second step.
3. The third step.
4. The fourth step.

# Installation
Setting up this sample involves configuration of OpenWhisk on IBM Bluemix. [If you haven't already signed up for Bluemix and configured OpenWhisk, review those steps first](docs/OPENWHISK.md).

### Set up supporting service, such as Cloudant
To come.

### Bind the service to OpenWhisk, if applicable
To come.

### Create OpenWhisk actions, triggers, and rules
To come.

### Perform any other configuration needed
To come.

### Use the `deploy.sh` script to automate the steps above
Clone this repository to your system, and change to the root directory and install the app using `deploy.sh`

This will be adjusted soon to use ['wskdeploy'](https://github.com/openwhisk/openwhisk-wskdeploy) tool, which uses a manifest to create the triggers, actions, and rules that power the sample.

```bash
./deploy.sh --install
```

## Testing
To come.

## Troubleshooting
The first place to check for errors is the OpenWhisk activation log. You can view it by tailing the log on the command line with `wsk activation poll` or you can view the [monitoring console on Bluemix](https://console.ng.bluemix.net/openwhisk/dashboard).

## Cleaning up
To come.

# Credits
To come.

# License
Licensed under the [Apache 2.0 license](LICENSE.txt).
