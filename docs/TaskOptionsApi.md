# Nodeum::SDK::TaskOptionsApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskOptionsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_option**](TaskOptionsApi.md#create_task_option) | **POST** /tasks/{task_id}/task_options | Creates a new task option.
[**destroy_task_option**](TaskOptionsApi.md#destroy_task_option) | **DELETE** /tasks/{task_id}/task_options/{task_option_id} | Destroys a specific task option.
[**index_task_options**](TaskOptionsApi.md#index_task_options) | **GET** /tasks/{task_id}/task_options | Lists all task options.
[**show_task_option**](TaskOptionsApi.md#show_task_option) | **GET** /tasks/{task_id}/task_options/{task_option_id} | Displays a specific task option.
[**update_task_option**](TaskOptionsApi.md#update_task_option) | **PUT** /tasks/{task_id}/task_options/{task_option_id} | Updates a specific task option.


# **create_task_option**
> TaskOption create_task_option(task_id => $task_id, task_option_body => $task_option_body)

Creates a new task option.

**API Key Scope**: task_options / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskOptionsApi;
my $api_instance = Nodeum::SDK::TaskOptionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_option_body = Nodeum::SDK::Object::TaskOption->new(); # TaskOption | 

eval { 
    my $result = $api_instance->create_task_option(task_id => $task_id, task_option_body => $task_option_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskOptionsApi->create_task_option: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_body** | [**TaskOption**](TaskOption.md)|  | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_option**
> destroy_task_option(task_id => $task_id, task_option_id => $task_option_id)

Destroys a specific task option.

**API Key Scope**: task_options / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskOptionsApi;
my $api_instance = Nodeum::SDK::TaskOptionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_option_id = 56; # int | Numeric ID of task option.

eval { 
    $api_instance->destroy_task_option(task_id => $task_id, task_option_id => $task_option_id);
};
if ($@) {
    warn "Exception when calling TaskOptionsApi->destroy_task_option: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **int**| Numeric ID of task option. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_options**
> TaskOptionCollection index_task_options(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, type => $type, value => $value)

Lists all task options.

**API Key Scope**: task_options / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskOptionsApi;
my $api_instance = Nodeum::SDK::TaskOptionsApi->new(

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
my $value = "value_example"; # string | Filter on value

eval { 
    my $result = $api_instance->index_task_options(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, type => $type, value => $value);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskOptionsApi->index_task_options: $@\n";
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
 **value** | **string**| Filter on value | [optional] 

### Return type

[**TaskOptionCollection**](TaskOptionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_option**
> TaskOption show_task_option(task_id => $task_id, task_option_id => $task_option_id)

Displays a specific task option.

**API Key Scope**: task_options / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskOptionsApi;
my $api_instance = Nodeum::SDK::TaskOptionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_option_id = 56; # int | Numeric ID of task option.

eval { 
    my $result = $api_instance->show_task_option(task_id => $task_id, task_option_id => $task_option_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskOptionsApi->show_task_option: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **int**| Numeric ID of task option. | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_option**
> TaskOption update_task_option(task_id => $task_id, task_option_id => $task_option_id, task_option_body => $task_option_body)

Updates a specific task option.

**API Key Scope**: task_options / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskOptionsApi;
my $api_instance = Nodeum::SDK::TaskOptionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_option_id = 56; # int | Numeric ID of task option.
my $task_option_body = Nodeum::SDK::Object::TaskOption->new(); # TaskOption | 

eval { 
    my $result = $api_instance->update_task_option(task_id => $task_id, task_option_id => $task_option_id, task_option_body => $task_option_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskOptionsApi->update_task_option: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_option_id** | **int**| Numeric ID of task option. | 
 **task_option_body** | [**TaskOption**](TaskOption.md)|  | 

### Return type

[**TaskOption**](TaskOption.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

