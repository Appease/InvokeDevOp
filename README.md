####What is it?

A [Posh-CI](https://invokeciplanhub.com/Posh-CI/Posh-CI) step for  invoking [InvokeCiPlan.exe](https://msdn.microsoft.com/en-us/library/azure/gg433005.aspx)

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "Posh-CI-InvokeCIPlan"
```

####What parameters are available?

#####Variables
a PSCustomObject representing variables of the ci-plan to be invoked
```PowerShell
[PSCustomObject][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$Variables
```

#####ProjectRootDirPath
a string representing the project root dir path of the ci-plan to be invoked
```PowerShell
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$ProjectRootDirPath
```

####What's the build Status?
![](https://ci.appveyor.com/api/projects/status/icook8lx4ni7jf7u?svg=true)

