#JUNTA TODOS OS BANCOS DE DADOS
# Pegar o diretório atual
$scriptDirection = Split-Path $MyInvocation.MyCommand.Definition -Parent

# Arquivo de saída
$outputFile = Join-Path -Path $scriptDirection -ChildPath "migration.sql"

# Verifica se arquivo já existe. Se existir, deleta
if (Test-Path $outputFile) {
    Remove-Item $outputFile
}

# Pega o conteúdo dos arquivos .sql
$sqlFiles = Get-ChildItem -Path $scriptDirection -Filter *.sql | Sort-Object Name

# Concatena arquivos
foreach ($file in $sqlFiles) {
    Get-Content $file.FullName | Out-File -Append -FilePath $outputFile
    "GO" | Out-File -Append -FilePath $outputFile
}

Write-Host "Todos os arquivos foram combinados em $outputFile"
