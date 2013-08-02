Simple registration with MySQL
=================

Задание: 

* Ruby 1.9.x
* Rails 3.2.x
* MySQL 5.x

В среде RoR разработать приложение, имеющее две страницы:

1. Страница регистрации пользователей, на которой присутствуют
   следующие поля:
   - Фамилия
   - Имя
   - Отчество
   - Дата рождения
   - Логин
   - Email
   - Пароль

   Для регистрации пользователей ввести следующие ограничения:

     - Логин иметь длинну от 5 до 32 символов и должен быть уникальным.
     - Пароль не должен быть пустым.

   При неверном вводе (например, пустой пароль или логин) на странице
   должно отображаться сообщение о соответствующей ошибке.

2. Страница, на которой можно просмотреть список всех зарегистрированных пользователей.
Вывод пользователей сделать таблицей.

Для хранения пользователей необходимо использовать СУБД MySQL.

----------------------------

* Ruby 1.9.3p286
* Rails 3.2.13
* MySQL 5.5.32

Пароль к MySQL задается в config/database.yml

screenshots:

+ http://joxi.ru/Jj37Udg5CbA4PympU_8
+ http://joxi.ru/Zj37Udg5CbAcP1EOIAs
+ http://joxi.ru/kD37Udg5CbAiPyYzw5M

