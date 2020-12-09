# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: healthlake
using AWS.Compat
using AWS.UUIDs

"""
    CreateFHIRDatastore()

Creates a datastore that can ingest and export FHIR data.

# Required Parameters
- `DatastoreTypeVersion`: The FHIR version of the datastore. The only supported version is R4.

# Optional Parameters
- `ClientToken`: Optional user provided token used for ensuring idempotency.
- `DatastoreName`: The user generated name for the datastore.
- `PreloadDataConfig`: Optional parameter to preload data upon creation of the datastore. Currently, the only supported preloaded data is synthetic data generated from Synthea.
"""
create_fhirdatastore(DatastoreTypeVersion; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("CreateFHIRDatastore", Dict{String, Any}("DatastoreTypeVersion"=>DatastoreTypeVersion, "ClientToken"=>string(uuid4())); aws_config=aws_config)
create_fhirdatastore(DatastoreTypeVersion, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("CreateFHIRDatastore", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DatastoreTypeVersion"=>DatastoreTypeVersion, "ClientToken"=>string(uuid4())), args)); aws_config=aws_config)

"""
    DeleteFHIRDatastore()

Deletes a datastore. 

# Optional Parameters
- `DatastoreId`:  The AWS-generated ID for the datastore to be deleted.
"""
delete_fhirdatastore(; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DeleteFHIRDatastore"; aws_config=aws_config)
delete_fhirdatastore(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DeleteFHIRDatastore", args; aws_config=aws_config)

"""
    DescribeFHIRDatastore()

Gets the properties associated with the FHIR datastore, including the datastore ID, datastore ARN, datastore name, datastore status, created at, datastore type version, and datastore endpoint.

# Optional Parameters
- `DatastoreId`: The AWS-generated datastore id. This is part of the ‘CreateFHIRDatastore’ output.
"""
describe_fhirdatastore(; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DescribeFHIRDatastore"; aws_config=aws_config)
describe_fhirdatastore(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DescribeFHIRDatastore", args; aws_config=aws_config)

"""
    DescribeFHIRImportJob()

Displays the properties of a FHIR import job, including the ID, ARN, name, and the status of the datastore.

# Required Parameters
- `DatastoreId`: The AWS-generated ID of the datastore.
- `JobId`: The AWS-generated job ID.

"""
describe_fhirimport_job(DatastoreId, JobId; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DescribeFHIRImportJob", Dict{String, Any}("DatastoreId"=>DatastoreId, "JobId"=>JobId); aws_config=aws_config)
describe_fhirimport_job(DatastoreId, JobId, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("DescribeFHIRImportJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DatastoreId"=>DatastoreId, "JobId"=>JobId), args)); aws_config=aws_config)

"""
    ListFHIRDatastores()

Lists all FHIR datastores that are in the user’s account, regardless of datastore status.

# Optional Parameters
- `Filter`: Lists all filters associated with a FHIR datastore request.
- `MaxResults`: The maximum number of datastores returned in a single page of a ListFHIRDatastoresRequest call.
- `NextToken`: Fetches the next page of datastores when results are paginated.
"""
list_fhirdatastores(; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("ListFHIRDatastores"; aws_config=aws_config)
list_fhirdatastores(args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("ListFHIRDatastores", args; aws_config=aws_config)

"""
    StartFHIRImportJob()

Begins a FHIR Import job.

# Required Parameters
- `ClientToken`: Optional user provided token used for ensuring idempotency.
- `DataAccessRoleArn`: The Amazon Resource Name (ARN) that gives Amazon HealthLake access permission.
- `DatastoreId`: The AWS-generated datastore ID.
- `InputDataConfig`: The input properties of the FHIR Import job in the StartFHIRImport job request.

# Optional Parameters
- `JobName`: The name of the FHIR Import job in the StartFHIRImport job request.
"""
start_fhirimport_job(ClientToken, DataAccessRoleArn, DatastoreId, InputDataConfig; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("StartFHIRImportJob", Dict{String, Any}("ClientToken"=>ClientToken, "DataAccessRoleArn"=>DataAccessRoleArn, "DatastoreId"=>DatastoreId, "InputDataConfig"=>InputDataConfig); aws_config=aws_config)
start_fhirimport_job(ClientToken, DataAccessRoleArn, DatastoreId, InputDataConfig, args::AbstractDict{String, <:Any}; aws_config::AbstractAWSConfig=global_aws_config()) = healthlake("StartFHIRImportJob", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientToken"=>ClientToken, "DataAccessRoleArn"=>DataAccessRoleArn, "DatastoreId"=>DatastoreId, "InputDataConfig"=>InputDataConfig), args)); aws_config=aws_config)