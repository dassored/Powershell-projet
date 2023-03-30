# Affichage de la liste des processus en cours d'exécution
get-process | format-table -AutoSize

# Demande à l'utilisateur d'entrer le nom du processus à tuer
$processName = Read-host "Entrez le nom du processus à tuer"

# Recherche du processus correspondant
$process = Get-process -Name $processName -EOFErrorAction SilentlyContinue

# Vérification si le processus a été trouvé
if ($process) {
    # Tuer le processus
    $process.kill()
    write-Host "Le processus $processName a été tué avec succès."
    } else {
         Write-Host "Le processus $processName n'a pas été trouvé."
    }