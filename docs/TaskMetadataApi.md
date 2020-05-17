# Nodeum::SDK::TaskMetadataApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskMetadataApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_metadatum**](TaskMetadataApi.md#create_task_metadatum) | **POST** /tasks/{task_id}/task_metadata | Creates a new task metadatum.
[**destroy_task_metadatum**](TaskMetadataApi.md#destroy_task_metadatum) | **DELETE** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Destroys a specific task metadatum.
[**index_task_metadata**](TaskMetadataApi.md#index_task_metadata) | **GET** /tasks/{task_id}/task_metadata | Lists all task metadata.
[**show_task_metadatum**](TaskMetadataApi.md#show_task_metadatum) | **GET** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Displays a specific task metadatum.
[**update_task_metadatum**](TaskMetadataApi.md#update_task_metadatum) | **PUT** /tasks/{task_id}/task_metadata/{task_metadatum_id} | Updates a specific task metadatum.


# **create_task_metadatum**
> TaskMetadatum create_task_metadatum(task_id => $task_id, task_metadatum_body => $task_metadatum_body)

Creates a new task metadatum.

**API Key Scope**: task_metadata / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskMetadataApi;
my $api_instance = Nodeum::SDK::TaskMetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_metadatum_body = Nodeum::SDK::Object::TaskMetadatum->new(); # TaskMetadatum | 

eval { 
    my $result = $api_instance->create_task_metadatum(task_id => $task_id, task_metadatum_body => $task_metadatum_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskMetadataApi->create_task_metadatum: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_body** | [**TaskMetadatum**](TaskMetadatum.md)|  | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_metadatum**
> destroy_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id)

Destroys a specific task metadatum.

**API Key Scope**: task_metadata / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskMetadataApi;
my $api_instance = Nodeum::SDK::TaskMetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_metadatum_id = 56; # int | Numeric ID of task metadatum.

eval { 
    $api_instance->destroy_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id);
};
if ($@) {
    warn "Exception when calling TaskMetadataApi->destroy_task_metadatum: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **int**| Numeric ID of task metadatum. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_metadata**
> TaskMetadatumCollection index_task_metadata(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, key => $key, value => $value)

Lists all task metadata.

**API Key Scope**: task_metadata / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskMetadataApi;
my $api_instance = Nodeum::SDK::TaskMetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $key = "key_example"; # string | Filter on key
my $value = "value_example"; # string | Filter on value

eval { 
    my $result = $api_instance->index_task_metadata(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, key => $key, value => $value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskMetadataApi->index_task_metadata: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **key** | **string**| Filter on key | [optional] 
 **value** | **string**| Filter on value | [optional] 

### Return type

[**TaskMetadatumCollection**](TaskMetadatumCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_metadatum**
> TaskMetadatum show_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id)

Displays a specific task metadatum.

**API Key Scope**: task_metadata / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskMetadataApi;
my $api_instance = Nodeum::SDK::TaskMetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_metadatum_id = 56; # int | Numeric ID of task metadatum.

eval { 
    my $result = $api_instance->show_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskMetadataApi->show_task_metadatum: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **int**| Numeric ID of task metadatum. | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_metadatum**
> TaskMetadatum update_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id, task_metadatum_body => $task_metadatum_body)

Updates a specific task metadatum.

**API Key Scope**: task_metadata / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskMetadataApi;
my $api_instance = Nodeum::SDK::TaskMetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_metadatum_id = 56; # int | Numeric ID of task metadatum.
my $task_metadatum_body = Nodeum::SDK::Object::TaskMetadatum->new(); # TaskMetadatum | 

eval { 
    my $result = $api_instance->update_task_metadatum(task_id => $task_id, task_metadatum_id => $task_metadatum_id, task_metadatum_body => $task_metadatum_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskMetadataApi->update_task_metadatum: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_metadatum_id** | **int**| Numeric ID of task metadatum. | 
 **task_metadatum_body** | [**TaskMetadatum**](TaskMetadatum.md)|  | 

### Return type

[**TaskMetadatum**](TaskMetadatum.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

