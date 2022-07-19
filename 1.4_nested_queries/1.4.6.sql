/*Задание
Посчитать сколько и каких экземпляров книг нужно заказать поставщикам, чтобы
на складе стало одинаковое количество экземпляров каждой книги, равное значению
самого большего количества экземпляров одной книги на складе. Вывести название
книги, ее автора, текущее количество экземпляров на складе и количество
заказываемых экземпляров книг. Последнему столбцу присвоить имя Заказ. В
результат не включать книги, которые заказывать не нужно.

Структура и наполнение таблицы book
+---------+-----------------------+------------------+--------+--------+
| book_id | title                 | author           | price  | amount |
+---------+-----------------------+------------------+--------+--------+
| 1       | Мастер и Маргарита    | Булгаков М.А.    | 670.99 | 3      |
| 2       | Белая гвардия         | Булгаков М.А.    | 540.50 | 5      |
| 3       | Идиот                 | Достоевский Ф.М. | 460.00 | 10     |
| 4       | Братья Карамазовы     | Достоевский Ф.М. | 799.01 | 3      |
| 5       | Игрок                 | Достоевский Ф.М. | 480.50 | 10     |
| 6       | Стихотворения и поэмы | Есенин С.А.      | 650.00 | 15     |
+---------+-----------------------+------------------+--------+--------+
*/

SELECT title,
       author,
       amount,
       (
           SELECT MAX(amount)
           FROM book
       ) - amount AS Заказ
FROM book
WHERE amount < (
    SELECT MAX(amount)
    FROM book
);
