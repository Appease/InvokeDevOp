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

#####Variables Parameter
a PSCustomObject representing variables of the ci-plan to be invoked
```PowerShell
[PSCustomObject][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$Variables
```

#####ProjectRootDirPath Parameter
a string representing the project root dir path of the ci-plan to be invoked
```PowerShell
[string][Parameter(Mandatory=$true,ValueFromPipelineByPropertyName=$true)]$ProjectRootDirPath
```

**What's the build Status?**
![](https://ci.appveyor.com/api/projects/status/icook8lx4ni7jf7u?svg=true)

