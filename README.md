**What is it?**
A [Posh-CI](https://invokeciplanhub.com/Posh-CI/Posh-CI) step for  invoking [InvokeCiPlan.exe](https://msdn.microsoft.com/en-us/library/azure/gg433005.aspx)

**How do I use it?**

add an entry in your ci plans `Packages.config` file
```Xml
<packages>
  <package id="posh-ci-invokeciplan" />
  <!-- other dependencies snipped -->
</packages>
```

then just pass variables to Invoke-CIPlan according to the following parameters:

#####InvokeCiPlanParameters Parameter
an array of parameters to pass to InvokeCiPlan.exe
```PowerShell
[string[]][Parameter(ValueFromPipelineByPropertyName = $true)]$InvokeCiPlanParameters
```

**What's the build Status?**
![](https://ci.appveyor.com/api/projects/status/phacee4vlkx4yg57?svg=true)

