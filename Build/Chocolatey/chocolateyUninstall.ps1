try {

    . "$PSScriptRoot\Posh-CI-InvokeCiPlan\Uninstall.ps1"

    Write-ChocolateySuccess 'Posh-CI-InvokeCiPlan'

} catch {

    Write-ChocolateyFailure 'Posh-CI-InvokeCiPlan' $_.Exception.Message

    throw 
}
