/*Задание
Для каждого автора вычислить суммарную стоимость книг S (имя столбца Стоимость),
а также вычислить налог на добавленную стоимость  для полученных сумм
(имя столбца НДС ) , который включен в стоимость и составляет k = 18%,
а также стоимость книг  (Стоимость_без_НДС) без него. Значения округлить до
двух знаков после запятой. В запросе для расчета НДС(tax)
и Стоимости без НДС(S_without_tax)

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

SELECT author,
       SUM(price * amount)                         AS Стоимость,
       ROUND(SUM(price * amount) * 0.18 / 1.18, 2) AS НДС,
       ROUND(SUM(price * amount) / 1.18, 2)        AS Стоимость_без_НДС
FROM book
GROUP BY author;
