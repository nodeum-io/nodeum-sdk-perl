# Nodeum::SDK::PoolsApi

## Load the API package
```perl
use Nodeum::SDK::Object::PoolsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_pool**](PoolsApi.md#create_pool) | **POST** /pools | Creates a new pool.
[**create_primary_scan**](PoolsApi.md#create_primary_scan) | **POST** /pools/{pool_id}/primary_scan | Set a new primary pool scan option.
[**destroy_pool**](PoolsApi.md#destroy_pool) | **DELETE** /pools/{pool_id} | Destroys a specific tape pool.
[**destroy_primary_scan**](PoolsApi.md#destroy_primary_scan) | **DELETE** /pools/{pool_id}/primary_scan | Disable the primary pool scan.
[**index_pools**](PoolsApi.md#index_pools) | **GET** /pools | Lists all pools.
[**mount_pool**](PoolsApi.md#mount_pool) | **PUT** /pools/{pool_id}/mount | Mount Pool.
[**mount_status_pool**](PoolsApi.md#mount_status_pool) | **GET** /pools/{pool_id}/mount | Get mount status of Pool.
[**show_pool**](PoolsApi.md#show_pool) | **GET** /pools/{pool_id} | Displays a specific pool.
[**show_primary_scan**](PoolsApi.md#show_primary_scan) | **GET** /pools/{pool_id}/primary_scan | Displays the primary pool scan status.
[**sync_primary_pool**](PoolsApi.md#sync_primary_pool) | **POST** /pools/{pool_id}/sync | Synchronize a primary after a scan (for internal use only).
[**unmount_pool**](PoolsApi.md#unmount_pool) | **DELETE** /pools/{pool_id}/mount | Unmount Pool.
[**update_pool**](PoolsApi.md#update_pool) | **PUT** /pools/{pool_id} | Updates a specific pool.
[**update_primary_scan**](PoolsApi.md#update_primary_scan) | **PUT** /pools/{pool_id}/primary_scan | Updates the existing primary pool scan option.


# **create_pool**
> Pool create_pool(pool_body => $pool_body)

Creates a new pool.

**API Key Scope**: pools / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_body = Nodeum::SDK::Object::PoolUp->new(); # PoolUp | 

eval { 
    my $result = $api_instance->create_pool(pool_body => $pool_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->create_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_body** | [**PoolUp**](PoolUp.md)|  | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_primary_scan**
> PrimaryScan create_primary_scan(pool_id => $pool_id, primary_scan_body => $primary_scan_body)

Set a new primary pool scan option.

**API Key Scope**: primary_scans / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $primary_scan_body = Nodeum::SDK::Object::PrimaryScan->new(); # PrimaryScan | 

eval { 
    my $result = $api_instance->create_primary_scan(pool_id => $pool_id, primary_scan_body => $primary_scan_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->create_primary_scan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **primary_scan_body** | [**PrimaryScan**](PrimaryScan.md)|  | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_pool**
> destroy_pool(pool_id => $pool_id)

Destroys a specific tape pool.

**API Key Scope**: pools / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    $api_instance->destroy_pool(pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling PoolsApi->destroy_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_primary_scan**
> destroy_primary_scan(pool_id => $pool_id)

Disable the primary pool scan.

**API Key Scope**: primary_scans / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    $api_instance->destroy_primary_scan(pool_id => $pool_id);
};
if ($@) {
    warn "Exception when calling PoolsApi->destroy_primary_scan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_pools**
> PoolCollection index_pools(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, type => $type, content => $content, primary_id => $primary_id)

Lists all pools.

**API Key Scope**: pools / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

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
my $type = "type_example"; # string | Filter on type
my $content = "content_example"; # string | Filter on content
my $primary_id = "primary_id_example"; # string | Filter on primary id

eval { 
    my $result = $api_instance->index_pools(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, type => $type, content => $content, primary_id => $primary_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->index_pools: $@\n";
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
 **type** | **string**| Filter on type | [optional] 
 **content** | **string**| Filter on content | [optional] 
 **primary_id** | **string**| Filter on primary id | [optional] 

### Return type

[**PoolCollection**](PoolCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_pool**
> MountStatus mount_pool(pool_id => $pool_id)

Mount Pool.

**API Key Scope**: pools / mount

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    my $result = $api_instance->mount_pool(pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->mount_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_pool**
> MountStatus mount_status_pool(pool_id => $pool_id)

Get mount status of Pool.

**API Key Scope**: pools / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    my $result = $api_instance->mount_status_pool(pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->mount_status_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_pool**
> Pool show_pool(pool_id => $pool_id)

Displays a specific pool.

**API Key Scope**: pools / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    my $result = $api_instance->show_pool(pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->show_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_primary_scan**
> PrimaryScan show_primary_scan(pool_id => $pool_id)

Displays the primary pool scan status.

**API Key Scope**: primary_scans / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    my $result = $api_instance->show_primary_scan(pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->show_primary_scan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_primary_pool**
> sync_primary_pool(pool_id => $pool_id, tx => $tx)

Synchronize a primary after a scan (for internal use only).

**API Key Scope**: pools / sync_primary

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $tx = 56; # int | New transaction number.

eval { 
    $api_instance->sync_primary_pool(pool_id => $pool_id, tx => $tx);
};
if ($@) {
    warn "Exception when calling PoolsApi->sync_primary_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **tx** | **int**| New transaction number. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unmount_pool**
> MountStatus unmount_pool(pool_id => $pool_id)

Unmount Pool.

**API Key Scope**: pools / unmount

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.

eval { 
    my $result = $api_instance->unmount_pool(pool_id => $pool_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->unmount_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_pool**
> Pool update_pool(pool_id => $pool_id, pool_body => $pool_body)

Updates a specific pool.

**API Key Scope**: pools / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $pool_body = Nodeum::SDK::Object::PoolUp->new(); # PoolUp | 

eval { 
    my $result = $api_instance->update_pool(pool_id => $pool_id, pool_body => $pool_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->update_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **pool_body** | [**PoolUp**](PoolUp.md)|  | 

### Return type

[**Pool**](Pool.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_primary_scan**
> PrimaryScan update_primary_scan(pool_id => $pool_id, primary_scan_body => $primary_scan_body)

Updates the existing primary pool scan option.

**API Key Scope**: primary_scans / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::PoolsApi;
my $api_instance = Nodeum::SDK::PoolsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $primary_scan_body = Nodeum::SDK::Object::PrimaryScan->new(); # PrimaryScan | 

eval { 
    my $result = $api_instance->update_primary_scan(pool_id => $pool_id, primary_scan_body => $primary_scan_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling PoolsApi->update_primary_scan: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **primary_scan_body** | [**PrimaryScan**](PrimaryScan.md)|  | 

### Return type

[**PrimaryScan**](PrimaryScan.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

