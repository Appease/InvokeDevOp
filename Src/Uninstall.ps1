# remove source
$installRootDirPath = "C:\Program Files\Posh-CI\Modules\Posh-CI-InvokeCiPlan"

# make idempotent
if(Test-Path "$installRootDirPath"){
    Remove-Item $installRootDirPath -Force -Recurse
}