### Building a Unity Android project using Docker.
This is a test for Building a Unity Android project from Docker. I haven't tested it all due to some limiations on my machine.

##### Disclaimer
> I'm just exploring how it behaves. I found that installing the Unity editor directly using the installer instead of using the Unity hub might be better as the Hub is not yet compatible with docker. On the other hand, installing the submodules and setting them up (JDK, NDK, etc) could be a headache if using manual setup. 

##### Steps to test it
1. `git clone git@github.com:seprab/UnityDockerBuilder.git`
2. `cd UnityDockerBuilder`
2. `docker build -t unitybuilder .`
3. `docker run -it -d --name MyAndroidProject -d unitybuilder /bin/bash`
> The previous command will run the container in interactive mode. So, the next commands must be used from inside the container terminal.
4. `./scripts/unity-config.sh 2021.3.20f1 <your serial key> <your unity user> <you unity pass>`
5. `./project-builder.sh`

##### Another note
The editor version being used is hardcoded every where

To Do:
- Instead of hardcoding the Unity version everywhere, make it a input since when building the image.
- Automate the return the license key before destroying the container
