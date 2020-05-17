# Nodeum::SDK::TaskDestinationsApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskDestinationsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_destination**](TaskDestinationsApi.md#create_task_destination) | **POST** /tasks/{task_id}/task_destinations | Creates a new task destination.
[**destroy_task_destination**](TaskDestinationsApi.md#destroy_task_destination) | **DELETE** /tasks/{task_id}/task_destinations/{task_destination_id} | Destroys a specific task destination.
[**index_task_destinations**](TaskDestinationsApi.md#index_task_destinations) | **GET** /tasks/{task_id}/task_destinations | Lists all task destinations.
[**show_task_destination**](TaskDestinationsApi.md#show_task_destination) | **GET** /tasks/{task_id}/task_destinations/{task_destination_id} | Displays a specific task destination.
[**update_task_destination**](TaskDestinationsApi.md#update_task_destination) | **PUT** /tasks/{task_id}/task_destinations/{task_destination_id} | Updates a specific task destination.


# **create_task_destination**
> TaskDestinationDown create_task_destination(task_id => $task_id, task_destination_body => $task_destination_body)

Creates a new task destination.

**API Key Scope**: task_destinations / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskDestinationsApi;
my $api_instance = Nodeum::SDK::TaskDestinationsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_destination_body = Nodeum::SDK::Object::TaskDestinationUp->new(); # TaskDestinationUp | 

eval { 
    my $result = $api_instance->create_task_destination(task_id => $task_id, task_destination_body => $task_destination_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskDestinationsApi->create_task_destination: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_body** | [**TaskDestinationUp**](TaskDestinationUp.md)|  | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_destination**
> destroy_task_destination(task_id => $task_id, task_destination_id => $task_destination_id)

Destroys a specific task destination.

**API Key Scope**: task_destinations / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskDestinationsApi;
my $api_instance = Nodeum::SDK::TaskDestinationsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_destination_id = 56; # int | Numeric ID of task destination.

eval { 
    $api_instance->destroy_task_destination(task_id => $task_id, task_destination_id => $task_destination_id);
};
if ($@) {
    warn "Exception when calling TaskDestinationsApi->destroy_task_destination: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **int**| Numeric ID of task destination. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_destinations**
> TaskDestinationCollection index_task_destinations(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, folder_id => $folder_id, tape_id => $tape_id, pool_id => $pool_id)

Lists all task destinations.

**API Key Scope**: task_destinations / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskDestinationsApi;
my $api_instance = Nodeum::SDK::TaskDestinationsApi->new(

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
my $folder_id = "folder_id_example"; # string | Filter on folder id
my $tape_id = "tape_id_example"; # string | Filter on tape id
my $pool_id = "pool_id_example"; # string | Filter on a pool id

eval { 
    my $result = $api_instance->index_task_destinations(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, folder_id => $folder_id, tape_id => $tape_id, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskDestinationsApi->index_task_destinations: $@\n";
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
 **folder_id** | **string**| Filter on folder id | [optional] 
 **tape_id** | **string**| Filter on tape id | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 

### Return type

[**TaskDestinationCollection**](TaskDestinationCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_destination**
> TaskDestinationDown show_task_destination(task_id => $task_id, task_destination_id => $task_destination_id)

Displays a specific task destination.

**API Key Scope**: task_destinations / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskDestinationsApi;
my $api_instance = Nodeum::SDK::TaskDestinationsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_destination_id = 56; # int | Numeric ID of task destination.

eval { 
    my $result = $api_instance->show_task_destination(task_id => $task_id, task_destination_id => $task_destination_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskDestinationsApi->show_task_destination: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **int**| Numeric ID of task destination. | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_destination**
> TaskDestinationDown update_task_destination(task_id => $task_id, task_destination_id => $task_destination_id, task_destination_body => $task_destination_body)

Updates a specific task destination.

**API Key Scope**: task_destinations / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskDestinationsApi;
my $api_instance = Nodeum::SDK::TaskDestinationsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_destination_id = 56; # int | Numeric ID of task destination.
my $task_destination_body = Nodeum::SDK::Object::TaskDestinationUp->new(); # TaskDestinationUp | 

eval { 
    my $result = $api_instance->update_task_destination(task_id => $task_id, task_destination_id => $task_destination_id, task_destination_body => $task_destination_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskDestinationsApi->update_task_destination: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_destination_id** | **int**| Numeric ID of task destination. | 
 **task_destination_body** | [**TaskDestinationUp**](TaskDestinationUp.md)|  | 

### Return type

[**TaskDestinationDown**](TaskDestinationDown.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

