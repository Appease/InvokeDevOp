####What is it?

A [Posh-CI](https://github.com/Posh-CI/Posh-CI) step for invoking a ci plan from another ci plan

####How do I install it?

```PowerShell
Add-CIStep -Name "YOUR-CISTEP-NAME" -ModulePackageId "Posh-CI-InvokeCIPlan"
```

####What parameters are available?

#####Parameters
InvokeCIPlanParameters

an array of parameters to pass to Invoke-CIPlan

[string[]][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName = $true)]$InvokeCIPlanParameters

####What's the build Status?
![](https://ci.appveyor.com/api/projects/status/icook8lx4ni7jf7u?svg=true)

