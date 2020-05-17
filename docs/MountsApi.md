# Nodeum::SDK::MountsApi

## Load the API package
```perl
use Nodeum::SDK::Object::MountsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_mounts**](MountsApi.md#index_mounts) | **GET** /mounts | List all mounted storages.


# **index_mounts**
> MountCollection index_mounts()

List all mounted storages.

**API Key Scope**: mounts / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::MountsApi;
my $api_instance = Nodeum::SDK::MountsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval { 
    my $result = $api_instance->index_mounts();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling MountsApi->index_mounts: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MountCollection**](MountCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

