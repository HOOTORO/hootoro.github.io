+++
title = "How-to YAGPDB"
description = "Setup amazing https://yagpdb.xyz/ bot to send interval based notification "
date = "2024-06-22T03:35:55.923Z"
preview = ""
draft = true
tags = [ ]
categories = [ "documentation", "guide" ]
permalink = "/yagpdb"
layout = ""
author = "HOOTORO"
type = "doc"
keywords = [ "bot", "discord", "notification" ]
slug = "yagpdb"
+++

## Yet Another Great Purpose Discord Bot

YAGPDB is great bot for sure. With a little knowledge of how templates work, You can do almost anything you ever want.

### Settings

![alt text](https://i.imgur.com/akCC3Xd.png)

Create CC

![alt text](https://i.imgur.com/6u23Dfo.png)

1. Choose hourly interval
2. Set the value of the trigger frequency during the 24h from midnight
3. destination channel
4. pick out unwanted intervals
5. pick out unwanted days
6. if this is still not enough, well you can add another layers of logic via code. Check snippets bellow

### Code snippets

#### Cursed realm & Nightmare Corridor

```go
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ $cur := toInt ( currentTime.UTC.Format "15") }}
{{ $remaining := sub 12 $cur }}
{{ $recipient := .Guild.GetRole 1112701089117122570 }}
{{ $footerText := joinStr "🕑" $remaining "hour(s) left"}}
 
{{ 
sendMessageNoEscape nil ( 
  complexMessage 
  "content" ( mentionRoleID $recipient.ID )
  "embed" (cembed
           "author" (sdict )
           "thumbnail" (sdict)
           "title" ""
           "color" 14445559
           "description" "" 
           "image" (sdict "url" "https://i.imgur.com/RLwzjMa.png")
           "footer" (sdict  "text" $footerText "icon_url" $kappa)
           "fields" (cslice)
           "timestamp" currentTime  
          ) 
)
}}
```

#### POE Bet

```go
{{ $recipient := .Guild.GetRole 1112701089117122570 }}
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ 
sendMessageNoEscape nil ( 
  complexMessage 
  "content" ( mentionRoleID $recipient.ID )
  "embed" (cembed
           "author" (sdict)
           "thumbnail" (sdict)
           "title" ""
           "color" 12245589
           "description" "" 
           "image" (sdict "url" "https://i.imgur.com/UEwyutf.png")
           "footer" (sdict  "text" "✅common choices ❎" "icon_url" $kappa)
           "fields" (cslice)
           "timestamp" currentTime  
          ) 
)
}}
```

#### Solo arena

```go
{{ $recipient := .Guild.GetRole 1112701089117122570 }}
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ $week := weekNumber currentTime }}
{{ $isOddWeek := mod $week 2 }}
{{ if gt $isOddWeek (toFloat 0) }}
  {{ 
  sendMessageNoEscape nil ( 
    complexMessage 
    "content" ( mentionRoleID $recipient.ID )
    "embed" (cembed
             "author" (sdict)
             "thumbnail" (sdict)
             "title" ""
             "color" 16764672
             "description" "" 
             "image" (sdict "url" "https://i.imgur.com/9RoHCq5.png")
             "footer" (sdict  "text" "1️⃣🆚1️⃣ Season ends in ~7 Hours 🕗🔞📵" "icon_url" $kappa)
             "fields" (cslice)
             "timestamp" currentTime  
            ) 
  )
  }}
{{end}}
```

#### Treasure Scramble

```go
{{ $recipient := .Guild.GetRole 1112701089117122570 }}
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ $week := weekNumber currentTime  }}
{{ $wd := currentTime.Weekday }}
{{ $isOddWeek := mod $week 2 }}
{{ $desc := "4️⃣ часа до старта расчетного раунда!" }} 
{{ if and (gt $isOddWeek (toFloat 0)) (eq (toInt $wd) 3) }}
 {{ $desc = "💢Не забываем выбирать дорогу🌀 ставим пачки по необходимости❄️⛈️" }} 
{{end}}
{{ 
  sendMessageNoEscape nil ( 
    complexMessage 
    "content" ( mentionRoleID $recipient.ID )
    "embed" (cembed
             "author" (sdict)
             "thumbnail" (sdict )
             "title" ""
             "color" 13734373
             "description" ""
             "image" (sdict "url" "https://i.imgur.com/s0v11M5.png")
             "footer" (sdict  "text" $desc  "icon_url" $kappa)
             "fields" (cslice 
                       (sdict "name" "Week #" "value" (str $week) "inline" true )
                       (sdict "name" "Day" "value" (str $wd) "inline" true )
                      )
             "timestamp" currentTime  
            ) 
  )
  }}
```

#### Misty Valley

```go
{{ $recipient := .Guild.GetRole 1252251875110162523 }}
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ $d := currentTime.Day }}
{{ if eq $d 11 }}
  {{ 
  sendMessageNoEscape nil ( 
    complexMessage 
    "content" ( mentionRoleID $recipient.ID )
    "embed" (cembed
             "title" ""
             "image" (sdict "url" "https://i.imgur.com/bQgRtwG.png")
             "timestamp" currentTime  
             "color" 12244432
             "fields" (cslice)           
             "footer" (sdict  "text" "❗  ТУМАНКА АЛЕРТ  ❗" "icon_url" $kappa)
            ) 
  )
  }}
{{end}}
```

#### Ghoulish Gallery & DragonForge Trials

```go
{{ $recipient := .Guild.GetRole 1252986013937176648 }}
{{ $kappa := "https://i.imgur.com/skvKU4y.png" }}
{{ 
  sendMessageNoEscape nil ( 
    complexMessage 
    "content" ( mentionRoleID $recipient.ID )
    "embed" (cembed
             "title" ""
             "image" (sdict "url" "https://i.imgur.com/OPjSkDm.png")
             "timestamp" currentTime  
             "color" 16711680
             "fields" (cslice)           
             "footer" (sdict  "text" "❗ resets today, so make sure to get it done  ❗" "icon_url" $kappa)
            ) 
  )
  }}
```
