# halt immediately on any errors which occur in this module
$ErrorActionPreference = 'Stop'

function Invoke(

[String]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$AppeaseProjectRootDirPath,

[PSCustomObject]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$Parameters,

[String[]]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$TemplateSource){

    $PSBoundParameters.ProjectRootDirPath = $AppeaseProjectRootDirPath
    if($Parameters){
        $ParametersHashtable = @{}
        $Parameters.PSObject.Properties | %{$ParametersHashtable[$_.Name] = $_.Value}
        $PSBoundParameters.Parameters = $ParametersHashtable
    }

    [PsCustomObject]$PSBoundParameters | Invoke-AppeaseDevOp

    # handle errors
    if ($LastExitCode -ne 0) {
        throw $Error
    }
}

Export-ModuleMember -Function Invoke
