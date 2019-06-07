## Ruby on Rails вычислительная практика первого курса КБТУ

> Ссылки: 
  * Основная информация по ruby on rails на русском: http://rusrails.ru/
  * Курс по ruby: https://www.codecademy.com/learn/learn-ruby
  * Курс по ruby on rails: https://www.codecademy.com/learn/learn-rails

> Чтобы запустить проект
  
  * запустить установку гемов `bundle install`;
  * изменить `GameFile`, если у вас `sqlite3`;
   * изменить `database.yml` на 
``` 
default: &default
  adapter: sqlite3
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  timeout: 5000
development:
  <<: *default
  database: db/development.sqlite3 
```
  * прогнать миграцию `rails db:migrate`;
  * прогнать сиды `rails db:seed`;
  * запустить сервер `rails s`.
