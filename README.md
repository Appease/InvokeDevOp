####What is it?

A [PoshDevOps](https://github.com/PoshDevOps/PoshDevOps) task for invoking a task group from another task group

####How do I install it?

```PowerShell
Add-PoshDevOpsTask -Name "YOUR-TASK-NAME" -PackageId "InvokeTaskGroup"
```

####What parameters are available?

#####Parameters
A Hashtable representing parameters of tasks to pass to the task group being invoked
```PowerShell
[Hashtable]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$Parameters
```

#####PackageSources
A String[] representing urls of package sources to pass to the task group being invoked
```PowerShell
[String[]]
[Parameter(
    ValueFromPipelineByPropertyName=$true)]
$PackageSources
```

#####ProjectRootDirPath
A String representing the path to the project root dir of the task group being invoked
```PowerShell
[String]
[ValidateNotNullOrEmpty()]
[Parameter(
    Mandatory=$true,
    ValueFromPipelineByPropertyName=$true)]
$ProjectRootDirPath
```

####What's the build status?
![](https://ci.appveyor.com/api/projects/status/43mnr72vy96metbb?svg=true)

