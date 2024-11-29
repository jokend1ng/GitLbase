# Используем образ Liquibase
FROM liquibase/liquibase:4.30.0

# Устанавливаем рабочий каталог
WORKDIR /app

# Команда для выполнения миграций с правильными аргументами
CMD liquibase --logLevel=debug update --changeLogFile=init.sql --url=jdbc:postgresql://host.docker.internal:5432/postgres --username=postgres --password=postgres