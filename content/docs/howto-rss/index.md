---
title: "HOOTO: RSS"
description: Стелим соломку, не то что бы заранее.
author: HOOTORO
date: 2024-08-02T22:29:46.374Z
lastmod: 2024-08-08T20:43:22.064Z
preview: null
type: doc
weight: 3
draft: false
tags: []
categories:
    - documentation
slug: howto-rss
toc: true
tocOpen: true
wikipedia: https://ru.wikipedia.org/wiki/RSS
---

## Nani desu ka?

В разных версиях аббревиатура RSS имела разные расшифровки:

- **Rich Site Summary** (RSS 0.9x) — _обогащённая сводка сайта_
- **Really Simple Syndication** (RSS 2.x) — _очень простое распространение_

Подробнее на [вики](https://ru.wikipedia.org/wiki/RSS)

`Предпосылки`

:   Появилась на заре становления интернета. Во времена его стремительного развития и роста, а вместе с которыми росли и объемы доступных данных.
    Тогда появилась закономерная потребность в автоматизации по их сбору и обработке. Одним из решений был RSS.

`Идея`

:   Унификации формата хранения данных о последних публикациях. В разработанной спецификации приоритетом была простота реализации, дабы это имело бÓльшие шансы прижиться и легко интегрироваться в базовый инструментарий. так в общем то и вышло.

`Предназначение`

:   Автоматическое размещение/обновление файла в строго заданном формате, содержащего в себе весь актуальный контент.
    Доступный по единственному запросу.

`В настоящее время`

:   В 90% случаев, модуль генерации RSS есть во многих фреймворках из коробки и часто зашит в базовые шаблоны.
    А разработчик больше вообще не задумываться об этом. Что кстати приводит к тому, что файл может генерироваться, но визуально на сайте не отображаться. В chrome web store есть [плагин](https://chromewebstore.google.com/detail/get-rss-feed-url/kfghpdldaipanmkhfpdcjglncmilendn) для поиска RSS страницах.
    Но можно и по старинке ручками `F12` -> `Ctrl + F`
    Например тут тоже есть. Но сильно сомневаюсь, включал ли сам в настройках, или она по умолчанию включена 😂

`RSS-файл`

```xml
<!-- example src: hootoro.github.io -->
<rss xmlns:atom="http://www.w3.org/2005/Atom" version="2.0"> 
    <channel>
        <title>Bad Dev</title>
        <link>https://hootoro.github.io/</link>
        <description>Recent content on Bad Dev</description>
        <generator>Hugo -- gohugo.io</generator>
        <language>en-us</language>
        <lastBuildDate>Sun, 21 Jul 2024 11:04:55 +0000</lastBuildDate>
        <atom:link  href="https://hootoro.github.io/index.xml" 
                    rel="self" 
                    type="application/rss+xml"/>    
        <item>
            <title>Hookah. Tasted Tobacco!</title>
            <link>https://hootoro.github.io/docs/hookah-tasted-tobacco/</link>
            <pubDate>Sat, 22 Jun 2024 09:39:59 +0000</pubDate>
            <guid>https://hootoro.github.io/docs/hookah-tasted-tobacco/</guid>
            <description>Disclaimer
            Все нижеизложенное является строго субъективным опытом и специфичным вкусом автора: 
            50% сладкоежка, 30% фрукты/ягоды, 10% &#34;холодка&#34; и по 5% на гастро и кислинку. 
            Надеюсь данный референс поможет с релевантностью. 
            Критерии оценки весьма условные: 
            - Grade общее впечатление, 
            - Shades дрейф более/менее зашло относительно соседей. 

            Criteria Grade Meaning Shades 
            ➕/➖ 
            👑 Like! 
            💯💞/🔥✅ 🅰️ Choice to make. 
            🥈  /👍 🅱️ Take a place, average. 
            🥉  /👎 🍋 Taste, rarely desired.</description>
        </item>
        <item>
            <title>Travel to Kiev</title>
            <link>https://hootoro.github.io/blog/travel-kiev/</link>
            <pubDate>Sun, 06 Aug 2023 00:00:00 +0000</pubDate>
            <guid>https://hootoro.github.io/blog/travel-kiev/</guid>
            <description>
            Дело происходило в 2015г. 
            Действующие лица: 
            - Р - Рассказчик 
            - П - Пограничник 
            - Пр - Проводник 
            - К/О - Гражданка Казахстана/Оксана 
            - А - Гражданин Азербайджана/Азер 
            - Т - Гражданин Турции 
            Кассир - на вокзале Брянска 

            Часть 1. Границы ключ 
            
            На дворе стоял ноябрь. 
            В то время майдан уже прошел, но заваруха с ДНР и ЛНР была в самом разгаре, 
            с дуру обещал подруге из Киева приехать в гости. Делать нечего.
            Взял отпуск и поехать, так как обстановка в Киеве была вроде спокойная.</description>
        </item>
    </channel>
</rss>
```

## `Бенефиты`

- Широко распространен и есть на большинстве ресурсов публикационного характера.
  На том же [youtube](https://youtube.com) он персональный для канала. Если нет, часто есть опция интеграции (например [подписаться на Телеграмм канал](#telegram))
- Сама по себе возможно собрать в **одном месте все** потоки интересующей информации это уже очень круто.
- А чаще всего ими еще можно и вертеть всячески, ранжировать, по группам разбивать, фильтры разные настраивать, а в онлайн-сервисах и AI до кучи встроен.
- К ресурсам делается всего по одному тех. запросу. Избавляя от необходимости посещать ресурс. А следовательно вы и ваши данные о сетевой активности остаются при вас.
- После того как запись попала в ваш feed, оттуда ее уже никто не удалит, кроме вас. Своего рода система контроля версий! :grin:

## RSS Readers

Программы которые собирают такие файлы и предоставляют инструменты для систематизации данных/кастомизации представлений и есть RSS читалки.
Которых много и на любой вкус, но можно выделить две основные категории.

1) Онлайн-сервис (почти всегда бесплатного аккаунта более чем достаточно)
   - [feedly.com](https://feedly.com/)
   - [feeder.co](https://feeder.co/)
   - [inoreader.com](https://www.inoreader.com)
   - [и многие другие](https://www.google.com/search?q=rss+feed+reader)
2) Локальные - устанавливаются на конечный пользовательский девайс(ПК, телефон, любую ОС)

В целом, ПО легко находятся по запросу `rss reader` любым поисковиком (в т.ч. Google Play, App Store, и т.п.).
Алгоритм настройки у всех одинаковый

1. нашел ссылку на RSS на интересующем сайте
2. скормил выбранному RSS Reader
3. Profit!

`Как выглядит?`

:   ![rssguard](https://i.imgur.com/7TH2uvX.png)

Возможности и настройка могут варьироваться от используемого ПО/сервиса, но принципиальных отличий быть не должно. Кстати, благодаря общей спецификации, собранные ленты легко экспортируются и импортируются абсолютно в/из любой RSS-reader. Поэтому выбором ПО сильно заморачиваться не стоит и брать любую, переезд при необходимости плевое дело.
Главное найти интересующие рсс источники. Обычно, уверен, многие натыкались при веб-серфинге на схожую иконку — ![s](rss.svg), это и есть ссылка на RSS файл сайта.
Они указываются при настройке программы для получения/чтения RSS. Или чтобы не искать самому, можно при помощи [плагина](https://chromewebstore.google.com/detail/get-rss-feed-url/kfghpdldaipanmkhfpdcjglncmilendn)

## Установка

Отдал предпочтение локальному клиенту, в угоду приватности.
Выбор пал на [RSSguard](https://github.com/martinrotter/rssguard) банально потому что он был в scoop[^scoop].

Выполняем в консоли[^cmd]

```pwsh
scoop install rssguard
```

Или если scoop не установлен

```pwsh
winget install martinrotter.RSSGuard
```

## Настройка

1. [feed.opml](feed.opml) - моя текущая лента, в которой постарался собрать все провластным сми в одном стойле. При желании сохраняем себе.
2. Запускаем установленную программу, при первом запуске она предложит указать существующий аккаунт онлайн сервиса или создать локальный (опция RSS/RDF/ATOM/JSON)
    ![account](https://i.imgur.com/hSrSnab.png)
3. Указываем имя и меняем иконку(при желании)
4. Далее программа предложит добавить стартовый набор подписок(англоязычные ресурсы), жмем нет
    ![alt text](https://i.imgur.com/xjVXvH0.png)
5. В верхнем меню заходим в `Accounts -> <Имя аккаунта> -> Import Feeds`
    ![alt text](https://i.imgur.com/kAaVkwr.png)
6. Выбираем сохраненный ранее [feed.opml](feed.opml) и тыкаем `Import from file`
   ![alt text](https://i.imgur.com/u4hj5DF.png)
7. Без особого наслаждения, переодическии сверяемся с пропагандонской повесткой и по возможности спим спокойно

## Telegram?

Способ добавить телеграм канал в RSS читалку, есть и не один.
На своем опыте, пользовался url ниже, в который необходимо подставить уникальное имя канала и в таком виде скормить RSS читалке..

```md
https://rsshub.app/telegram/channel/<channel name>
```

`Пример`

:   Для канала "Пей Таблетки!" с адресом:
    <https://t.me/MedIQLab>
:   Ссылка на RSS будет:
    <https://rsshub.app/telegram/channel/MedIQLab>

Добавляем в читалку, наслаждаемся, по желанию отписываемся от всех каналов в телеге.
Помимо, эти ссылки позволяют смотреть содержание канала в браузере. И без авторизации :wink:

> _Бесплатно **читать Telegram** каналы без регистрации и смс_ _и **без** использования **Telegram**_
Achievement Unlocked

## Заключение

В век высоких технологий и сопутствующего им информационного шума, RSS оказался крайне удобным инструментом для управления потоками поступающей информации в общем и пропаганды в частности :joy:

***

[^scoop]: [scoop.sh](https://scoop.sh/) - упрощенный менеджер пакетов для Windows, облегчает установку программ из консоли.
[^cmd]: Попасть в консоль можно при помощи комбинации `Win + X` и выбрать опцию `Терминал`
