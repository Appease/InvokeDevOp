![](https://ci.appveyor.com/api/projects/status/43mnr72vy96metbb?svg=true)

####What is it?

An [Appease](http://appease.io) task template that invokes a devop

####How do I install it?

```PowerShell
Add-AppeaseTask `
    -DevOpName YOUR-DEVOP-NAME `
    -Name YOUR-TASK-NAME `
    -TemplateId InvokeDevOp
```

####What parameters are required?

#####DevOpName
description: a `string` representing the name of the devop to invoke

####What parameters are optional?

#####Parameters
description: a `PSCustomObject` representing the `Invoke-AppeaseDevOp` commands `-Parameters` parameter

#####TemplateSource
description: a `string[]` representing the `Invoke-AppeaseDevOp` commands `-TemplateSource` parameter
