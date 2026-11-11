# *********************** #
# AM1 WS 2026/2027 
# Übungsblatt Sitzung 3
# Verfasserin: Eva Scheel
# *********************** #

# Aufgabe: Führe die Aufgaben aus und ersetze die [BLANK]s mit em richtigen Code. 

library(tidyverse)

#-----------------------#
### 1. Daten einlesen ###
#-----------------------#

# Aufgabe: hier liest du die Daten vom Arbeitsblatt 2 ein (studierenden_groesse.ods)

data_students <- read.csv('datasets/studierenden_groesse.csv', sep='\t')

#--------------------------#
### 2. Daten überprüfen ###
#--------------------------#

# Aufgabe: überprüfe die Daten (siehe Sitzung 2)

summary(data_students)
sum(is.na(data_students))
colnames(data_students)
nrow(data_students)

#-----------------------------#
### 3. Grafiken mit ggplot2 ###
#-----------------------------#

## 3.1 Histogramm der Körpergroessen

# 3.1.1
# verwende dafür `geom_histogram()`

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram()

# 3.1.2 mit dem Argument "binwidth" kann man die Bingröße ändern. 
# Versuche unterschiedliche Größen aus und schau, was am besten passt 

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth=1)

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth=5)

# 3.1.3 ändere die Achsenbezeichnungen mit `labs()`

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth=5) + 
  labs(x='Größe in cm', y='Häufigkeit')

# 3.1.4 unterteile die Grafik in drei Facets: kurz, mittel und lange Haare

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_histogram(binwidth=5) + 
  labs(x='Größe in cm', y='Häufigkeit') + 
  facet_wrap(~haarlaenge)

## 3.2 Säulendiagramm der Haarlänge

data_students |>
  ggplot(aes(x=haarlaenge)) + 
  geom_bar() + 
  labs(x='Haarlänge', y='Häufigkeit')


## 3.3 Säulendiagramm der Geburtsmonate

data_students |>
  ggplot(aes(x=geburtsmonat)) + 
  geom_bar() + 
  labs(x='Geburtsmonat', y='Häufigkeit')

## 3.4 Dichtegrafik der Körpergrößen

# 3.4.1 Erstelle eine einfache Dichtegrafik mit `geom_density()`

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_density() + 
  labs(x='Größe in cm', y='Wahrscheinlichskeitdichte')

# 3.4.2 Benutze das Argument `fill` in `geom_density()`, um die Fläche einzufärben
# (Die Farbe der Linie bestimmt das Argument `color`)

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_density(fill='red') + 
  labs(x='Größe in cm', y='Wahrscheinlichskeitdichte')


# 3.4.3 Ändere die sichtbaren X-Koordinaten, um einen größeren Teil der Verteilung darzustellen

data_students |>
  ggplot(aes(x=groesse_cm)) + 
  geom_density(fill='red') + 
  labs(x='Größe in cm', y='Wahrscheinlichskeitdichte') + 
  xlim(min = 130, y=200)


