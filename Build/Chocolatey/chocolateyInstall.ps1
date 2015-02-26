try {

    . "$PSScriptRoot\Posh-CI-InvokeCiPlan\Install.ps1"

    Write-ChocolateySuccess 'Posh-CI-InvokeCiPlan'

} catch {

    Write-ChocolateyFailure 'Posh-CI-InvokeCiPlan' $_.Exception.Message

    throw 
}
