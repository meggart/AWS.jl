# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: inspector

using AWS.Compat
using AWS.UUIDs
"""
    AddAttributesToFindings()

Assigns attributes (key and value pairs) to the findings that are specified by the ARNs of the findings.

# Required Parameters
- `attributes`: The array of attributes that you want to assign to specified findings.
- `findingArns`: The ARNs that specify the findings that you want to assign attributes to.

"""

add_attributes_to_findings(attributes, findingArns; aws_config::AWSConfig=global_aws_config()) = inspector("AddAttributesToFindings", Dict{String, Any}("attributes"=>attributes, "findingArns"=>findingArns); aws_config=aws_config)
add_attributes_to_findings(attributes, findingArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("AddAttributesToFindings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("attributes"=>attributes, "findingArns"=>findingArns), args)); aws_config=aws_config)

"""
    CreateAssessmentTarget()

Creates a new assessment target using the ARN of the resource group that is generated by CreateResourceGroup. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments. You can create up to 50 assessment targets per AWS account. You can run up to 500 concurrent agents per AWS account. For more information, see  Amazon Inspector Assessment Targets.

# Required Parameters
- `assessmentTargetName`: The user-defined name that identifies the assessment target that you want to create. The name must be unique within the AWS account.

# Optional Parameters
- `resourceGroupArn`: The ARN that specifies the resource group that is used to create the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.
"""

create_assessment_target(assessmentTargetName; aws_config::AWSConfig=global_aws_config()) = inspector("CreateAssessmentTarget", Dict{String, Any}("assessmentTargetName"=>assessmentTargetName); aws_config=aws_config)
create_assessment_target(assessmentTargetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("CreateAssessmentTarget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTargetName"=>assessmentTargetName), args)); aws_config=aws_config)

"""
    CreateAssessmentTemplate()

Creates an assessment template for the assessment target that is specified by the ARN of the assessment target. If the service-linked role isn’t already registered, this action also creates and registers a service-linked role to grant Amazon Inspector access to AWS Services needed to perform security assessments.

# Required Parameters
- `assessmentTargetArn`: The ARN that specifies the assessment target for which you want to create the assessment template.
- `assessmentTemplateName`: The user-defined name that identifies the assessment template that you want to create. You can create several assessment templates for an assessment target. The names of the assessment templates that correspond to a particular assessment target must be unique.
- `durationInSeconds`: The duration of the assessment run in seconds.
- `rulesPackageArns`: The ARNs that specify the rules packages that you want to attach to the assessment template.

# Optional Parameters
- `userAttributesForFindings`: The user-defined attributes that are assigned to every finding that is generated by the assessment run that uses this assessment template. An attribute is a key and value pair (an Attribute object). Within an assessment template, each key must be unique.
"""

create_assessment_template(assessmentTargetArn, assessmentTemplateName, durationInSeconds, rulesPackageArns; aws_config::AWSConfig=global_aws_config()) = inspector("CreateAssessmentTemplate", Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn, "assessmentTemplateName"=>assessmentTemplateName, "durationInSeconds"=>durationInSeconds, "rulesPackageArns"=>rulesPackageArns); aws_config=aws_config)
create_assessment_template(assessmentTargetArn, assessmentTemplateName, durationInSeconds, rulesPackageArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("CreateAssessmentTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn, "assessmentTemplateName"=>assessmentTemplateName, "durationInSeconds"=>durationInSeconds, "rulesPackageArns"=>rulesPackageArns), args)); aws_config=aws_config)

"""
    CreateExclusionsPreview()

Starts the generation of an exclusions preview for the specified assessment template. The exclusions preview lists the potential exclusions (ExclusionPreview) that Inspector can detect before it runs the assessment. 

# Required Parameters
- `assessmentTemplateArn`: The ARN that specifies the assessment template for which you want to create an exclusions preview.

"""

create_exclusions_preview(assessmentTemplateArn; aws_config::AWSConfig=global_aws_config()) = inspector("CreateExclusionsPreview", Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn); aws_config=aws_config)
create_exclusions_preview(assessmentTemplateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("CreateExclusionsPreview", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn), args)); aws_config=aws_config)

"""
    CreateResourceGroup()

Creates a resource group using the specified set of tags (key and value pairs) that are used to select the EC2 instances to be included in an Amazon Inspector assessment target. The created resource group is then used to create an Amazon Inspector assessment target. For more information, see CreateAssessmentTarget.

# Required Parameters
- `resourceGroupTags`: A collection of keys and an array of possible values, '[{\"key\":\"key1\",\"values\":[\"Value1\",\"Value2\"]},{\"key\":\"Key2\",\"values\":[\"Value3\"]}]'. For example,'[{\"key\":\"Name\",\"values\":[\"TestEC2Instance\"]}]'.

"""

create_resource_group(resourceGroupTags; aws_config::AWSConfig=global_aws_config()) = inspector("CreateResourceGroup", Dict{String, Any}("resourceGroupTags"=>resourceGroupTags); aws_config=aws_config)
create_resource_group(resourceGroupTags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("CreateResourceGroup", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceGroupTags"=>resourceGroupTags), args)); aws_config=aws_config)

"""
    DeleteAssessmentRun()

Deletes the assessment run that is specified by the ARN of the assessment run.

# Required Parameters
- `assessmentRunArn`: The ARN that specifies the assessment run that you want to delete.

"""

delete_assessment_run(assessmentRunArn; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentRun", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn); aws_config=aws_config)
delete_assessment_run(assessmentRunArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentRun", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn), args)); aws_config=aws_config)

"""
    DeleteAssessmentTarget()

Deletes the assessment target that is specified by the ARN of the assessment target.

# Required Parameters
- `assessmentTargetArn`: The ARN that specifies the assessment target that you want to delete.

"""

delete_assessment_target(assessmentTargetArn; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentTarget", Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn); aws_config=aws_config)
delete_assessment_target(assessmentTargetArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentTarget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn), args)); aws_config=aws_config)

"""
    DeleteAssessmentTemplate()

Deletes the assessment template that is specified by the ARN of the assessment template.

# Required Parameters
- `assessmentTemplateArn`: The ARN that specifies the assessment template that you want to delete.

"""

delete_assessment_template(assessmentTemplateArn; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentTemplate", Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn); aws_config=aws_config)
delete_assessment_template(assessmentTemplateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DeleteAssessmentTemplate", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn), args)); aws_config=aws_config)

"""
    DescribeAssessmentRuns()

Describes the assessment runs that are specified by the ARNs of the assessment runs.

# Required Parameters
- `assessmentRunArns`: The ARN that specifies the assessment run that you want to describe.

"""

describe_assessment_runs(assessmentRunArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentRuns", Dict{String, Any}("assessmentRunArns"=>assessmentRunArns); aws_config=aws_config)
describe_assessment_runs(assessmentRunArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentRuns", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArns"=>assessmentRunArns), args)); aws_config=aws_config)

"""
    DescribeAssessmentTargets()

Describes the assessment targets that are specified by the ARNs of the assessment targets.

# Required Parameters
- `assessmentTargetArns`: The ARNs that specifies the assessment targets that you want to describe.

"""

describe_assessment_targets(assessmentTargetArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentTargets", Dict{String, Any}("assessmentTargetArns"=>assessmentTargetArns); aws_config=aws_config)
describe_assessment_targets(assessmentTargetArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentTargets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTargetArns"=>assessmentTargetArns), args)); aws_config=aws_config)

"""
    DescribeAssessmentTemplates()

Describes the assessment templates that are specified by the ARNs of the assessment templates.

# Required Parameters
- `assessmentTemplateArns`: 

"""

describe_assessment_templates(assessmentTemplateArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentTemplates", Dict{String, Any}("assessmentTemplateArns"=>assessmentTemplateArns); aws_config=aws_config)
describe_assessment_templates(assessmentTemplateArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeAssessmentTemplates", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTemplateArns"=>assessmentTemplateArns), args)); aws_config=aws_config)

"""
    DescribeCrossAccountAccessRole()

Describes the IAM role that enables Amazon Inspector to access your AWS account.

"""

describe_cross_account_access_role(; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeCrossAccountAccessRole"; aws_config=aws_config)
describe_cross_account_access_role(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeCrossAccountAccessRole", args; aws_config=aws_config)

"""
    DescribeExclusions()

Describes the exclusions that are specified by the exclusions' ARNs.

# Required Parameters
- `exclusionArns`: The list of ARNs that specify the exclusions that you want to describe.

# Optional Parameters
- `locale`: The locale into which you want to translate the exclusion's title, description, and recommendation.
"""

describe_exclusions(exclusionArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeExclusions", Dict{String, Any}("exclusionArns"=>exclusionArns); aws_config=aws_config)
describe_exclusions(exclusionArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeExclusions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("exclusionArns"=>exclusionArns), args)); aws_config=aws_config)

"""
    DescribeFindings()

Describes the findings that are specified by the ARNs of the findings.

# Required Parameters
- `findingArns`: The ARN that specifies the finding that you want to describe.

# Optional Parameters
- `locale`: The locale into which you want to translate a finding description, recommendation, and the short description that identifies the finding.
"""

describe_findings(findingArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeFindings", Dict{String, Any}("findingArns"=>findingArns); aws_config=aws_config)
describe_findings(findingArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeFindings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("findingArns"=>findingArns), args)); aws_config=aws_config)

"""
    DescribeResourceGroups()

Describes the resource groups that are specified by the ARNs of the resource groups.

# Required Parameters
- `resourceGroupArns`: The ARN that specifies the resource group that you want to describe.

"""

describe_resource_groups(resourceGroupArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeResourceGroups", Dict{String, Any}("resourceGroupArns"=>resourceGroupArns); aws_config=aws_config)
describe_resource_groups(resourceGroupArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeResourceGroups", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceGroupArns"=>resourceGroupArns), args)); aws_config=aws_config)

"""
    DescribeRulesPackages()

Describes the rules packages that are specified by the ARNs of the rules packages.

# Required Parameters
- `rulesPackageArns`: The ARN that specifies the rules package that you want to describe.

# Optional Parameters
- `locale`: The locale that you want to translate a rules package description into.
"""

describe_rules_packages(rulesPackageArns; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeRulesPackages", Dict{String, Any}("rulesPackageArns"=>rulesPackageArns); aws_config=aws_config)
describe_rules_packages(rulesPackageArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("DescribeRulesPackages", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("rulesPackageArns"=>rulesPackageArns), args)); aws_config=aws_config)

"""
    GetAssessmentReport()

Produces an assessment report that includes detailed and comprehensive results of a specified assessment run. 

# Required Parameters
- `assessmentRunArn`: The ARN that specifies the assessment run for which you want to generate a report.
- `reportFileFormat`: Specifies the file format (html or pdf) of the assessment report that you want to generate.
- `reportType`: Specifies the type of the assessment report that you want to generate. There are two types of assessment reports: a finding report and a full report. For more information, see Assessment Reports. 

"""

get_assessment_report(assessmentRunArn, reportFileFormat, reportType; aws_config::AWSConfig=global_aws_config()) = inspector("GetAssessmentReport", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn, "reportFileFormat"=>reportFileFormat, "reportType"=>reportType); aws_config=aws_config)
get_assessment_report(assessmentRunArn, reportFileFormat, reportType, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("GetAssessmentReport", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn, "reportFileFormat"=>reportFileFormat, "reportType"=>reportType), args)); aws_config=aws_config)

"""
    GetExclusionsPreview()

Retrieves the exclusions preview (a list of ExclusionPreview objects) specified by the preview token. You can obtain the preview token by running the CreateExclusionsPreview API.

# Required Parameters
- `assessmentTemplateArn`: The ARN that specifies the assessment template for which the exclusions preview was requested.
- `previewToken`: The unique identifier associated of the exclusions preview.

# Optional Parameters
- `locale`: The locale into which you want to translate the exclusion's title, description, and recommendation.
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the GetExclusionsPreviewRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
"""

get_exclusions_preview(assessmentTemplateArn, previewToken; aws_config::AWSConfig=global_aws_config()) = inspector("GetExclusionsPreview", Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn, "previewToken"=>previewToken); aws_config=aws_config)
get_exclusions_preview(assessmentTemplateArn, previewToken, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("GetExclusionsPreview", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn, "previewToken"=>previewToken), args)); aws_config=aws_config)

"""
    GetTelemetryMetadata()

Information about the data that is collected for the specified assessment run.

# Required Parameters
- `assessmentRunArn`: The ARN that specifies the assessment run that has the telemetry data that you want to obtain.

"""

get_telemetry_metadata(assessmentRunArn; aws_config::AWSConfig=global_aws_config()) = inspector("GetTelemetryMetadata", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn); aws_config=aws_config)
get_telemetry_metadata(assessmentRunArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("GetTelemetryMetadata", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn), args)); aws_config=aws_config)

"""
    ListAssessmentRunAgents()

Lists the agents of the assessment runs that are specified by the ARNs of the assessment runs.

# Required Parameters
- `assessmentRunArn`: The ARN that specifies the assessment run whose agents you want to list.

# Optional Parameters
- `filter`: You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
- `maxResults`: You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListAssessmentRunAgents action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_assessment_run_agents(assessmentRunArn; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentRunAgents", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn); aws_config=aws_config)
list_assessment_run_agents(assessmentRunArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentRunAgents", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn), args)); aws_config=aws_config)

"""
    ListAssessmentRuns()

Lists the assessment runs that correspond to the assessment templates that are specified by the ARNs of the assessment templates.

# Optional Parameters
- `assessmentTemplateArns`: The ARNs that specify the assessment templates whose assessment runs you want to list.
- `filter`: You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
- `maxResults`: You can use this parameter to indicate the maximum number of items that you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListAssessmentRuns action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_assessment_runs(; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentRuns"; aws_config=aws_config)
list_assessment_runs(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentRuns", args; aws_config=aws_config)

"""
    ListAssessmentTargets()

Lists the ARNs of the assessment targets within this AWS account. For more information about assessment targets, see Amazon Inspector Assessment Targets.

# Optional Parameters
- `filter`: You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListAssessmentTargets action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_assessment_targets(; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentTargets"; aws_config=aws_config)
list_assessment_targets(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentTargets", args; aws_config=aws_config)

"""
    ListAssessmentTemplates()

Lists the assessment templates that correspond to the assessment targets that are specified by the ARNs of the assessment targets.

# Optional Parameters
- `assessmentTargetArns`: A list of ARNs that specifies the assessment targets whose assessment templates you want to list.
- `filter`: You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListAssessmentTemplates action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_assessment_templates(; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentTemplates"; aws_config=aws_config)
list_assessment_templates(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListAssessmentTemplates", args; aws_config=aws_config)

"""
    ListEventSubscriptions()

Lists all the event subscriptions for the assessment template that is specified by the ARN of the assessment template. For more information, see SubscribeToEvent and UnsubscribeFromEvent.

# Optional Parameters
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListEventSubscriptions action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
- `resourceArn`: The ARN of the assessment template for which you want to list the existing event subscriptions.
"""

list_event_subscriptions(; aws_config::AWSConfig=global_aws_config()) = inspector("ListEventSubscriptions"; aws_config=aws_config)
list_event_subscriptions(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListEventSubscriptions", args; aws_config=aws_config)

"""
    ListExclusions()

List exclusions that are generated by the assessment run.

# Required Parameters
- `assessmentRunArn`: The ARN of the assessment run that generated the exclusions that you want to list.

# Optional Parameters
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 100. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListExclusionsRequest action. Subsequent calls to the action fill nextToken in the request with the value of nextToken from the previous response to continue listing data.
"""

list_exclusions(assessmentRunArn; aws_config::AWSConfig=global_aws_config()) = inspector("ListExclusions", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn); aws_config=aws_config)
list_exclusions(assessmentRunArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListExclusions", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn), args)); aws_config=aws_config)

"""
    ListFindings()

Lists findings that are generated by the assessment runs that are specified by the ARNs of the assessment runs.

# Optional Parameters
- `assessmentRunArns`: The ARNs of the assessment runs that generate the findings that you want to list.
- `filter`: You can use this parameter to specify a subset of data to be included in the action's response. For a record to match a filter, all specified filter attributes must match. When multiple values are specified for a filter attribute, any of the values can match.
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListFindings action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_findings(; aws_config::AWSConfig=global_aws_config()) = inspector("ListFindings"; aws_config=aws_config)
list_findings(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListFindings", args; aws_config=aws_config)

"""
    ListRulesPackages()

Lists all available Amazon Inspector rules packages.

# Optional Parameters
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the ListRulesPackages action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

list_rules_packages(; aws_config::AWSConfig=global_aws_config()) = inspector("ListRulesPackages"; aws_config=aws_config)
list_rules_packages(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListRulesPackages", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists all tags associated with an assessment template.

# Required Parameters
- `resourceArn`: The ARN that specifies the assessment template whose tags you want to list.

"""

list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = inspector("ListTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    PreviewAgents()

Previews the agents installed on the EC2 instances that are part of the specified assessment target.

# Required Parameters
- `previewAgentsArn`: The ARN of the assessment target whose agents you want to preview.

# Optional Parameters
- `maxResults`: You can use this parameter to indicate the maximum number of items you want in the response. The default value is 10. The maximum value is 500.
- `nextToken`: You can use this parameter when paginating results. Set the value of this parameter to null on your first call to the PreviewAgents action. Subsequent calls to the action fill nextToken in the request with the value of NextToken from the previous response to continue listing data.
"""

preview_agents(previewAgentsArn; aws_config::AWSConfig=global_aws_config()) = inspector("PreviewAgents", Dict{String, Any}("previewAgentsArn"=>previewAgentsArn); aws_config=aws_config)
preview_agents(previewAgentsArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("PreviewAgents", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("previewAgentsArn"=>previewAgentsArn), args)); aws_config=aws_config)

"""
    RegisterCrossAccountAccessRole()

Registers the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments.

# Required Parameters
- `roleArn`: The ARN of the IAM role that grants Amazon Inspector access to AWS Services needed to perform security assessments. 

"""

register_cross_account_access_role(roleArn; aws_config::AWSConfig=global_aws_config()) = inspector("RegisterCrossAccountAccessRole", Dict{String, Any}("roleArn"=>roleArn); aws_config=aws_config)
register_cross_account_access_role(roleArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("RegisterCrossAccountAccessRole", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("roleArn"=>roleArn), args)); aws_config=aws_config)

"""
    RemoveAttributesFromFindings()

Removes entire attributes (key and value pairs) from the findings that are specified by the ARNs of the findings where an attribute with the specified key exists.

# Required Parameters
- `attributeKeys`: The array of attribute keys that you want to remove from specified findings.
- `findingArns`: The ARNs that specify the findings that you want to remove attributes from.

"""

remove_attributes_from_findings(attributeKeys, findingArns; aws_config::AWSConfig=global_aws_config()) = inspector("RemoveAttributesFromFindings", Dict{String, Any}("attributeKeys"=>attributeKeys, "findingArns"=>findingArns); aws_config=aws_config)
remove_attributes_from_findings(attributeKeys, findingArns, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("RemoveAttributesFromFindings", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("attributeKeys"=>attributeKeys, "findingArns"=>findingArns), args)); aws_config=aws_config)

"""
    SetTagsForResource()

Sets tags (key and value pairs) to the assessment template that is specified by the ARN of the assessment template.

# Required Parameters
- `resourceArn`: The ARN of the assessment template that you want to set tags to.

# Optional Parameters
- `tags`: A collection of key and value pairs that you want to set to the assessment template.
"""

set_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = inspector("SetTagsForResource", Dict{String, Any}("resourceArn"=>resourceArn); aws_config=aws_config)
set_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("SetTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("resourceArn"=>resourceArn), args)); aws_config=aws_config)

"""
    StartAssessmentRun()

Starts the assessment run specified by the ARN of the assessment template. For this API to function properly, you must not exceed the limit of running up to 500 concurrent agents per AWS account.

# Required Parameters
- `assessmentTemplateArn`: The ARN of the assessment template of the assessment run that you want to start.

# Optional Parameters
- `assessmentRunName`: You can specify the name for the assessment run. The name must be unique for the assessment template whose ARN is used to start the assessment run.
"""

start_assessment_run(assessmentTemplateArn; aws_config::AWSConfig=global_aws_config()) = inspector("StartAssessmentRun", Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn); aws_config=aws_config)
start_assessment_run(assessmentTemplateArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("StartAssessmentRun", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTemplateArn"=>assessmentTemplateArn), args)); aws_config=aws_config)

"""
    StopAssessmentRun()

Stops the assessment run that is specified by the ARN of the assessment run.

# Required Parameters
- `assessmentRunArn`: The ARN of the assessment run that you want to stop.

# Optional Parameters
- `stopAction`: An input option that can be set to either START_EVALUATION or SKIP_EVALUATION. START_EVALUATION (the default value), stops the AWS agent from collecting data and begins the results evaluation and the findings generation process. SKIP_EVALUATION cancels the assessment run immediately, after which no findings are generated.
"""

stop_assessment_run(assessmentRunArn; aws_config::AWSConfig=global_aws_config()) = inspector("StopAssessmentRun", Dict{String, Any}("assessmentRunArn"=>assessmentRunArn); aws_config=aws_config)
stop_assessment_run(assessmentRunArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("StopAssessmentRun", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentRunArn"=>assessmentRunArn), args)); aws_config=aws_config)

"""
    SubscribeToEvent()

Enables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.

# Required Parameters
- `event`: The event for which you want to receive SNS notifications.
- `resourceArn`: The ARN of the assessment template that is used during the event for which you want to receive SNS notifications.
- `topicArn`: The ARN of the SNS topic to which the SNS notifications are sent.

"""

subscribe_to_event(event, resourceArn, topicArn; aws_config::AWSConfig=global_aws_config()) = inspector("SubscribeToEvent", Dict{String, Any}("event"=>event, "resourceArn"=>resourceArn, "topicArn"=>topicArn); aws_config=aws_config)
subscribe_to_event(event, resourceArn, topicArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("SubscribeToEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("event"=>event, "resourceArn"=>resourceArn, "topicArn"=>topicArn), args)); aws_config=aws_config)

"""
    UnsubscribeFromEvent()

Disables the process of sending Amazon Simple Notification Service (SNS) notifications about a specified event to a specified SNS topic.

# Required Parameters
- `event`: The event for which you want to stop receiving SNS notifications.
- `resourceArn`: The ARN of the assessment template that is used during the event for which you want to stop receiving SNS notifications.
- `topicArn`: The ARN of the SNS topic to which SNS notifications are sent.

"""

unsubscribe_from_event(event, resourceArn, topicArn; aws_config::AWSConfig=global_aws_config()) = inspector("UnsubscribeFromEvent", Dict{String, Any}("event"=>event, "resourceArn"=>resourceArn, "topicArn"=>topicArn); aws_config=aws_config)
unsubscribe_from_event(event, resourceArn, topicArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("UnsubscribeFromEvent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("event"=>event, "resourceArn"=>resourceArn, "topicArn"=>topicArn), args)); aws_config=aws_config)

"""
    UpdateAssessmentTarget()

Updates the assessment target that is specified by the ARN of the assessment target. If resourceGroupArn is not specified, all EC2 instances in the current AWS account and region are included in the assessment target.

# Required Parameters
- `assessmentTargetArn`: The ARN of the assessment target that you want to update.
- `assessmentTargetName`: The name of the assessment target that you want to update.

# Optional Parameters
- `resourceGroupArn`: The ARN of the resource group that is used to specify the new resource group to associate with the assessment target.
"""

update_assessment_target(assessmentTargetArn, assessmentTargetName; aws_config::AWSConfig=global_aws_config()) = inspector("UpdateAssessmentTarget", Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn, "assessmentTargetName"=>assessmentTargetName); aws_config=aws_config)
update_assessment_target(assessmentTargetArn, assessmentTargetName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = inspector("UpdateAssessmentTarget", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("assessmentTargetArn"=>assessmentTargetArn, "assessmentTargetName"=>assessmentTargetName), args)); aws_config=aws_config)
