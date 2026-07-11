$folder = 'portfolio Images\Wedding'
$files = Get-ChildItem -Path $folder | Sort-Object Name | Select-Object -ExpandProperty Name
$entries = @()
for ($i = 0; $i -lt $files.Count; $i++) {
    $file = $files[$i]
    $path = 'portfolio%20Images/Wedding/' + [System.Uri]::EscapeDataString($file)
    $index = 18 + $i
    $entries += '    <div class="portfolio-item" data-cat="wedding" onclick="openLightbox(' + $index + ')">'
    $entries += '      <img src="' + $path + '" alt="Wedding">'
    $entries += '      <div class="portfolio-item-overlay"><div class="expand-icon"><svg viewBox="0 0 24 24"><path d="M15 3h6v6M9 21H3v-6M21 3l-7 7M3 21l7-7"/></svg></div></div>'
    $entries += '    </div>'
}
$entries | Set-Content -Path '.\\wedding_portfolio_html.txt'
$js = $files | ForEach-Object {
    $path = 'portfolio%20Images/Wedding/' + [System.Uri]::EscapeDataString($_)
    '  ''' + $path + ''','
}
$js | Set-Content -Path '.\wedding_portfolio_js.txt'
Write-Output 'Generated wedding_portfolio_html.txt and wedding_portfolio_js.txt'