# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-CIStep(

[String]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$PoshCIProjectRootDirPath,

[Hashtable]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$Parameters,

[String[]]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$PackageSources,

[String]
[ValidateNotNullOrEmpty()]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$ProjectRootDirPath){
    
    if($PoshCIProjectRootDirPath -ieq $ProjectRootDirPath){
        throw 
@"
Error Description: You are requesting the ci-plan invoke itself (which would cause infinite loop)
Suggestions: Make sure '$PoshCIProjectRootDirPath' and '$ProjectRootDirPath' are different values. 
             Right now they're both equal to $PoshCIProjectRootDirPath 
"@
    }
        
    # invoke Invoke-CIPlan
Write-Debug `
@"
Invoking ci-plan with parameters:
$($Parameters | Out-String)
"@
    [PsCustomObject]$PSBoundParameters | Invoke-CIPlan

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-CIStep
