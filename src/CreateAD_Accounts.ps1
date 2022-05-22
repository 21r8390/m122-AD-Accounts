# Author: Joaquin koller & Manuel Schumacher
# Datum: 22.05.2022
# Version: 1.5
# Funktionsbeschreibung: Erstellt pro Lernende/Lernender einen AD-Account in die OU **BZTF/Lernende** 
# Parameter: keine
# Bemerkungen: 
#-----

# Konfigurationen und Methoden laden
. $PSScriptRoot\Config.ps1
. $PSScriptRoot\ImportUsers.ps1

# Methode aus "ImportUsers", Importiert alle Schüler als Hashtable
$users = Get-SchulerFromCSV

# Erstellt die AD-Accounts
$users | ForEach-Object{
    New-ADUser -Name $_.Username -path "OU=lernende,OU=bztf, $($Config.DOMAIN)"
}