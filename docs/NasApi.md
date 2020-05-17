# Nodeum::SDK::NasApi

## Load the API package
```perl
use Nodeum::SDK::Object::NasApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nas**](NasApi.md#create_nas) | **POST** /nas | Creates a new NAS.
[**destroy_nas**](NasApi.md#destroy_nas) | **DELETE** /nas/{nas_id} | Destroys a specific NAS.
[**index_nas**](NasApi.md#index_nas) | **GET** /nas | Lists all NAS.
[**show_nas**](NasApi.md#show_nas) | **GET** /nas/{nas_id} | Displays a specific NAS.
[**update_nas**](NasApi.md#update_nas) | **PUT** /nas/{nas_id} | Updates a specific NAS.


# **create_nas**
> Nas create_nas(nas_body => $nas_body)

Creates a new NAS.

**API Key Scope**: nas / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasApi;
my $api_instance = Nodeum::SDK::NasApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_body = Nodeum::SDK::Object::Nas->new(); # Nas | 

eval { 
    my $result = $api_instance->create_nas(nas_body => $nas_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasApi->create_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_body** | [**Nas**](Nas.md)|  | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_nas**
> destroy_nas(nas_id => $nas_id)

Destroys a specific NAS.

**API Key Scope**: nas / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasApi;
my $api_instance = Nodeum::SDK::NasApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.

eval { 
    $api_instance->destroy_nas(nas_id => $nas_id);
};
if ($@) {
    warn "Exception when calling NasApi->destroy_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_nas**
> NasCollection index_nas(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, host => $host, type => $type, price => $price)

Lists all NAS.

**API Key Scope**: nas / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasApi;
my $api_instance = Nodeum::SDK::NasApi->new(

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
my $comment = "comment_example"; # string | Filter on comment
my $host = "host_example"; # string | Filter on host
my $type = "type_example"; # string | Filter on type
my $price = "price_example"; # string | Filter on price

eval { 
    my $result = $api_instance->index_nas(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, host => $host, type => $type, price => $price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasApi->index_nas: $@\n";
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
 **comment** | **string**| Filter on comment | [optional] 
 **host** | **string**| Filter on host | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **price** | **string**| Filter on price | [optional] 

### Return type

[**NasCollection**](NasCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_nas**
> Nas show_nas(nas_id => $nas_id)

Displays a specific NAS.

**API Key Scope**: nas / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasApi;
my $api_instance = Nodeum::SDK::NasApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.

eval { 
    my $result = $api_instance->show_nas(nas_id => $nas_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasApi->show_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_nas**
> Nas update_nas(nas_id => $nas_id, nas_body => $nas_body)

Updates a specific NAS.

**API Key Scope**: nas / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasApi;
my $api_instance = Nodeum::SDK::NasApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_body = Nodeum::SDK::Object::Nas->new(); # Nas | 

eval { 
    my $result = $api_instance->update_nas(nas_id => $nas_id, nas_body => $nas_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasApi->update_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_body** | [**Nas**](Nas.md)|  | 

### Return type

[**Nas**](Nas.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

