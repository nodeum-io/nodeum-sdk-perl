# Nodeum::SDK::NasSharesApi

## Load the API package
```perl
use Nodeum::SDK::Object::NasSharesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_nas_share_by_nas**](NasSharesApi.md#create_nas_share_by_nas) | **POST** /nas/{nas_id}/nas_shares | Creates a new NAS share.
[**destroy_nas_share**](NasSharesApi.md#destroy_nas_share) | **DELETE** /nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**destroy_nas_share_by_nas**](NasSharesApi.md#destroy_nas_share_by_nas) | **DELETE** /nas/{nas_id}/nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**destroy_nas_share_by_pool**](NasSharesApi.md#destroy_nas_share_by_pool) | **DELETE** /pools/{pool_id}/nas_shares/{nas_share_id} | Destroys a specific NAS share.
[**index_nas_shares**](NasSharesApi.md#index_nas_shares) | **GET** /nas_shares | Lists all NAS shares.
[**index_nas_shares_by_nas**](NasSharesApi.md#index_nas_shares_by_nas) | **GET** /nas/{nas_id}/nas_shares | Lists all NAS shares.
[**index_nas_shares_by_pool**](NasSharesApi.md#index_nas_shares_by_pool) | **GET** /pools/{pool_id}/nas_shares | Lists all NAS shares from pool.
[**mount_status_nas_share**](NasSharesApi.md#mount_status_nas_share) | **GET** /nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**mount_status_nas_share_by_nas**](NasSharesApi.md#mount_status_nas_share_by_nas) | **GET** /nas/{nas_id}/nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**mount_status_nas_share_by_pool**](NasSharesApi.md#mount_status_nas_share_by_pool) | **GET** /pools/{pool_id}/nas_shares/{nas_share_id}/mount | Get mount status of NAS Share.
[**show_nas_share**](NasSharesApi.md#show_nas_share) | **GET** /nas_shares/{nas_share_id} | Displays a specific NAS share.
[**show_nas_share_by_nas**](NasSharesApi.md#show_nas_share_by_nas) | **GET** /nas/{nas_id}/nas_shares/{nas_share_id} | Displays a specific NAS share.
[**show_nas_share_by_pool**](NasSharesApi.md#show_nas_share_by_pool) | **GET** /pools/{pool_id}/nas_shares/{nas_share_id} | Displays a specific NAS share.
[**test_nas_share**](NasSharesApi.md#test_nas_share) | **PUT** /nas/{nas_id}/nas_shares/-/test | Test an unsaved NAS Share.
[**test_result_nas_share**](NasSharesApi.md#test_result_nas_share) | **GET** /nas/{nas_id}/nas_shares/-/test | Check result of a NAS Share test job.
[**update_nas_share**](NasSharesApi.md#update_nas_share) | **PUT** /nas_shares/{nas_share_id} | Updates a specific NAS share.
[**update_nas_share_by_nas**](NasSharesApi.md#update_nas_share_by_nas) | **PUT** /nas/{nas_id}/nas_shares/{nas_share_id} | Updates a specific NAS share.
[**update_nas_share_by_pool**](NasSharesApi.md#update_nas_share_by_pool) | **PUT** /pools/{pool_id}/nas_shares/{nas_share_id} | Updates a specific NAS share.


# **create_nas_share_by_nas**
> NasShare create_nas_share_by_nas(nas_id => $nas_id, nas_share_body => $nas_share_body)

Creates a new NAS share.

**API Key Scope**: nas_shares / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_body = Nodeum::SDK::Object::NasShare->new(); # NasShare | 

eval { 
    my $result = $api_instance->create_nas_share_by_nas(nas_id => $nas_id, nas_share_body => $nas_share_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->create_nas_share_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_nas_share**
> destroy_nas_share(nas_share_id => $nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    $api_instance->destroy_nas_share(nas_share_id => $nas_share_id);
};
if ($@) {
    warn "Exception when calling NasSharesApi->destroy_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_nas_share_by_nas**
> destroy_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    $api_instance->destroy_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id);
};
if ($@) {
    warn "Exception when calling NasSharesApi->destroy_nas_share_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_nas_share_by_pool**
> destroy_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id)

Destroys a specific NAS share.

**API Key Scope**: nas_shares / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    $api_instance->destroy_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id);
};
if ($@) {
    warn "Exception when calling NasSharesApi->destroy_nas_share_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_nas_shares**
> NasShareCollection index_nas_shares(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, nas_id => $nas_id, pool_id => $pool_id)

Lists all NAS shares.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

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
my $path = "path_example"; # string | Filter on path
my $options = "options_example"; # string | Filter on options
my $username = "username_example"; # string | Filter on username
my $nas_id = "nas_id_example"; # string | Filter on NAS id
my $pool_id = "pool_id_example"; # string | Filter on a pool id

eval { 
    my $result = $api_instance->index_nas_shares(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, nas_id => $nas_id, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->index_nas_shares: $@\n";
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
 **path** | **string**| Filter on path | [optional] 
 **options** | **string**| Filter on options | [optional] 
 **username** | **string**| Filter on username | [optional] 
 **nas_id** | **string**| Filter on NAS id | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_nas_shares_by_nas**
> NasShareCollection index_nas_shares_by_nas(nas_id => $nas_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, pool_id => $pool_id)

Lists all NAS shares.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $path = "path_example"; # string | Filter on path
my $options = "options_example"; # string | Filter on options
my $username = "username_example"; # string | Filter on username
my $pool_id = "pool_id_example"; # string | Filter on a pool id

eval { 
    my $result = $api_instance->index_nas_shares_by_nas(nas_id => $nas_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->index_nas_shares_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **path** | **string**| Filter on path | [optional] 
 **options** | **string**| Filter on options | [optional] 
 **username** | **string**| Filter on username | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_nas_shares_by_pool**
> NasShareCollection index_nas_shares_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, nas_id => $nas_id)

Lists all NAS shares from pool.

**API Key Scope**: nas_shares / index   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $path = "path_example"; # string | Filter on path
my $options = "options_example"; # string | Filter on options
my $username = "username_example"; # string | Filter on username
my $nas_id = "nas_id_example"; # string | Filter on NAS id

eval { 
    my $result = $api_instance->index_nas_shares_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, path => $path, options => $options, username => $username, nas_id => $nas_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->index_nas_shares_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **path** | **string**| Filter on path | [optional] 
 **options** | **string**| Filter on options | [optional] 
 **username** | **string**| Filter on username | [optional] 
 **nas_id** | **string**| Filter on NAS id | [optional] 

### Return type

[**NasShareCollection**](NasShareCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_nas_share**
> MountStatus mount_status_nas_share(nas_share_id => $nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->mount_status_nas_share(nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->mount_status_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_nas_share_by_nas**
> MountStatus mount_status_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->mount_status_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->mount_status_nas_share_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_nas_share_by_pool**
> MountStatus mount_status_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id)

Get mount status of NAS Share.

**API Key Scope**: nas_shares / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->mount_status_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->mount_status_nas_share_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_nas_share**
> NasShare show_nas_share(nas_share_id => $nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->show_nas_share(nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->show_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_nas_share_by_nas**
> NasShare show_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->show_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->show_nas_share_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_nas_share_by_pool**
> NasShare show_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id)

Displays a specific NAS share.

**API Key Scope**: nas_shares / show   Optional API Key Explicit Scope: nas_shares / get_password

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.

eval { 
    my $result = $api_instance->show_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->show_nas_share_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_nas_share**
> ActiveJobStatus test_nas_share(nas_id => $nas_id, nas_share_body => $nas_share_body)

Test an unsaved NAS Share.

**API Key Scope**: nas_shares / test

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_body = Nodeum::SDK::Object::NasShare->new(); # NasShare | 

eval { 
    my $result = $api_instance->test_nas_share(nas_id => $nas_id, nas_share_body => $nas_share_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->test_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **test_result_nas_share**
> ActiveJobStatus test_result_nas_share(nas_id => $nas_id, job_id => $job_id)

Check result of a NAS Share test job.

**API Key Scope**: nas_shares / test

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->test_result_nas_share(nas_id => $nas_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->test_result_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_nas_share**
> NasShare update_nas_share(nas_share_id => $nas_share_id, nas_share_body => $nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.
my $nas_share_body = Nodeum::SDK::Object::NasShare->new(); # NasShare | 

eval { 
    my $result = $api_instance->update_nas_share(nas_share_id => $nas_share_id, nas_share_body => $nas_share_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->update_nas_share: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_nas_share_by_nas**
> NasShare update_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id, nas_share_body => $nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $nas_id = "nas_id_example"; # string | Numeric ID or name of NAS.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.
my $nas_share_body = Nodeum::SDK::Object::NasShare->new(); # NasShare | 

eval { 
    my $result = $api_instance->update_nas_share_by_nas(nas_id => $nas_id, nas_share_id => $nas_share_id, nas_share_body => $nas_share_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->update_nas_share_by_nas: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **nas_id** | **string**| Numeric ID or name of NAS. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_nas_share_by_pool**
> NasShare update_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id, nas_share_body => $nas_share_body)

Updates a specific NAS share.

**API Key Scope**: nas_shares / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::NasSharesApi;
my $api_instance = Nodeum::SDK::NasSharesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $nas_share_id = "nas_share_id_example"; # string | Numeric ID or name of NAS share.
my $nas_share_body = Nodeum::SDK::Object::NasShare->new(); # NasShare | 

eval { 
    my $result = $api_instance->update_nas_share_by_pool(pool_id => $pool_id, nas_share_id => $nas_share_id, nas_share_body => $nas_share_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling NasSharesApi->update_nas_share_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **nas_share_id** | **string**| Numeric ID or name of NAS share. | 
 **nas_share_body** | [**NasShare**](NasShare.md)|  | 

### Return type

[**NasShare**](NasShare.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

