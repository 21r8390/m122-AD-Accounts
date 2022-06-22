# Author: Joaquin Koller & Manuel Schumacher
# Datum: 22.05.2022
# Version: 1.0
# Funktionsbeschreibung: Menü zum Ausführen von Funktionen
# Parameter: keine
# Bemerkungen: 

# Konfigurationen und Methoden laden
. $PSScriptRoot\Config.ps1
. $PSScriptRoot\Add-Klassen.ps1
. $PSScriptRoot\Add-Lernende.ps1
. $PSScriptRoot\Add-OUs.ps1
. $PSScriptRoot\ConvertXML-ToCSV.ps1
. $PSScriptRoot\Get-Lernende.ps1
. $PSScriptRoot\Set-LernendeZuKlassen
<<<<<<< HEAD
. $PSScriptRoot\Remove-Lernende.ps1
. $PSScriptRoot\Remove-Klassen.ps1
. $PSScriptRoot\Set-Klassenverzeichnis
. $PSScriptRoot\Set-HomeVerzeichnis

# Zeigt das Menu in der Konsole an
function Show-Menu {
    Write-Log "Menü wird angezeigt" -Level DEBUG
    
=======
. $PSScriptRoot\Write-Log.ps1

# AD Modul importieren
try {
    Import-Module ActiveDirectory -ErrorAction Stop
}
catch {
    # Fehlermeldung anzeigen
    Write-Log "Das Modul ActiveDirectory konnte nicht installiert werden! Es ist nur unter Windows Server verfuer..." -Level ERROR
}

# Zeigt das Menu in der Konsole an
function Show-Menu {
  
>>>>>>> 8fe4b45205a9c83250658b8c5f46651ff104a8c5
    Write-Host "================ Projekt M122 AD-Accounts ================`n"
    
    Write-Host "1: XML zu CSV konvertieren"
    Write-Host "2: AD-Accounts für die Lernenden erstellen"
    Write-Host "3: AD-Gruppen für die Klassen erstellen"
    Write-Host "4: AD-Benutzer, welche nicht im CSV vorhanden sind, deaktivieren"
    Write-Host "5: AD-Gruppen welche nicht im CSV vorhanden sind, loeen"
    Write-Host "6: AD-Benutzer den Gruppen zuweisen"
    Write-Host "7: Klassenverzeichnis umbennen"
    Write-Host "8: Homeverzeichnis umbennen"
    Write-Host "`n"
    Write-Host "Exit: Geben Sie 'Exit' ein um das Programm zu verlasen`n"
}

<<<<<<< HEAD
# Mein Funktion startet das Programm.
function AD-automation {
    begin {
        Write-Log "Das Programm wurde gestartet" -Level INFO
        # AD Modul importieren
        try {
            Import-Module ActiveDirectory -ErrorAction Stop
        }
        catch {
            # Fehlermeldung anzeigen
            Write-Log "Das Modul ActiveDirectory konnte nicht installiert werden! Es ist nur unter Windows Server verfuegbar..." -Level ERROR
=======
# Solange die '3' nicht ausgewählt wurde wird das Menu angezeigt.
# Switchcase ruft die entsprechenden funktionen auf
do {
    Clear-Host
    Show-Menu
    $selection = Read-Host "Waen sie eine Option aus"
    switch ($selection) {
        '1' {
            # ConvertXML-ToCSV.ps1: XML zu CSV konvertieren
            Convert-XMLToCSV
            pause
        } 
        '2' {
            # Add-Lernende.ps1: AD-Accounts für die Lernenden erstellen
            Add-Lernende
            pause
        }
        '3' {
            # Add-Klassen.ps1: AD-Gruppen für die Klassen erstellen
            Add-Klassen
            pause
        } 
        '4' {
            # AD-Benutzer, welche nicht im CSV vorhanden sind, deaktivieren
            # TODO: Methode separieren aus Add-Lernende.ps1 ❗
            Clear-Host
            Write-Host "Noch nicht Verfuer"
            pause
>>>>>>> 8fe4b45205a9c83250658b8c5f46651ff104a8c5
        }
        # Die benötigten OUs werden erstellt.
        Add-OUs
    }

    process {
        # Switchcase ruft die entsprechenden funktionen auf
        while ($true) {
            Clear-Host
<<<<<<< HEAD
            Show-Menu
            $selection = Read-Host "Waehlen sie eine Option aus"
            switch ($selection.Trim()) {
                '1' {
                    # ConvertXML-ToCSV.ps1: XML zu CSV konvertieren
                    Write-Log "Option '$($selection.Trim())' wurde ausgewählt." -Level INFO
                    Convert-XMLToCSV
                    pause
                } 
                '2' {
                    # Add-Lernende.ps1: AD-Accounts für die Lernenden erstellen
                    Write-Log "Option '$($selection.Trim())' wurde ausgewählt." -Level INFO
                    Add-Lernende
                    pause
                }
                '3' {
                    # Add-Klassen.ps1: AD-Gruppen für die Klassen erstellen
                    Write-Log "Option '$($selection.Trim())' wurde ausgewählt." -Level INFO
                    Add-Klassen
                    pause
                } 
                '4' {
                    # Remove-Lernende.ps1: welche nicht im CSV vorhanden sind, deaktivieren
                    Write-Log "Option '$($selection.Trim())' wurde ausgewählt." -Level INFO
                    Remove-Lernende
                    pause
                }
                '5' {
                    # Remove-Klassen.ps1: welche nicht im CSV vorhanden sind. loeschen
                    Write-Log "Option '$($selection.Trim())' wurde ausgewählt." -Level INFO
                    Remove-Klassen
                    pause
                } 
                '6' {
                    # Set-LernendeZuKlassen.ps1: AD-Benutzer den Gruppen zuweisen
                    Write-Log "Option $($selection.Trim()) wurde ausgewählt." -Level INFO
                    Set-LernendeZuKlassen
                    pause
                }
                '7' {
                    # Set-Klassenverzeichnis.ps1: Benennt das Klassenverzeichnisse um.
                    Write-Log "Option $($selection.Trim()) wurde ausgewählt." -Level INFO
                    Set-Klassenverzeichnis
                    pause
                }
                '8' {
                    Write-Log "Option $($selection.Trim()) wurde ausgewählt." -Level INFO
                    Set-HomeVerzeichnis
                    pause
                }
                'exit' {
                    Write-Log "Das Programm wird beendet" -Level INFO
                    # Beendet das Programm
                    return
                }
                default {
                    Write-Log "Ungültige Eingabe" -Level INFO
                    Write-Host "Ungueltige Eingabe!" -ForegroundColor Yellow
                    pause
                }
            }
=======
            Write-Host "Noch nicht Verfuer"
            pause
        } 
        '6' {
            # Set-LernendeZuKlassen.ps1: AD-Benutzer den Gruppen zuweisen
            Set-LernendeZuKlassen
            pause
>>>>>>> 8fe4b45205a9c83250658b8c5f46651ff104a8c5
        }
    }
}
