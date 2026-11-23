$cer = Join-Path $PSScriptRoot "word-add-in-certificate.cer"
$cmd = "Import-Certificate -FilePath '$cer' -CertStoreLocation Cert:\LocalMachine\TrustedPublisher; Import-Certificate -FilePath '$cer' -CertStoreLocation Cert:\LocalMachine\Root"

# Trust the certificate (asks for administrator permission once)
Start-Process powershell -Verb RunAs -Wait -ArgumentList "-NoProfile -ExecutionPolicy Bypass -Command `"$cmd`""

# Install the add-in as the normal user
Start-Process (Join-Path $PSScriptRoot "setup.exe")
