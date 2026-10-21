# *********************** #
# AM1 WS 2026/2027 
# Übungsblatt Sitzung 2
# Verfasserin: Eva Scheel
# *********************** #

# Aufgabe: Fülle die [BLANK]s aus und führe den Code aus. Achtung, auch wenn die [BLANK]s mit 
# '' erscheinen, sind sie nicht zwingend "characters"/"strings"

#-----------------------#
### 1. Daten einlesen ###
#-----------------------#

# überprüfe den "working directory", wo R nach den Dateien "sucht"
getwd()

# lese die Daten als "data.frame" ein:
nettle_data <- read.csv(file = "nettle_1999_climate.csv", sep=",")

# mit class() siehst du, was für eine Art Objekt "nettle_data" ist
class(nettle_data)

# so funktioniert es auch, wieso?
nettle_data  <- read.csv("datasets/nettle_1999_climate.csv")

# überprüfe die Beschreibung der Funktion (deren Argumente und die Standardwerte)
?read.csv() # help(read.csv) funktioniert auchs

#-------------------------#
#   2. Daten überprüfen   #
#-------------------------#

# ersten 10 Zeilen: 
head(nettle_data, n = 10) 

# letzten 15 Zeilen
tail(nettle_data, n = 15) 

# Anzahl Zeilen und Spalten
nrow(nettle_data) 
ncol(nettle_data) 

# Übersicht vom Datensatz
summary(nettle_data) 

#-------------------------#
#   3. Daten verarbeiten  #
#-------------------------#

# Jetzt laden wir `tidyverse` für die nächsten Schritte 
library("tidyverse")

# Für unsere Studie interessen wir uns für die Variable "Area" nicht und 
# deshalb lassen wir sie weg

nettle_data_preprocessed <- nettle_data |> select(-Area)

# Nun wollen wir eine neue Spalte erstellen, um zwischen Ländern mit hoher Sprachdiversität
# und Sprachen mit niedriger Sprachdiversität zu unterscheiden

nettle_data_preprocessed <- nettle_data_preprocessed |>
  mutate(language_diversity = ifelse(Langs>80, 'high', 'low')) # der Wert 80 ist zufällig gewählt

# Man kann Sprachdiversität auch als "boolean" (TRUE/FALSE) ohne ifelse()-Statement kodieren:

nettle_data_preprocessed <- nettle_data_preprocessed |>
  mutate(high_diversity = Langs>80) # der Wert 80 ist zufällig gewählt

# "Länder", die mit 'G' anfangen, interessieren uns auch nicht (in der letzten Fassung war es "Sprache" statt "Länder", 
# diese Informationen haben wir jedoch nicht zur Verfügung)

nettle_data_preprocessed <- nettle_data_preprocessed |>
  filter(!str_starts(Country, 'G'))

#-------------------------#
#   3. Daten speichern    #
#-------------------------#


# Zuletzt speichern wir die Daten unter einem neuen Dateinamen

write.csv(nettle_data_preprocessed, "nettle_1999_climate_preprocessed.csv")





