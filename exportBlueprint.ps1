# Login first with Connect-AzAccount if not using Cloud Shell

# Get version '1.1' of the blueprint definition in the specified subscription
$bpDefinition = Get-AzBlueprint -ManagementGroupId '6b29189e-3d5d-4d76-970c-abe758468ae4' -Name 'Subscription-Governance' -Version '3.2'
Export-AzBlueprintWithArtifact -Blueprint $bpDefinition -OutputPath ./