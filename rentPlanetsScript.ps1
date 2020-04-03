param($key, $gasPrice)

$json = Get-Content -Raw -Path planets.json | ConvertFrom-Json
$data = '0x99fbf3a200000000000000000000000000000000000000000000000000000000000#####000000000000000000000000000000000000000000000000000009184e72a000'

if ([string]::IsNullOrEmpty($gasPrice)) {
	$gasPrice = 1
}

$gas = $gasPrice.PadRight(10, "0")

$json | foreach {
	$planetHex = "{0:x}" -f $_
	$planetData = $data -replace "#####", $planetHex
	
	$prms = "transaction:send --pk $key --to 0x5937512b02555967a01d78b0994f53168a985ac4 --data $planetData -n=mainnet --confirmation-blocks=3 --gasPrice=$gas"
	$printParams = $prms -replace $key, "xxx"	
		
	Write-Host "`nRunning the command for planet $_ :"
	Write-Host "eth" $printParams
	
	Start-Process -NoNewWindow -Wait -FilePath "eth" -ArgumentList $prms
	Write-Host "`n"
	
	Start-Sleep -s 2
}
