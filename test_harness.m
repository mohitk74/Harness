modelName='Sample_Model';
open_system(modelName);
% Creating the test harness having source as 'From Workspace' and Sink 'Outport'
sltest.harness.delete(modelName, 'Sample_Model_Harness');
  sltest.harness.create(modelName, 'Name', 'Sample_Model_Harness', 'Source', 'From Workspace', 'Sink', 'Outport');
% Opening the test Harness model
sltest.harness.open(modelName,'Sample_Model_Harness');
harnessName = [modelName,'Sample_Model_Harness'];
if bdIsLoaded(harnessName)
    fprintf('Test harness %s is open.\n', harnessName);
else
    fprintf('Test harness %s is not open.\n', harnessName);
end
