## Базовый проект для начала разработки в dev контейнере vscode

### Запуск

- Заменить все вхождения `test_base_proj` на название проекта

- ssh:
    - переименовать .ssh.example -> .ssh
    - Скопировать ssh-ключи из системы в директорию .ssh в корне проекта

- .env
    - переименовать .env.main -> .env
    - прописать переменные окружения

- launch.json
    - Сконфигурировать запуск проекта в дебаггере в файле .vscode/launch.json

- .devcontainer
    - в dockerfile.dev изменить name, email для git
    - в devcontainer.json и docker-compose.dev.yml изменить "service" и "container_name"

- Из корня проекта удалить директорию .git

- Сбилдить девконтейнер в vscode
    - F1 -> Dev Containers: Rebuild and Reopen in Container