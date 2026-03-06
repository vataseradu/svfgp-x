$u = "https://webhook.site/token/7db4031e-3888-4442-8124-bb8c12cf39c2/requests?sorting=newest&per_page=20"
$r = Invoke-WebRequest -Uri $u -UseBasicParsing
$j = $r.Content | ConvertFrom-Json
Write-Host "TOTAL: $($j.total)"
foreach ($req in $j.data) {
    $d = $req.query.d
    if ($d) { Write-Host $d }
}
