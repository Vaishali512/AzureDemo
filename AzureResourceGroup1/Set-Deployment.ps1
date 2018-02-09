Param(
$userId,
$pass,
$storageaccountname,
$ResourceGroupName,
$resourcegrouplocation,
$Templatefile,
$TemplateParametersfile,
$hostingPlanName,
$Websitename,
$WebApplication1PackageFileName,
$WebApplication1PackageFolder,
$ServerErrorThrshold,
$ForbiddenRequestsThrshold,
$CPUHighAlertThreshold,
$HTTPqueueThreshold

)

#$userId = 'vaishali_sharma@epam.com'
$pass = 'devops@1217'
$password=$pass|ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object -TypeName System.Management.Automation.PSCredential($userId ,$password)
Login-AzureRmAccount -Credential $cred -TenantId "b41b72d0-4e9f-4c26-8a69-f949f367c91d"

#cd D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1

# .\Deploy-AzureResourceGroup.ps1 -StorageAccountName 'stage75fd87b17e49457b929' -ResourceGroupName 'mynewapp' -ResourceGroupLocation 'westeurope' -TemplateFile 'D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1\website.json' -TemplateParametersFile 'D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1\website.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC' -UploadArtifacts

#.\Deploy-AzureResourceGroup.ps1 -StorageAccountName $($env:storageaccountname) -ResourceGroupName $($env:resourcegroupname) -resourcegrouplocation $($env:ResourceGroupLocation) -TemplateFile $($env:Templatefile) -TemplateParametersFile 'D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1\website.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC' -UploadArtifacts


# .\Deploy-AzureResourceGroup.ps1 -StorageAccountName $storageaccountname -ResourceGroupName $resourcegroupname -ResourceGroupLocation $resourcegrouplocation -TemplateFile 'D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1\website.json' -TemplateParametersFile 'D:\VAISHALI\Devops\AzureCloud\AzureCloudDemo\AzureResourceGroup1\website.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC' -UploadArtifacts

.\Deploy-AzureResourceGroup.ps1 -StorageAccountName $storageaccountname -ResourceGroupName $ResourceGroupName -ResourceGroupLocation $resourcegrouplocation -TemplateFile $Templatefile -hostingPlanName $hostingPlanName -WebsiteName $Websitename -WebApplication1PackageFileName $WebApplication1PackageFileName -WebApplication1PackageFolder $WebApplication1PackageFolder -ServerErrorThrshold $serverErrorthreshold -ForbiddenRequestsThrshold $ForbiddenRequestsThrshold -CPUHighAlertThreshold $CPUHighAlertThreshold -HTTPqueueThreshold $HTTPqueueThreshold -TemplateParametersFile $TemplateParametersfile -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC' -UploadArtifacts
