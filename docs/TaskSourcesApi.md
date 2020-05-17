# Nodeum::SDK::TaskSourcesApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskSourcesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_source**](TaskSourcesApi.md#create_task_source) | **POST** /tasks/{task_id}/task_sources | Creates a new task source.
[**destroy_task_source**](TaskSourcesApi.md#destroy_task_source) | **DELETE** /tasks/{task_id}/task_sources/{task_source_id} | Destroys a specific task source.
[**index_task_sources**](TaskSourcesApi.md#index_task_sources) | **GET** /tasks/{task_id}/task_sources | Lists all task sources.
[**show_task_source**](TaskSourcesApi.md#show_task_source) | **GET** /tasks/{task_id}/task_sources/{task_source_id} | Displays a specific task source.
[**update_task_source**](TaskSourcesApi.md#update_task_source) | **PUT** /tasks/{task_id}/task_sources/{task_source_id} | Updates a specific task source.


# **create_task_source**
> TaskSourceDown create_task_source(task_id => $task_id, task_source_body => $task_source_body)

Creates a new task source.

**API Key Scope**: task_sources / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSourcesApi;
my $api_instance = Nodeum::SDK::TaskSourcesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_source_body = Nodeum::SDK::Object::TaskSourceUp->new(); # TaskSourceUp | 

eval { 
    my $result = $api_instance->create_task_source(task_id => $task_id, task_source_body => $task_source_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSourcesApi->create_task_source: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_body** | [**TaskSourceUp**](TaskSourceUp.md)|  | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_source**
> destroy_task_source(task_id => $task_id, task_source_id => $task_source_id)

Destroys a specific task source.

**API Key Scope**: task_sources / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSourcesApi;
my $api_instance = Nodeum::SDK::TaskSourcesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_source_id = 56; # int | Numeric ID of task source.

eval { 
    $api_instance->destroy_task_source(task_id => $task_id, task_source_id => $task_source_id);
};
if ($@) {
    warn "Exception when calling TaskSourcesApi->destroy_task_source: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **int**| Numeric ID of task source. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_sources**
> TaskSourceCollection index_task_sources(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, file_id => $file_id, import_file_id => $import_file_id, tape_id => $tape_id, pool_id => $pool_id)

Lists all task sources.

**API Key Scope**: task_sources / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSourcesApi;
my $api_instance = Nodeum::SDK::TaskSourcesApi->new(

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
my $file_id = "file_id_example"; # string | Filter on file id
my $import_file_id = "import_file_id_example"; # string | Filter on import file id
my $tape_id = "tape_id_example"; # string | Filter on tape id
my $pool_id = "pool_id_example"; # string | Filter on a pool id

eval { 
    my $result = $api_instance->index_task_sources(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, file_id => $file_id, import_file_id => $import_file_id, tape_id => $tape_id, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSourcesApi->index_task_sources: $@\n";
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
 **file_id** | **string**| Filter on file id | [optional] 
 **import_file_id** | **string**| Filter on import file id | [optional] 
 **tape_id** | **string**| Filter on tape id | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 

### Return type

[**TaskSourceCollection**](TaskSourceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_source**
> TaskSourceDown show_task_source(task_id => $task_id, task_source_id => $task_source_id)

Displays a specific task source.

**API Key Scope**: task_sources / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSourcesApi;
my $api_instance = Nodeum::SDK::TaskSourcesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_source_id = 56; # int | Numeric ID of task source.

eval { 
    my $result = $api_instance->show_task_source(task_id => $task_id, task_source_id => $task_source_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSourcesApi->show_task_source: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **int**| Numeric ID of task source. | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_source**
> TaskSourceDown update_task_source(task_id => $task_id, task_source_id => $task_source_id, task_source_body => $task_source_body)

Updates a specific task source.

**API Key Scope**: task_sources / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSourcesApi;
my $api_instance = Nodeum::SDK::TaskSourcesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_source_id = 56; # int | Numeric ID of task source.
my $task_source_body = Nodeum::SDK::Object::TaskSourceUp->new(); # TaskSourceUp | 

eval { 
    my $result = $api_instance->update_task_source(task_id => $task_id, task_source_id => $task_source_id, task_source_body => $task_source_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSourcesApi->update_task_source: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_source_id** | **int**| Numeric ID of task source. | 
 **task_source_body** | [**TaskSourceUp**](TaskSourceUp.md)|  | 

### Return type

[**TaskSourceDown**](TaskSourceDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

