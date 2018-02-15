sfdx force:org:create -f config/project-scratch-def.json -s -d 1
sfdx force:source:push
sfdx force:user:permset:assign -n VolunteeringApp
sfdx force:data:tree:import -p data/VolunteerImportPlan.json
sfdx force:apex:execute -f scripts/VolunteerSetupScript.cls
sfdx force:org:open