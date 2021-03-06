# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: networkmanager

using AWS.Compat
using AWS.UUIDs
"""
    AssociateCustomerGateway()

Associates a customer gateway with a device and optionally, with a link. If you specify a link, it must be associated with the specified device.  You can only associate customer gateways that are connected to a VPN attachment on a transit gateway. The transit gateway must be registered in your global network. When you register a transit gateway, customer gateways that are connected to the transit gateway are automatically included in the global network. To list customer gateways that are connected to a transit gateway, use the DescribeVpnConnections EC2 API and filter by transit-gateway-id. You cannot associate a customer gateway with more than one device and link. 

# Required Parameters
- `CustomerGatewayArn`: The Amazon Resource Name (ARN) of the customer gateway. For more information, see Resources Defined by Amazon EC2.
- `DeviceId`: The ID of the device.
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `LinkId`: The ID of the link.
"""

associate_customer_gateway(CustomerGatewayArn, DeviceId, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/customer-gateway-associations", Dict{String, Any}("CustomerGatewayArn"=>CustomerGatewayArn, "DeviceId"=>DeviceId); aws_config=aws_config)
associate_customer_gateway(CustomerGatewayArn, DeviceId, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/customer-gateway-associations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("CustomerGatewayArn"=>CustomerGatewayArn, "DeviceId"=>DeviceId), args)); aws_config=aws_config)

"""
    AssociateLink()

Associates a link to a device. A device can be associated to multiple links and a link can be associated to multiple devices. The device and link must be in the same global network and the same site.

# Required Parameters
- `DeviceId`: The ID of the device.
- `LinkId`: The ID of the link.
- `globalNetworkId`: The ID of the global network.

"""

associate_link(DeviceId, LinkId, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/link-associations", Dict{String, Any}("DeviceId"=>DeviceId, "LinkId"=>LinkId); aws_config=aws_config)
associate_link(DeviceId, LinkId, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/link-associations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("DeviceId"=>DeviceId, "LinkId"=>LinkId), args)); aws_config=aws_config)

"""
    CreateDevice()

Creates a new device in a global network. If you specify both a site ID and a location, the location of the site is used for visualization in the Network Manager console.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `Description`: A description of the device. Length Constraints: Maximum length of 256 characters.
- `Location`: The location of the device.
- `Model`: The model of the device. Length Constraints: Maximum length of 128 characters.
- `SerialNumber`: The serial number of the device. Length Constraints: Maximum length of 128 characters.
- `SiteId`: The ID of the site.
- `Tags`: The tags to apply to the resource during creation.
- `Type`: The type of the device.
- `Vendor`: The vendor of the device. Length Constraints: Maximum length of 128 characters.
"""

create_device(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/devices"; aws_config=aws_config)
create_device(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/devices", args; aws_config=aws_config)

"""
    CreateGlobalNetwork()

Creates a new, empty global network.

# Optional Parameters
- `Description`: A description of the global network. Length Constraints: Maximum length of 256 characters.
- `Tags`: The tags to apply to the resource during creation.
"""

create_global_network(; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks"; aws_config=aws_config)
create_global_network(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks", args; aws_config=aws_config)

"""
    CreateLink()

Creates a new link for a specified site.

# Required Parameters
- `Bandwidth`:  The upload speed and download speed in Mbps. 
- `SiteId`: The ID of the site.
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `Description`: A description of the link. Length Constraints: Maximum length of 256 characters.
- `Provider`: The provider of the link. Constraints: Cannot include the following characters: |  ^ Length Constraints: Maximum length of 128 characters.
- `Tags`: The tags to apply to the resource during creation.
- `Type`: The type of the link. Constraints: Cannot include the following characters: |  ^ Length Constraints: Maximum length of 128 characters.
"""

create_link(Bandwidth, SiteId, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/links", Dict{String, Any}("Bandwidth"=>Bandwidth, "SiteId"=>SiteId); aws_config=aws_config)
create_link(Bandwidth, SiteId, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/links", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Bandwidth"=>Bandwidth, "SiteId"=>SiteId), args)); aws_config=aws_config)

"""
    CreateSite()

Creates a new site in a global network.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `Description`: A description of your site. Length Constraints: Maximum length of 256 characters.
- `Location`: The site location. This information is used for visualization in the Network Manager console. If you specify the address, the latitude and longitude are automatically calculated.    Address: The physical address of the site.    Latitude: The latitude of the site.     Longitude: The longitude of the site.  
- `Tags`: The tags to apply to the resource during creation.
"""

create_site(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/sites"; aws_config=aws_config)
create_site(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/sites", args; aws_config=aws_config)

"""
    DeleteDevice()

Deletes an existing device. You must first disassociate the device from any links and customer gateways.

# Required Parameters
- `deviceId`: The ID of the device.
- `globalNetworkId`: The ID of the global network.

"""

delete_device(deviceId, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/devices/$(deviceId)"; aws_config=aws_config)
delete_device(deviceId, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/devices/$(deviceId)", args; aws_config=aws_config)

"""
    DeleteGlobalNetwork()

Deletes an existing global network. You must first delete all global network objects (devices, links, and sites) and deregister all transit gateways.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

"""

delete_global_network(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)"; aws_config=aws_config)
delete_global_network(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)", args; aws_config=aws_config)

"""
    DeleteLink()

Deletes an existing link. You must first disassociate the link from any devices and customer gateways.

# Required Parameters
- `globalNetworkId`: The ID of the global network.
- `linkId`: The ID of the link.

"""

delete_link(globalNetworkId, linkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/links/$(linkId)"; aws_config=aws_config)
delete_link(globalNetworkId, linkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/links/$(linkId)", args; aws_config=aws_config)

"""
    DeleteSite()

Deletes an existing site. The site cannot be associated with any device or link.

# Required Parameters
- `globalNetworkId`: The ID of the global network.
- `siteId`: The ID of the site.

"""

delete_site(globalNetworkId, siteId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/sites/$(siteId)"; aws_config=aws_config)
delete_site(globalNetworkId, siteId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/sites/$(siteId)", args; aws_config=aws_config)

"""
    DeregisterTransitGateway()

Deregisters a transit gateway from your global network. This action does not delete your transit gateway, or modify any of its attachments. This action removes any customer gateway associations.

# Required Parameters
- `globalNetworkId`: The ID of the global network.
- `transitGatewayArn`: The Amazon Resource Name (ARN) of the transit gateway.

"""

deregister_transit_gateway(globalNetworkId, transitGatewayArn; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/transit-gateway-registrations/$(transitGatewayArn)"; aws_config=aws_config)
deregister_transit_gateway(globalNetworkId, transitGatewayArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/transit-gateway-registrations/$(transitGatewayArn)", args; aws_config=aws_config)

"""
    DescribeGlobalNetworks()

Describes one or more global networks. By default, all global networks are described. To describe the objects in your global network, you must use the appropriate Get* action. For example, to list the transit gateways in your global network, use GetTransitGatewayRegistrations.

# Optional Parameters
- `globalNetworkIds`: The IDs of one or more global networks. The maximum is 10.
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
"""

describe_global_networks(; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks"; aws_config=aws_config)
describe_global_networks(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks", args; aws_config=aws_config)

"""
    DisassociateCustomerGateway()

Disassociates a customer gateway from a device and a link.

# Required Parameters
- `customerGatewayArn`: The Amazon Resource Name (ARN) of the customer gateway. For more information, see Resources Defined by Amazon EC2.
- `globalNetworkId`: The ID of the global network.

"""

disassociate_customer_gateway(customerGatewayArn, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/customer-gateway-associations/$(customerGatewayArn)"; aws_config=aws_config)
disassociate_customer_gateway(customerGatewayArn, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/customer-gateway-associations/$(customerGatewayArn)", args; aws_config=aws_config)

"""
    DisassociateLink()

Disassociates an existing device from a link. You must first disassociate any customer gateways that are associated with the link.

# Required Parameters
- `deviceId`: The ID of the device.
- `globalNetworkId`: The ID of the global network.
- `linkId`: The ID of the link.

"""

disassociate_link(deviceId, globalNetworkId, linkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/link-associations", Dict{String, Any}("deviceId"=>deviceId, "linkId"=>linkId); aws_config=aws_config)
disassociate_link(deviceId, globalNetworkId, linkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/global-networks/$(globalNetworkId)/link-associations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("deviceId"=>deviceId, "linkId"=>linkId), args)); aws_config=aws_config)

"""
    GetCustomerGatewayAssociations()

Gets the association information for customer gateways that are associated with devices and links in your global network.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `customerGatewayArns`: One or more customer gateway Amazon Resource Names (ARNs). For more information, see Resources Defined by Amazon EC2. The maximum is 10.
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
"""

get_customer_gateway_associations(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/customer-gateway-associations"; aws_config=aws_config)
get_customer_gateway_associations(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/customer-gateway-associations", args; aws_config=aws_config)

"""
    GetDevices()

Gets information about one or more of your devices in a global network.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `deviceIds`: One or more device IDs. The maximum is 10.
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
- `siteId`: The ID of the site.
"""

get_devices(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/devices"; aws_config=aws_config)
get_devices(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/devices", args; aws_config=aws_config)

"""
    GetLinkAssociations()

Gets the link associations for a device or a link. Either the device ID or the link ID must be specified.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `deviceId`: The ID of the device.
- `linkId`: The ID of the link.
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
"""

get_link_associations(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/link-associations"; aws_config=aws_config)
get_link_associations(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/link-associations", args; aws_config=aws_config)

"""
    GetLinks()

Gets information about one or more links in a specified global network. If you specify the site ID, you cannot specify the type or provider in the same request. You can specify the type and provider in the same request.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `linkIds`: One or more link IDs. The maximum is 10.
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
- `provider`: The link provider.
- `siteId`: The ID of the site.
- `type`: The link type.
"""

get_links(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/links"; aws_config=aws_config)
get_links(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/links", args; aws_config=aws_config)

"""
    GetSites()

Gets information about one or more of your sites in a global network.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
- `siteIds`: One or more site IDs. The maximum is 10.
"""

get_sites(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/sites"; aws_config=aws_config)
get_sites(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/sites", args; aws_config=aws_config)

"""
    GetTransitGatewayRegistrations()

Gets information about the transit gateway registrations in a specified global network.

# Required Parameters
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `maxResults`: The maximum number of results to return.
- `nextToken`: The token for the next page of results.
- `transitGatewayArns`: The Amazon Resource Names (ARNs) of one or more transit gateways. The maximum is 10.
"""

get_transit_gateway_registrations(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/transit-gateway-registrations"; aws_config=aws_config)
get_transit_gateway_registrations(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/global-networks/$(globalNetworkId)/transit-gateway-registrations", args; aws_config=aws_config)

"""
    ListTagsForResource()

Lists the tags for a specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.

"""

list_tags_for_resource(resourceArn; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/tags/$(resourceArn)"; aws_config=aws_config)
list_tags_for_resource(resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("GET", "/tags/$(resourceArn)", args; aws_config=aws_config)

"""
    RegisterTransitGateway()

Registers a transit gateway in your global network. The transit gateway can be in any AWS Region, but it must be owned by the same AWS account that owns the global network. You cannot register a transit gateway in more than one global network.

# Required Parameters
- `TransitGatewayArn`: The Amazon Resource Name (ARN) of the transit gateway. For more information, see Resources Defined by Amazon EC2.
- `globalNetworkId`: The ID of the global network.

"""

register_transit_gateway(TransitGatewayArn, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/transit-gateway-registrations", Dict{String, Any}("TransitGatewayArn"=>TransitGatewayArn); aws_config=aws_config)
register_transit_gateway(TransitGatewayArn, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/global-networks/$(globalNetworkId)/transit-gateway-registrations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("TransitGatewayArn"=>TransitGatewayArn), args)); aws_config=aws_config)

"""
    TagResource()

Tags a specified resource.

# Required Parameters
- `Tags`: The tags to apply to the specified resource.
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.

"""

tag_resource(Tags, resourceArn; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/tags/$(resourceArn)", Dict{String, Any}("Tags"=>Tags); aws_config=aws_config)
tag_resource(Tags, resourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("POST", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from a specified resource.

# Required Parameters
- `resourceArn`: The Amazon Resource Name (ARN) of the resource.
- `tagKeys`: The tag keys to remove from the specified resource.

"""

untag_resource(resourceArn, tagKeys; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/tags/$(resourceArn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resourceArn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("DELETE", "/tags/$(resourceArn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateDevice()

Updates the details for an existing device. To remove information for any of the parameters, specify an empty string.

# Required Parameters
- `deviceId`: The ID of the device.
- `globalNetworkId`: The ID of the global network.

# Optional Parameters
- `Description`: A description of the device. Length Constraints: Maximum length of 256 characters.
- `Location`: 
- `Model`: The model of the device. Length Constraints: Maximum length of 128 characters.
- `SerialNumber`: The serial number of the device. Length Constraints: Maximum length of 128 characters.
- `SiteId`: The ID of the site.
- `Type`: The type of the device.
- `Vendor`: The vendor of the device. Length Constraints: Maximum length of 128 characters.
"""

update_device(deviceId, globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/devices/$(deviceId)"; aws_config=aws_config)
update_device(deviceId, globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/devices/$(deviceId)", args; aws_config=aws_config)

"""
    UpdateGlobalNetwork()

Updates an existing global network. To remove information for any of the parameters, specify an empty string.

# Required Parameters
- `globalNetworkId`: The ID of your global network.

# Optional Parameters
- `Description`: A description of the global network. Length Constraints: Maximum length of 256 characters.
"""

update_global_network(globalNetworkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)"; aws_config=aws_config)
update_global_network(globalNetworkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)", args; aws_config=aws_config)

"""
    UpdateLink()

Updates the details for an existing link. To remove information for any of the parameters, specify an empty string.

# Required Parameters
- `globalNetworkId`: The ID of the global network.
- `linkId`: The ID of the link.

# Optional Parameters
- `Bandwidth`: The upload and download speed in Mbps. 
- `Description`: A description of the link. Length Constraints: Maximum length of 256 characters.
- `Provider`: The provider of the link. Length Constraints: Maximum length of 128 characters.
- `Type`: The type of the link. Length Constraints: Maximum length of 128 characters.
"""

update_link(globalNetworkId, linkId; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/links/$(linkId)"; aws_config=aws_config)
update_link(globalNetworkId, linkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/links/$(linkId)", args; aws_config=aws_config)

"""
    UpdateSite()

Updates the information for an existing site. To remove information for any of the parameters, specify an empty string.

# Required Parameters
- `globalNetworkId`: The ID of the global network.
- `siteId`: The ID of your site.

# Optional Parameters
- `Description`: A description of your site. Length Constraints: Maximum length of 256 characters.
- `Location`: The site location:    Address: The physical address of the site.    Latitude: The latitude of the site.     Longitude: The longitude of the site.  
"""

update_site(globalNetworkId, siteId; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/sites/$(siteId)"; aws_config=aws_config)
update_site(globalNetworkId, siteId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = networkmanager("PATCH", "/global-networks/$(globalNetworkId)/sites/$(siteId)", args; aws_config=aws_config)
