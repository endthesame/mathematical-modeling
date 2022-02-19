---
# Front matter
title: "Лабораторная работа 2"
author: "Терентьев Егор Дмитриевич, НФИбд-03-19"

# Generic otions
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

<h1 align="center">
<p>РОССИЙСКИЙ УНИВЕРСИТЕТ ДРУЖБЫ НАРОДОВ 
<p>Факультет физико-математических и естественных наук  
<p>Кафедра прикладной информатики и теории вероятностей
<p>ОТЧЕТ ПО ЛАБОРАТОРНОЙ РАБОТЕ №2
<br></br>
<h2 align="right">
<p>дисциплина: Математическое моделирование
<p>Преподователь: Кулябов Дмитрий Сергеевич
<p>Студент: Терентьев Егор Дмитриевич
<p>Группа: НФИбд-03-19
<br></br>
<br></br>
<h1 align="center">
<p>МОСКВА
<p>2022 г.
</h1>

# **Цель работы**

Построение математических моделей для выбора правильной стратегии при решении задач поиска.

# **Теоретическое введение**

Scilab – это система компьютерной математики, которая предназначена для выполнения инженерных и научных вычислений, таких как: решение нелинейных уравнений и систем; решение задач линейной алгебры; решение задач оптимизации; дифференцирование и интегрирование; задачи обработка экспериментальных данных.

# **Условия задачи**

На море в тумане катер береговой охраны преследует лодку браконьеров. Через определенный промежуток времени туман рассеивается, и лодка обнаруживается на расстоянии 14.4 км от катера. Затем лодка снова скрывается в тумане и уходит прямолинейно в неизвестном направлении. Известно, что скорость катера в 4,7 раза больше скорости браконьерской лодки.

# **Выполнение лабораторной работы**

Вариант 36

**_1 Вывод уравнения движения катера_**

Принимаем за t0 = 0, **X**0л = 0 место нахождения лодки браконьеров в момент обнаружения, **X**0к = 14.4 место нахождения катера береговой охраны относительно лодки браконьеров в момент обнаружения лодки.

Затем ввожу полярные координаты, считая что полюс - точка обнаружения лодки браокньеров **X**л0(тетта = **X**ло = 0), а полярная ось r проходит через точку нахождения катера береговой охраны

![photo](img/solution_p1.png "ввод начальных данных и полярных координат")

Затем рассуждаю о том, что траектория катера должна быть такой, чтобы и катер, и лодка все время
были на одном расстоянии от полюса (_тетта_), только в этом случае траектория
катера пересечется с траекторией лодки.
Поэтому для начала катер береговой охраны должен двигаться некоторое
время прямолинейно, пока не окажется на том же расстоянии от полюса, что
и лодка браконьеров. После этого катер береговой охраны должен двигаться
вокруг полюса удаляясь от него с той же скоростью, что и лодка
браконьеров.

Составляю простое уравнение для нахождения расстояния _x_, для двух случаев (в зависимости от начального положения катера относительно полюса)

![photo](img/solution_p2.png "нахождение расстояний x1 и x2")

После того, как катер береговой охраны окажется на одном расстоянии от
полюса, что и лодка, он должен сменить прямолинейную траекторию и
начать двигаться вокруг полюса удаляясь от него со скоростью лодки _v_
Для этого скорость раскладываю на:

- радиальную скорость - это скорость, с которой катер удаляется от полюса
- тангенциальную скорость - это линейная скорость вращения катера
  относительно полюса
  Затем нахожу скорости

![photo](img/solution_p3.png "нахождение тангенциальной скорости")

Затем мое решение сводится к решению системы дифференциальных уравнений, я произвожу вычисления.

![photo](img/solution_p4.png "решение дифф уравнений")

**_2 Построение траектории движения катера в scilab и нахождение точек пересечения_**

Выполняю построение графика в scilab для первого случая

![photo](img/code_v1.png "код для первого случая")

Получаю график для первого случая:

![photo](img/graph_img_v1.png "график для первого случая")

Выполняю построение графика в scilab для второго случая

![photo](img/code_v2.png "код для второго случая")

Получаю график для второго случая:

![photo](img/graph_img_v2.png "график для второго случая")

Аналитечески нахожу точки пересечения для двух графиков:

![photo](img/solution_p5.png "значения точек пересечения")

# Выводы

После завершения данной лабораторной работы - я научился выполнять построения математических моделей для выбора правильной стратегии при решении задач поиска.

# Список литературы

1. Кулябов, Д.С. - Задача о погоне
