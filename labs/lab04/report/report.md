---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Язык разметки Markdown"
author: "Солдатов Алексей"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
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
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

 Освоить процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

1. Выполнение заданий для лабораторной работы
2. Выполнение заданий для самостоятельной работы

# Теоретическое введение

Здесь описываются теоретические аспекты, связанные с выполнением работы.

Например, в табл. @tbl:std-dir приведено краткое описание стандартных каталогов Unix.

: Описание некоторых каталогов файловой системы GNU Linux {#tbl:std-dir}

| Имя каталога | Описание каталога                                                                                                          |
|--------------|----------------------------------------------------------------------------------------------------------------------------|
| `/`          | Корневая директория, содержащая всю файловую                                                                               |
| `/bin `      | Основные системные утилиты, необходимые как в однопользовательском режиме, так и при обычной работе всем пользователям     |
| `/etc`       | Общесистемные конфигурационные файлы и файлы конфигурации установленных программ                                           |
| `/home`      | Содержит домашние директории пользователей, которые, в свою очередь, содержат персональные настройки и данные пользователя |
| `/media`     | Точки монтирования для сменных носителей                                                                                   |
| `/root`      | Домашняя директория пользователя  `root`                                                                                   |
| `/tmp`       | Временные файлы                                                                                                            |
| `/usr`       | Вторичная иерархия для данных пользователя                                                                                 |

Более подробно об Unix см. в [@gnu-doc:bash;@newham:2005:bash;@zarrelli:2017:bash;@robbins:2013:bash;@tannenbaum:arch-pc:ru;@tannenbaum:modern-os:ru].

# Выполнение лабораторной работы

1. Программа Hello world!

Создал каталог (рис. @fig:001).

![Создание каталога](image/1.png){#fig:001 width=70%}

Перешел в созданный каталог (рис. @fig:002).

![Переход в каталог](image/2.png){#fig:002 width=70%}

Создал текстовый файл с именем hello.asm (рис. @fig:003).

![Создание файла](image/3.png){#fig:003 width=70%}

Открыл этот файл с помощью текстового редактора gedit и ввел необходимый текст (рис. @fig:004).

![Работа с файлом](image/4.png){#fig:004 width=70%}

2. Транслятор NASM

Скомпилировал описанный текст и проверил корректность выполнения (рис. @fig:005).

![Компиляция](image/5.png){#fig:005 width=70%}

3. Расширенный синтаксис командной строки NASM

Выполнил данную команду и проверил что файлы были созданы (рис. @fig:006).

![Выполнение команды](image/6.png){#fig:006 width=70%}

4. Компоновщик LD

Передал объектный файл на обработку компоновщику и проверил, что исполняемый файл был создан (рис. @fig:007).

![Обработка объектного файла](image/7.png){#fig:007 width=70%}

Выполнил данную команду, проверил правильность выполнения (рис. @fig:008).

![Выполнение команды](image/8.png){#fig:008 width=70%}

5. Запуск исполняемого файла

Запустил исполняемый файл (рис. @fig:009).

![Запуск файла](image/9.png){#fig:009 width=70%}

# Выполнение заданий для самостоятельной работы

1. Создал переименованную копию и проверил правильность выполнения (рис. @fig:010).

![Создание копии](image/10.png){#fig:010 width=70%}

2. С помощью текстового редактора gedit внес изменения в текст программы (рис. @fig:011).

![Изменение текста](image/11.png){#fig:011 width=70%}

3. Оттранслировал полученный текст программы в объектный файл, выполнил компоновку объектного файла и запустил получившийся исполняемый файл (рис. @fig:012).

![Обработал файл](image/12.png){#fig:012 width=70%}

4. Скопировал файлы hello.asm и lab4.asm в локальный репозиторий в каталог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/, загрузил файлы на Github (рис. @fig:013).

![Скопировал и загрузил файлы на Github](image/13.png){#fig:013 width=70%}

Проверил правильность выполнения (рис. @fig:014).

![Проверка](image/14.png){#fig:014 width=70%}

# Выводы

Освоил процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Список литературы{.unnumbered}

::: {#refs}
:::
