## Базовый проект для начала разработки в dev контейнере vscode

### Запуск

- ssh:
    - переименовать .ssh.example -> .ssh
    - Скопировать ssh-ключи из систем в директорию .ssh в корне проекта

- .env
    - переименовать  .env.main -> .env
    - прописать переменные окружения

- launch.json
    - Сконфигурировать запуск проекта в дебаггере в файле .vscode/launch.json

- docker
    - в корне dockerfile проекта изменить name, email для git
    - ...

- Сбилдить девконтейнер в vscode
    - F1 -> Dev Containers: Rebuild and Reopen in Container