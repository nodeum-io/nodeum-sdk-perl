# Nodeum::SDK::CloudBucketsApi

## Load the API package
```perl
use Nodeum::SDK::Object::CloudBucketsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_cloud_buckets**](CloudBucketsApi.md#index_cloud_buckets) | **GET** /cloud_buckets | Lists all cloud buckets.
[**index_cloud_buckets_by_cloud_connector**](CloudBucketsApi.md#index_cloud_buckets_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets | Lists all cloud buckets.
[**index_cloud_buckets_by_pool**](CloudBucketsApi.md#index_cloud_buckets_by_pool) | **GET** /pools/{pool_id}/cloud_buckets | Lists all cloud buckets from pool.
[**mount_status_cloud_bucket**](CloudBucketsApi.md#mount_status_cloud_bucket) | **GET** /cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**mount_status_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#mount_status_cloud_bucket_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**mount_status_cloud_bucket_by_pool**](CloudBucketsApi.md#mount_status_cloud_bucket_by_pool) | **GET** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id}/mount | Get mount status of Cloud bucket.
[**show_cloud_bucket**](CloudBucketsApi.md#show_cloud_bucket) | **GET** /cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**show_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#show_cloud_bucket_by_cloud_connector) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**show_cloud_bucket_by_pool**](CloudBucketsApi.md#show_cloud_bucket_by_pool) | **GET** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id} | Displays a specific cloud bucket.
[**sync_cloud_buckets**](CloudBucketsApi.md#sync_cloud_buckets) | **PUT** /cloud_connectors/{cloud_connector_id}/cloud_buckets/-/sync | Synchronize internal cloud buckets with their remote equivalent.
[**sync_result_cloud_buckets**](CloudBucketsApi.md#sync_result_cloud_buckets) | **GET** /cloud_connectors/{cloud_connector_id}/cloud_buckets/-/sync | Check result of cloud connector sync job.
[**update_cloud_bucket**](CloudBucketsApi.md#update_cloud_bucket) | **PUT** /cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.
[**update_cloud_bucket_by_cloud_connector**](CloudBucketsApi.md#update_cloud_bucket_by_cloud_connector) | **PUT** /cloud_connectors/{cloud_connector_id}/cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.
[**update_cloud_bucket_by_pool**](CloudBucketsApi.md#update_cloud_bucket_by_pool) | **PUT** /pools/{pool_id}/cloud_buckets/{cloud_bucket_id} | Updates a specific cloud bucket.
[**update_config_file_cloud_bucket**](CloudBucketsApi.md#update_config_file_cloud_bucket) | **PUT** /cloud_buckets/{cloud_bucket_id}/config_file | Updates a specific cloud bucket.


# **index_cloud_buckets**
> CloudBucketCollection index_cloud_buckets(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, cloud_connector_id => $cloud_connector_id, pool_id => $pool_id, name => $name, location => $location, price => $price)

Lists all cloud buckets.

**API Key Scope**: cloud_buckets / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

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
my $cloud_connector_id = "cloud_connector_id_example"; # string | Filter on cloud connector id
my $pool_id = "pool_id_example"; # string | Filter on a pool id
my $name = "name_example"; # string | Filter on name
my $location = "location_example"; # string | Filter on location
my $price = "price_example"; # string | Filter on price

eval { 
    my $result = $api_instance->index_cloud_buckets(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, cloud_connector_id => $cloud_connector_id, pool_id => $pool_id, name => $name, location => $location, price => $price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->index_cloud_buckets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **cloud_connector_id** | **string**| Filter on cloud connector id | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **price** | **string**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cloud_buckets_by_cloud_connector**
> CloudBucketCollection index_cloud_buckets_by_cloud_connector(cloud_connector_id => $cloud_connector_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, pool_id => $pool_id, name => $name, location => $location, price => $price)

Lists all cloud buckets.

**API Key Scope**: cloud_buckets / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $pool_id = "pool_id_example"; # string | Filter on a pool id
my $name = "name_example"; # string | Filter on name
my $location = "location_example"; # string | Filter on location
my $price = "price_example"; # string | Filter on price

eval { 
    my $result = $api_instance->index_cloud_buckets_by_cloud_connector(cloud_connector_id => $cloud_connector_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, pool_id => $pool_id, name => $name, location => $location, price => $price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->index_cloud_buckets_by_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **pool_id** | **string**| Filter on a pool id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **price** | **string**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_cloud_buckets_by_pool**
> CloudBucketCollection index_cloud_buckets_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, cloud_connector_id => $cloud_connector_id, name => $name, location => $location, price => $price)

Lists all cloud buckets from pool.

**API Key Scope**: cloud_buckets / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

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
my $cloud_connector_id = "cloud_connector_id_example"; # string | Filter on cloud connector id
my $name = "name_example"; # string | Filter on name
my $location = "location_example"; # string | Filter on location
my $price = "price_example"; # string | Filter on price

eval { 
    my $result = $api_instance->index_cloud_buckets_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, cloud_connector_id => $cloud_connector_id, name => $name, location => $location, price => $price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->index_cloud_buckets_by_pool: $@\n";
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
 **cloud_connector_id** | **string**| Filter on cloud connector id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **price** | **string**| Filter on price | [optional] 

### Return type

[**CloudBucketCollection**](CloudBucketCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_cloud_bucket**
> MountStatus mount_status_cloud_bucket(cloud_bucket_id => $cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->mount_status_cloud_bucket(cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->mount_status_cloud_bucket: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_cloud_bucket_by_cloud_connector**
> MountStatus mount_status_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->mount_status_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->mount_status_cloud_bucket_by_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_cloud_bucket_by_pool**
> MountStatus mount_status_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id)

Get mount status of Cloud bucket.

**API Key Scope**: cloud_buckets / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->mount_status_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->mount_status_cloud_bucket_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_cloud_bucket**
> CloudBucket show_cloud_bucket(cloud_bucket_id => $cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->show_cloud_bucket(cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->show_cloud_bucket: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_cloud_bucket_by_cloud_connector**
> CloudBucket show_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->show_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->show_cloud_bucket_by_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_cloud_bucket_by_pool**
> CloudBucket show_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id)

Displays a specific cloud bucket.

**API Key Scope**: cloud_buckets / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.

eval { 
    my $result = $api_instance->show_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->show_cloud_bucket_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_cloud_buckets**
> ActiveJobStatus sync_cloud_buckets(cloud_connector_id => $cloud_connector_id)

Synchronize internal cloud buckets with their remote equivalent.

**API Key Scope**: cloud_buckets / sync

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

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
    my $result = $api_instance->sync_cloud_buckets(cloud_connector_id => $cloud_connector_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->sync_cloud_buckets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sync_result_cloud_buckets**
> CloudBucketSimpleCollection sync_result_cloud_buckets(cloud_connector_id => $cloud_connector_id, job_id => $job_id)

Check result of cloud connector sync job.

**API Key Scope**: cloud_buckets / sync

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->sync_result_cloud_buckets(cloud_connector_id => $cloud_connector_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->sync_result_cloud_buckets: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**CloudBucketSimpleCollection**](CloudBucketSimpleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_cloud_bucket**
> CloudBucket update_cloud_bucket(cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.
my $cloud_bucket_body = Nodeum::SDK::Object::CloudBucket->new(); # CloudBucket | 

eval { 
    my $result = $api_instance->update_cloud_bucket(cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->update_cloud_bucket: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_cloud_bucket_by_cloud_connector**
> CloudBucket update_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_connector_id = "cloud_connector_id_example"; # string | Numeric ID or name of cloud connector.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.
my $cloud_bucket_body = Nodeum::SDK::Object::CloudBucket->new(); # CloudBucket | 

eval { 
    my $result = $api_instance->update_cloud_bucket_by_cloud_connector(cloud_connector_id => $cloud_connector_id, cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->update_cloud_bucket_by_cloud_connector: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_connector_id** | **string**| Numeric ID or name of cloud connector. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_cloud_bucket_by_pool**
> CloudBucket update_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.
my $cloud_bucket_body = Nodeum::SDK::Object::CloudBucket->new(); # CloudBucket | 

eval { 
    my $result = $api_instance->update_cloud_bucket_by_pool(pool_id => $pool_id, cloud_bucket_id => $cloud_bucket_id, cloud_bucket_body => $cloud_bucket_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->update_cloud_bucket_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 
 **cloud_bucket_body** | [**CloudBucket**](CloudBucket.md)|  | 

### Return type

[**CloudBucket**](CloudBucket.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_config_file_cloud_bucket**
> string update_config_file_cloud_bucket(cloud_bucket_id => $cloud_bucket_id, config_file => $config_file)

Updates a specific cloud bucket.

**API Key Scope**: cloud_buckets / update_config_file

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::CloudBucketsApi;
my $api_instance = Nodeum::SDK::CloudBucketsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cloud_bucket_id = "cloud_bucket_id_example"; # string | Numeric ID or name of cloud bucket.
my $config_file = "/path/to/file"; # string | Config file to upload.

eval { 
    my $result = $api_instance->update_config_file_cloud_bucket(cloud_bucket_id => $cloud_bucket_id, config_file => $config_file);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling CloudBucketsApi->update_config_file_cloud_bucket: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cloud_bucket_id** | **string**| Numeric ID or name of cloud bucket. | 
 **config_file** | **string****string**| Config file to upload. | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

