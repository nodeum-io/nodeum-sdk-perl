# Nodeum::SDK::MetadataApi

## Load the API package
```perl
use Nodeum::SDK::Object::MetadataApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_file_metadata_definitions**](MetadataApi.md#index_file_metadata_definitions) | **GET** /file_metadata_definitions | List file metadata definitions
[**index_task_metadata_definitions**](MetadataApi.md#index_task_metadata_definitions) | **GET** /task_metadata_definitions | List task metadata definitions
[**show_file_metadata_definition**](MetadataApi.md#show_file_metadata_definition) | **GET** /file_metadata_definitions/{metadata_definition_id} | Displays a specific task metadata definition.
[**show_task_metadata_definition**](MetadataApi.md#show_task_metadata_definition) | **GET** /task_metadata_definitions/{metadata_definition_id} | Displays a specific task metadata definition.


# **index_file_metadata_definitions**
> FileMetadataDefinitionCollection index_file_metadata_definitions(limit => $limit, offset => $offset)

List file metadata definitions

**API Key Scope**: file_metadata_definitions / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::MetadataApi;
my $api_instance = Nodeum::SDK::MetadataApi->new(

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

eval { 
    my $result = $api_instance->index_file_metadata_definitions(limit => $limit, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->index_file_metadata_definitions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 

### Return type

[**FileMetadataDefinitionCollection**](FileMetadataDefinitionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_metadata_definitions**
> TaskMetadataDefinitionCollection index_task_metadata_definitions(limit => $limit, offset => $offset)

List task metadata definitions

**API Key Scope**: task_metadata_definitions / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::MetadataApi;
my $api_instance = Nodeum::SDK::MetadataApi->new(

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

eval { 
    my $result = $api_instance->index_task_metadata_definitions(limit => $limit, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->index_task_metadata_definitions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 

### Return type

[**TaskMetadataDefinitionCollection**](TaskMetadataDefinitionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_metadata_definition**
> FileMetadataDefinition show_file_metadata_definition(metadata_definition_id => $metadata_definition_id)

Displays a specific task metadata definition.

**API Key Scope**: file_metadata_definitions / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::MetadataApi;
my $api_instance = Nodeum::SDK::MetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $metadata_definition_id = "metadata_definition_id_example"; # string | Numeric ID or key of a metadata definition

eval { 
    my $result = $api_instance->show_file_metadata_definition(metadata_definition_id => $metadata_definition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->show_file_metadata_definition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata_definition_id** | **string**| Numeric ID or key of a metadata definition | 

### Return type

[**FileMetadataDefinition**](FileMetadataDefinition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_metadata_definition**
> TaskMetadataDefinition show_task_metadata_definition(metadata_definition_id => $metadata_definition_id)

Displays a specific task metadata definition.

**API Key Scope**: task_metadata_definitions / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::MetadataApi;
my $api_instance = Nodeum::SDK::MetadataApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $metadata_definition_id = "metadata_definition_id_example"; # string | Numeric ID or key of a metadata definition

eval { 
    my $result = $api_instance->show_task_metadata_definition(metadata_definition_id => $metadata_definition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MetadataApi->show_task_metadata_definition: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **metadata_definition_id** | **string**| Numeric ID or key of a metadata definition | 

### Return type

[**TaskMetadataDefinition**](TaskMetadataDefinition.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

