Feature: Решение системы линейных алгебраических уравнений методом Крамера
  Scenario: Решение СЛАУ с тремя неизвестными и тремя уравнениями, система имеет одно решение
    Given Есть матрица 3x4
    And Она заполнена элементами:
      | 2 | 1 | -1 | 8 |
      | -3 | -1 | 2 | -11 |
      | -2 | 1 | 2 | -3 |
    When Я решаю СЛАУ методом Крамера
    Then В результате должен получить:
      | 2 | 3 | -1 |
    Scenario: Решение СЛАУ с тремя неизвестными и тремя уравнениями, нельзя получить решение методом Крамера
    Given Есть матрица 3x4
    And Она заполнена элементами:
      | 1 | 2 | 3 | 8 |
      | 2 | 4 | 6 | -11 |
      | 3 | 6 | 9 | -3 |
    When Я решаю СЛАУ методом Крамера
    Then Тогда определитель равен нулю и получаем null



