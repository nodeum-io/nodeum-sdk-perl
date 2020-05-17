# Nodeum::SDK::CloudConnectorsApi

## Load the API package
```perl
use Nodeum::SDK::Object::CloudConnectorsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_cloud_connector**](CloudConnectorsApi.md#create_cloud_connector) | **POST** /cloud_connectors | Creates a new cloud connector.
[**destroy_cloud_connector**](CloudConnectorsApi.md#destroy_cloud_connector) | **DELETE** /cloud_connectors/{cloud_connector_id} | Destroys a specific cloud connector.
[**index_cloud_connectors**](CloudConnectorsApi.md#index_cloud_connectors) | **GET** /cloud_connectors | Lists all cloud connectors.
[**show_cloud_connector**](CloudConnectorsApi.md#show_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id} | Displays a specific cloud connector.
[**test_cloud_connector**](CloudConnectorsApi.md#test_cloud_connector) | **PUT** /cloud_connectors/-/test | Test an unsaved cloud connector.
[**test_result_cloud_connector**](CloudConnectorsApi.md#test_result_cloud_connector) | **GET** /cloud_connectors/-/test | Check result of cloud connector test job.
[**update_cloud_connector**](CloudConnectorsApi.md#update_cloud_connector) | **PUT** /cloud_connectors/{cloud_connector_id} | Updates a specific cloud connector.


# **create_cloud_connector**
> CloudConnector create_cloud_connector(cloud_connector_body => $cloud_connector_body)

Creates a new cloud connector.

**API Key Scope**: cloud_connectors / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_body = Nodeum::SDK::Object::CloudConnector->new(); # CloudConnector | 

eval { 
    my $result = $api_instance->create_cloud_connector(cloud_connector_body => $cloud_connector_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->create_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_cloud_connector**
> destroy_cloud_connector(cloud_connector_id => $cloud_connector_id)

Destroys a specific cloud connector.

**API Key Scope**: cloud_connectors / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.

eval { 
    $api_instance->destroy_cloud_connector(cloud_connector_id => $cloud_connector_id);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->destroy_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cloud_connectors**
> CloudConnectorCollection index_cloud_connectors(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, url => $url, url_proxy => $url_proxy, provider => $provider, region => $region, access_key => $access_key)

Lists all cloud connectors.

**API Key Scope**: cloud_connectors / index   Optional API Key Explicit Scope: cloud_connectors / get_secret_key

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $url = "url_example"; # string | Filter on url
my $url_proxy = "url_proxy_example"; # string | Filter on url proxy
my $provider = "provider_example"; # string | Filter on provider
my $region = "region_example"; # string | Filter on region
my $access_key = "access_key_example"; # string | Filter on access key

eval { 
    my $result = $api_instance->index_cloud_connectors(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, url => $url, url_proxy => $url_proxy, provider => $provider, region => $region, access_key => $access_key);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->index_cloud_connectors: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **url** | **string**| Filter on url | [optional] 
 **url_proxy** | **string**| Filter on url proxy | [optional] 
 **provider** | **string**| Filter on provider | [optional] 
 **region** | **string**| Filter on region | [optional] 
 **access_key** | **string**| Filter on access key | [optional] 

### Return type

[**CloudConnectorCollection**](CloudConnectorCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_cloud_connector**
> CloudConnector show_cloud_connector(cloud_connector_id => $cloud_connector_id)

Displays a specific cloud connector.

**API Key Scope**: cloud_connectors / show   Optional API Key Explicit Scope: cloud_connectors / get_secret_key

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.

eval { 
    my $result = $api_instance->show_cloud_connector(cloud_connector_id => $cloud_connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->show_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_cloud_connector**
> ActiveJobStatus test_cloud_connector(cloud_connector_body => $cloud_connector_body)

Test an unsaved cloud connector.

**API Key Scope**: cloud_connectors / test

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_body = Nodeum::SDK::Object::CloudConnector->new(); # CloudConnector | 

eval { 
    my $result = $api_instance->test_cloud_connector(cloud_connector_body => $cloud_connector_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->test_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_result_cloud_connector**
> CloudBucketSimpleCollection test_result_cloud_connector(job_id => $job_id)

Check result of cloud connector test job.

**API Key Scope**: cloud_connectors / test

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->test_result_cloud_connector(job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->test_result_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **string**| ID of active job | 

### Return type

[**CloudBucketSimpleCollection**](CloudBucketSimpleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_cloud_connector**
> CloudConnector update_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_connector_body => $cloud_connector_body)

Updates a specific cloud connector.

**API Key Scope**: cloud_connectors / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudConnectorsApi;
my $api_instance = Nodeum::SDK::CloudConnectorsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $cloud_connector_body = Nodeum::SDK::Object::CloudConnector->new(); # CloudConnector | 

eval { 
    my $result = $api_instance->update_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_connector_body => $cloud_connector_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudConnectorsApi->update_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **cloud_connector_body** | [**CloudConnector**](CloudConnector.md)|  | 

### Return type

[**CloudConnector**](CloudConnector.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

