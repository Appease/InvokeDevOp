# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke-PoshDevOpsTask(

[String]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$PoshDevOpsProjectRootDirPath,

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
    
    if($PoshDevOpsProjectRootDirPath -ieq $ProjectRootDirPath){
        throw 
@"
Error Description: You are requesting the task group invoke itself (which would cause infinite loop)
Suggestions: Make sure '$PoshDevOpsProjectRootDirPath' and '$ProjectRootDirPath' are different values. 
             Right now they're both equal to $PoshDevOpsProjectRootDirPath 
"@
    }
        
    # invoke Invoke-PoshDevOpsTaskGroup
Write-Debug `
@"
Invoking task group with parameters:
$($Parameters | Out-String)
"@
    [PsCustomObject]$PSBoundParameters | Invoke-PoshDevOpsTaskGroup

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke-PoshDevOpsTask
