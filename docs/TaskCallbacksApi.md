# Nodeum::SDK::TaskCallbacksApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskCallbacksApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_callback**](TaskCallbacksApi.md#create_task_callback) | **POST** /tasks/{task_id}/task_callbacks | Creates a new task callback.
[**destroy_task_callback**](TaskCallbacksApi.md#destroy_task_callback) | **DELETE** /tasks/{task_id}/task_callbacks/{task_callback_id} | Destroys a specific task callback.
[**index_task_callbacks**](TaskCallbacksApi.md#index_task_callbacks) | **GET** /tasks/{task_id}/task_callbacks | Lists all task callbacks.
[**show_task_callback**](TaskCallbacksApi.md#show_task_callback) | **GET** /tasks/{task_id}/task_callbacks/{task_callback_id} | Displays a specific task callback.
[**update_task_callback**](TaskCallbacksApi.md#update_task_callback) | **PUT** /tasks/{task_id}/task_callbacks/{task_callback_id} | Updates a specific task callback.


# **create_task_callback**
> TaskCallback create_task_callback(task_id => $task_id, task_callback_body => $task_callback_body)

Creates a new task callback.

**API Key Scope**: task_callbacks / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskCallbacksApi;
my $api_instance = Nodeum::SDK::TaskCallbacksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_callback_body = Nodeum::SDK::Object::TaskCallback->new(); # TaskCallback | 

eval { 
    my $result = $api_instance->create_task_callback(task_id => $task_id, task_callback_body => $task_callback_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskCallbacksApi->create_task_callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_body** | [**TaskCallback**](TaskCallback.md)|  | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_callback**
> destroy_task_callback(task_id => $task_id, task_callback_id => $task_callback_id)

Destroys a specific task callback.

**API Key Scope**: task_callbacks / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskCallbacksApi;
my $api_instance = Nodeum::SDK::TaskCallbacksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_callback_id = 56; # int | Numeric ID of task callback.

eval { 
    $api_instance->destroy_task_callback(task_id => $task_id, task_callback_id => $task_callback_id);
};
if ($@) {
    warn "Exception when calling TaskCallbacksApi->destroy_task_callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **int**| Numeric ID of task callback. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_callbacks**
> TaskCallbackCollection index_task_callbacks(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, type => $type, script => $script)

Lists all task callbacks.

**API Key Scope**: task_callbacks / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskCallbacksApi;
my $api_instance = Nodeum::SDK::TaskCallbacksApi->new(

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
my $type = "type_example"; # string | Filter on type
my $script = "script_example"; # string | Filter on task callback script

eval { 
    my $result = $api_instance->index_task_callbacks(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, type => $type, script => $script);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskCallbacksApi->index_task_callbacks: $@\n";
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
 **type** | **string**| Filter on type | [optional] 
 **script** | **string**| Filter on task callback script | [optional] 

### Return type

[**TaskCallbackCollection**](TaskCallbackCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_callback**
> TaskCallback show_task_callback(task_id => $task_id, task_callback_id => $task_callback_id)

Displays a specific task callback.

**API Key Scope**: task_callbacks / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskCallbacksApi;
my $api_instance = Nodeum::SDK::TaskCallbacksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_callback_id = 56; # int | Numeric ID of task callback.

eval { 
    my $result = $api_instance->show_task_callback(task_id => $task_id, task_callback_id => $task_callback_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskCallbacksApi->show_task_callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **int**| Numeric ID of task callback. | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_callback**
> TaskCallback update_task_callback(task_id => $task_id, task_callback_id => $task_callback_id, task_callback_body => $task_callback_body)

Updates a specific task callback.

**API Key Scope**: task_callbacks / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskCallbacksApi;
my $api_instance = Nodeum::SDK::TaskCallbacksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_callback_id = 56; # int | Numeric ID of task callback.
my $task_callback_body = Nodeum::SDK::Object::TaskCallback->new(); # TaskCallback | 

eval { 
    my $result = $api_instance->update_task_callback(task_id => $task_id, task_callback_id => $task_callback_id, task_callback_body => $task_callback_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskCallbacksApi->update_task_callback: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_callback_id** | **int**| Numeric ID of task callback. | 
 **task_callback_body** | [**TaskCallback**](TaskCallback.md)|  | 

### Return type

[**TaskCallback**](TaskCallback.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

