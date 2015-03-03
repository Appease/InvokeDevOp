####What is it?

A [PoshCI](https://github.com/PoshCI/PoshCI) step for invoking a ci plan from another ci plan

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -PackageId "InvokeCIPlan"
```

####What parameters are available?

#####Parameters
```PowerShell
A Hashtable representing parameters of ci-steps to pass to the ci-plan being invoked
[Hashtable]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$Parameters
```

#####PackageSources
A String[] representing urls of package sources to pass to the ci-plan being invoked
```PowerShell
[String[]]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$PackageSources
```

#####ProjectRootDirPath
A String representing the path to the project root dir of the ci-plan being invoked
```PowerShell
[String]
[ValidateNotNullOrEmpty()]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$ProjectRootDirPath
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/icook8lx4ni7jf7u?svg=true)

