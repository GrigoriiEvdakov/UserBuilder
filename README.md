# UserBuilder

* Ruby version: 3.3.6

* Rails version: 7.2.2

* Database: PostrgreSQL

* Tests: RSpec

* Linter: Rubocop

## Приложение для создания пользователей. Приложение контейнеризовано, покрыто тестами RSpec. Встроен линтер Rubocop. В приложении реализован следующий эндпоинт:

### POST "/create" - создание пользователя. Параметры body:
{
"user": {
"name": "Имя пользователя",
"patronymic": "Отчество пользователя",
"surname": "Фамилия пользователя",
"email": "Электронная почта пользователя",
"age": "Возраст пользователя",
"nationality": "Национальность пользователя",
"country": "Страна пользователя",
"gender": "Пол пользователя (male/female)",
"interests": ["Массив интересов, например: 'Музыка', 'Искусство'"],
"skills": ["Массив навыков, например: 'Ruby', 'Rails'"]
}
}

## Запуск:
### При первом взаимодействии с приложением:
```
docker-compose build
docker-compose up
```

### В контейнере создаем базу данных, прогоняем миграции (сиды не прописаны):
```
rails db:create
rails db:migrate
```

### В последующие разы приложение запускаем при помощи команды и просто работаем с ним:
```
docker-compose up
```

