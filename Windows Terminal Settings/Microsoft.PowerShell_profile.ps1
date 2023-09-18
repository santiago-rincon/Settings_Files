# Ruta donde se debe copiar el archivo
# C:\Users\<usuario>\OneDrive\Documentos\WindowsPowerShell\Microsoft.PowerShell_profile.ps1


# -----------------------------------------------------------------------------------------#
# Cargar tema de Oh My Posh
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\amro.omp.json" | Invoke-Expression
# Posibles temas 
# amro
# space
# -----------------------------------------------------------------------------------------#


# -----------------------------------------------------------------------------------------#
# Importar módulo de iconos en la terminal
Import-Module -Name Terminal-Icons
# -----------------------------------------------------------------------------------------#


# -----------------------------------------------------------------------------------------#
# Asignación del alias cat
Del alias:cat
New-Alias -Name cat -Value bat
# -----------------------------------------------------------------------------------------#


# -----------------------------------------------------------------------------------------#
# Asignación del alias grep
New-Alias -Name grep -Value "Select-String -Pattern"
# -----------------------------------------------------------------------------------------#


# -----------------------------------------------------------------------------------------#
# Asignación del alias which
Function Which-Command {
    param ([string]$CommandName)
    (Get-Command $CommandName).Path
}
New-Alias -Name which -Value Which-Command
# -----------------------------------------------------------------------------------------#


# -----------------------------------------------------------------------------------------#

# -----------------------------------------------------------------------------------------#
