cd "c:\Users\Cleane\Desktop\Minha pagina\disciplinas"

$replacements = @{
    'IntroduÃ§Ã£o' = 'Introdução'
    'NormalizaÃ§Ã£o' = 'Normalização'
    'conteÃºdo' = 'conteúdo'
    'ExercÃ­cios' = 'Exercícios'
    'consolidaÃ§Ã£o' = 'consolidação'
    'AvaliaÃ§Ã£o' = 'Avaliação'
    'SeguranÃ§a' = 'Segurança'
    'InformaÃ§Ã£o' = 'Informação'
    'BÃ¡sico' = 'Básico'
    'clÃ¡usulas' = 'cláusulas'
    'ordenaÃ§Ã£o' = 'ordenação'
    'TransaÃ§Ãµes' = 'Transações'
    'AgregaÃ§Ã£o' = 'Agregação'
    'RevisÃ£o' = 'Revisão'
    'mÃªs' = 'mês'
    'Ãndices' = 'Índices'
    'OtimizaÃ§Ã£o' = 'Otimização'
    'execuÃ§Ã£o' = 'execução'
    'FunÃ§Ãµes' = 'Funções'
    'recuperaÃ§Ã£o' = 'recuperação'
    'ReplicaÃ§Ã£o' = 'Replicação'
    'nÃ£o-relacionais' = 'não-relacionais'
    'avanÃ§ados' = 'avançados'
    'VisualizaÃ§Ã£o' = 'Visualização'
    'RelatÃ³rios' = 'Relatórios'
    'IntegraÃ§Ã£o' = 'Integração'
    'Ãšltima' = 'Última'
    'â†' ' = '→ '
}

$files = Get-ChildItem *.html

foreach ($file in $files) {
    $content = [System.IO.File]::ReadAllText($file.FullName, [System.Text.Encoding]::UTF8)
    
    foreach ($key in $replacements.Keys) {
        $content = $content -replace [regex]::Escape($key), $replacements[$key]
    }
    
    [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
    Write-Host "✓ $($file.Name)"
}

Write-Host "Concluído!"
