# Usage of docker-compose-create-nuxt-app

git clone git@github.com:sonatine726/docker-compose-create-nuxt-app.git .

docker compose up

cd .\docker_start_nuxt\

cp * ..\nuxtapp\

cd ..

rm -d docker_start_nuxt

cd .\nuxtapp\

docker compose up -d

* VSCode Dev Container can be use in nuxtapp directory. For using Dev Container, nuxt service should be rebuiled from VSCode.



docker build -t frontend-makeproject -f ./frontend\Dockerfile.make_project . && docker run --rm --mount "type=bind,source=${PWD}/frontend,target=/nuxt_makeproject" frontend-makeproject && docker rmi frontend-makeproject

docker build -t backend-makeproject -f ./backend\Dockerfile.make_project . && docker run --rm --mount "type=bind,source=${PWD}/backend,target=/fastapi_work" backend-makeproject && docker rmi backend-makeproject
