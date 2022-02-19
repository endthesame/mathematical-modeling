---
# Front matter
title: "Презентация о выполнении лабораторной работы №2"
subtitle: "Построение математических моделей для выбора правильной стратегии при решении задач поиска."
author: "Терентьев Егор Дмитриевич"
group: "НФИбд-03-19"
institute: "Российский Университет Дружбы Народов, Москва, Россия"
teacher: "Дмитрий Сергеевич Кулябов"
date: "19.02.2022"

# Generic options
lang: ru-RU
toc-title: "Содержание"

# Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

# Pdf output format
toc: true # Table of contents
toc_depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
### Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Misc options
indent: true
header-includes:
  - \linepenalty=10 # the penalty added to the badness of each line within a paragraph (no associated penalty node) Increasing the value makes tex try to have fewer lines in the paragraph.
  - \interlinepenalty=0 # value of the penalty (node) added after each line of a paragraph.
  - \hyphenpenalty=50 # the penalty for line breaking at an automatically inserted hyphen
  - \exhyphenpenalty=50 # the penalty for line breaking at an explicit hyphen
  - \binoppenalty=700 # the penalty for breaking a line at a binary operator
  - \relpenalty=500 # the penalty for breaking a line at a relation
  - \clubpenalty=150 # extra penalty for breaking after first line of a paragraph
  - \widowpenalty=150 # extra penalty for breaking before last line of a paragraph
  - \displaywidowpenalty=50 # extra penalty for breaking before last line before a display math
  - \brokenpenalty=100 # extra penalty for page breaking after a hyphenated line
  - \predisplaypenalty=10000 # penalty for breaking before a display
  - \postdisplaypenalty=0 # penalty for breaking after a display
  - \floatingpenalty = 20000 # penalty for splitting an insertion (can only be split footnote in standard LaTeX)
  - \raggedbottom # or \flushbottom
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Презентация к лабораторной работе #2

# Подготовил: Терентьев Егор Дмитриевич 1032192875 НФИбд-03-19

# Прагматика выполнения

Scilab – это система компьютерной математики, которая предназначена для выполнения инженерных и научных вычислений.Знакомство со scilab значительно упростило процесс построение математических моделей для выбора правильной стратегии при решении задач поиска.

# Цель работы

Построение математических моделей для выбора правильной стратегии при решении задач поиска.

# Задачи для выполнения

## Условие задачи:

На море в тумане катер береговой охраны преследует лодку браконьеров.
Через определенный промежуток времени туман рассеивается, и лодка
обнаруживается на расстоянии 14.4 км от катера. Затем лодка снова скрывается в
тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость
катера в 4.7 раза больше скорости браконьерской лодки.

У меня был вариант 36, поэтому цифры были следующие:

- скорость катера больше скорости лодки в 4.7 раз
- расстояние 14.4

При выполненении данной лабораторной работы, нам нужно было:

- Провести рассуждения и вывод дифференциальных уравнений,
  если скорость катера больше скорости лодки в 4.7 раз, а расстояние 14.4
- Построить траекторию движения катера и лодки для двух случаев и задать
  самостоятельно начальные значения
- Определить по графику точку пересечения катера и лодки.

# Результаты выполнения

По ходу выполнения мы:

- ввели начальные значения для времени, места нахождения лодки браконьеров в
  момент обнаружения, места нахождения катера береговой охраны
- ввели полярные координаты
- затем нахожу расстояния x(Для двух случаев: x1 и x2)
- После того, как катер береговой охраны окажется на одном расстоянии от полюса, что и лодка, он должен сменить прямолинейную траекторию и начать двигаться вокруг полюса удаляясь от него со скоростью лодки v.
  Для этого скорость катера разложили на две составляющие: 1. радиальная скорость – это скорость, с которой катер удаляется от полюса 2. тангенциальная скорость – это линейная скорость вращения катера относительно полюса.

Решение исходной задачи свелось к решению системы из двух
дифференциальных уравнений:

![photo](img/solution_part1.png "решение лабораторной работы #2")

- затем следовало построить траекторию движения катера и лодки для двух случаев и задать самостоятельно начальные значения. По итогу вышло следующее:

Получаю график для первого случая:

![photo](img/graph_img_v1.png "график для первого случая")

Получаю график для второго случая:

![photo](img/graph_img_v2.png "график для второго случая")

Аналитечески нахожу точки пересечения для двух графиков:

![photo](img/solution_p5.png "значения точек пересечения")

# По итогу выполнения работы мы научились:

- Построение математических моделей для выбора правильной стратегии при решении задач поиска.
- Работать со scilab для постороения мат.моделей
