
1. git clone git@github.com:seprab/UnityDockerBuilder.git
2. cd UnityDockerBuilder
2. docker build -t unitybuilder .
3. docker run -it -d --name MyAndroidProject -d unitybuilder /bin/bash
4. ./scripts/unity-config.sh 2021.3.20f1 <your serial key> <your unity user> <you unity pass>
5. ./project-builder.sh