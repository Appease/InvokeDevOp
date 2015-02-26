# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$PoshCIProjectRootDirPath,
[PSCustomObject][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$Variables,
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$ProjectRootDirPath){
    
    if($PoshCIProjectRootDirPath -ieq $ProjectRootDirPath){
        throw 
@"
Error Description: You are requesting the ci-plan invoke itself (which would cause infinite loop)
Suggestions: Make sure '$PoshCIProjectRootDirPath' and '$ProjectRootDirPath' are different values. 
             Right now they're both equal to $PoshCIProjectRootDirPath 
"@
    }
    
    # invoke Invoke-CIPlan
    Invoke-CIPlan -Variables $Variables -ProjectRootDirPath $ProjectRootDirPath

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-CIStep
