$userId = 'vaishali_sharma@epam.com'
$pass = 'devops@1217'
$password=$pass|ConvertTo-SecureString -AsPlainText -Force
$cred = New-Object -TypeName System.Management.Automation.PSCredential($userId ,$password)
Login-AzureRmAccount -Credential $cred -TenantId "b41b72d0-4e9f-4c26-8a69-f949f367c91d"

cd C:\Users\vaishali_sharma\source\repos\WebApplication2\AzureResourceGroup1\bin\Debug\staging\AzureResourceGroup1

.\Deploy-AzureResourceGroup.ps1 -StorageAccountName 'stage75fd87b17e49457b929' -ResourceGroupName 'nileapp' -ResourceGroupLocation 'westeurope' -TemplateFile 'C:\Users\vaishali_sharma\source\repos\WebApplication2\AzureResourceGroup1\bin\Debug\staging\AzureResourceGroup1\website.json' -TemplateParametersFile 'C:\Users\vaishali_sharma\source\repos\WebApplication2\AzureResourceGroup1\bin\Debug\staging\AzureResourceGroup1\website.parameters.json' -ArtifactStagingDirectory '.' -DSCSourceFolder '.\DSC' -UploadArtifacts