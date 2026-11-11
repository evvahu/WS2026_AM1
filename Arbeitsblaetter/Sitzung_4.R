# *********************** #
# AM1 WS 2026/2027 
# Übungsblatt Sitzung 4
# Verfasserin: Eva Scheel
# *********************** #

# Aufgabe: Führe die Aufgaben aus und ersetze die "[BLANK]"s mit em richtigen Code. 
# (oftmals müssen auch die Anführungszeichen entfernt werden)

library(tidyverse)

#-----------------------#
### 1. Daten einlesen ###
#-----------------------#

# Aufgabe: hier liest du die Daten vom Arbeitsblatt 2 ein (studierenden_groesse.ods)

data_students <- read.csv("[BLANK]", sep="[BLANK]")

#--------------------------#
### 2. Daten überprüfen ###
#--------------------------#

# Aufgabe: überprüfe die Daten (siehe Aufgabenblatt 2)

"[BLANK]"(data_students)
"[BLANK]"(data_students)
# ...

#-----------------------------#
### 3. Grafiken mit ggplot2 ###
#-----------------------------#

## 3.1 Histogramm der Körpergroessen

# 3.1.1
# verwende dafür `geom_histogram()`

data_students |>
  ggplot(aes(x="[BLANK]")) + 
  geom_histogram()

# 3.1.2 mit dem Argument "binwidth" kann man die Bingröße ändern. 
# Versuche unterschiedliche Größen aus und schau, was am besten passt 

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth="[BLANK]")


# 3.1.3 ändere die Achsenbezeichnungen mit `labs()`

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth="[BLANK]") + 
  labs(x="[BLANK]", y="[BLANK]")

# 3.1.4 unterteile die Grafik in drei Facets: kurz, mittel und lange Haare

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth=5) + 
  labs(x="[BLANK]", y="[BLANK]") + 
  facet_wrap(~"[BLANK]")

## 3.2 Säulendiagramm der Haarlänge mit `geom_bar`

data_students |>
  ggplot(aes(x="[BLANK]")) + 
  geom_bar() + 
  labs(x="[BLANK]", y="[BLANK]")


## 3.3 Säulendiagramm der Geburtsmonate

data_students |>
  ggplot(aes(x="[BLANK]")) + 
  geom_bar() + 
  labs(x="[BLANK]", y="[BLANK]")

## 3.4 Dichtegrafik der Körpergrößen

# 3.4.1 Erstelle eine einfache Dichtegrafik mit `geom_density()`

data_students |>
  ggplot(aes(x="[BLANK]")) + 
  geom_density() + 
  labs(x="[BLANK]", y="[BLANK]")

# 3.4.2 Benutze das Argument `fill` in `geom_density()`, um die Fläche einzufärben 
# (entweder Farbennamen wie red, blue,... oder HEX-Codes)
# (Die Farbe der Linie bestimmt das Argument `color`)

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_density(fill="[BLANK]") + 
  labs(x="[BLANK]", y="[BLANK]")


# 3.4.3 Ändere die sichtbaren X-Koordinaten, um einen größeren Teil der Verteilung darzustellen

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_density(fill="[BLANK]") + 
  labs(x="[BLANK]", y="[BLANK]") + 
  xlim(min = "[BLANK]", y="[BLANK]")


