# Nodeum::SDK::TapeLibrariesApi

## Load the API package
```perl
use Nodeum::SDK::Object::TapeLibrariesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tape_library**](TapeLibrariesApi.md#create_tape_library) | **POST** /tape_libraries | Creates a new tape library.
[**destroy_tape_library**](TapeLibrariesApi.md#destroy_tape_library) | **DELETE** /tape_libraries/{tape_library_id} | Destroys a specific tape library.
[**index_tape_libraries**](TapeLibrariesApi.md#index_tape_libraries) | **GET** /tape_libraries | Lists all tape libraries.
[**index_tape_library_devices**](TapeLibrariesApi.md#index_tape_library_devices) | **GET** /tape_libraries/-/devices | Lists tape libraries devices.
[**show_tape_library**](TapeLibrariesApi.md#show_tape_library) | **GET** /tape_libraries/{tape_library_id} | Displays a specific tape library.
[**update_tape_library**](TapeLibrariesApi.md#update_tape_library) | **PUT** /tape_libraries/{tape_library_id} | Updates a specific tape library.


# **create_tape_library**
> TapeLibrary create_tape_library(tape_library_body => $tape_library_body)

Creates a new tape library.

**API Key Scope**: tape_libraries / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_body = Nodeum::SDK::Object::TapeLibrary->new(); # TapeLibrary | 

eval { 
    my $result = $api_instance->create_tape_library(tape_library_body => $tape_library_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->create_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_body** | [**TapeLibrary**](TapeLibrary.md)|  | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_tape_library**
> destroy_tape_library(tape_library_id => $tape_library_id)

Destroys a specific tape library.

**API Key Scope**: tape_libraries / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.

eval { 
    $api_instance->destroy_tape_library(tape_library_id => $tape_library_id);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->destroy_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tape_libraries**
> TapeLibraryCollection index_tape_libraries(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, serial => $serial, comment => $comment, protocol => $protocol, vendor => $vendor, product => $product, firmware => $firmware, device => $device, libso => $libso, acs => $acs, status => $status, storage_slots => $storage_slots, storage_slots_address => $storage_slots_address, io_slots => $io_slots, io_slots_address => $io_slots_address, price => $price)

Lists all tape libraries.

**API Key Scope**: tape_libraries / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

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
my $serial = "serial_example"; # string | Filter on serial
my $comment = "comment_example"; # string | Filter on comment
my $protocol = "protocol_example"; # string | Filter on protocol
my $vendor = "vendor_example"; # string | Filter on vendor
my $product = "product_example"; # string | Filter on product
my $firmware = "firmware_example"; # string | Filter on firmware
my $device = "device_example"; # string | Filter on device
my $libso = "libso_example"; # string | Filter on libso
my $acs = "acs_example"; # string | Filter on acs
my $status = "status_example"; # string | Filter on status
my $storage_slots = "storage_slots_example"; # string | Filter on storage slots
my $storage_slots_address = "storage_slots_address_example"; # string | Filter on storage slots address
my $io_slots = "io_slots_example"; # string | Filter on io slots
my $io_slots_address = "io_slots_address_example"; # string | Filter on io slots address
my $price = "price_example"; # string | Filter on price

eval { 
    my $result = $api_instance->index_tape_libraries(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, serial => $serial, comment => $comment, protocol => $protocol, vendor => $vendor, product => $product, firmware => $firmware, device => $device, libso => $libso, acs => $acs, status => $status, storage_slots => $storage_slots, storage_slots_address => $storage_slots_address, io_slots => $io_slots, io_slots_address => $io_slots_address, price => $price);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->index_tape_libraries: $@\n";
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
 **serial** | **string**| Filter on serial | [optional] 
 **comment** | **string**| Filter on comment | [optional] 
 **protocol** | **string**| Filter on protocol | [optional] 
 **vendor** | **string**| Filter on vendor | [optional] 
 **product** | **string**| Filter on product | [optional] 
 **firmware** | **string**| Filter on firmware | [optional] 
 **device** | **string**| Filter on device | [optional] 
 **libso** | **string**| Filter on libso | [optional] 
 **acs** | **string**| Filter on acs | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **storage_slots** | **string**| Filter on storage slots | [optional] 
 **storage_slots_address** | **string**| Filter on storage slots address | [optional] 
 **io_slots** | **string**| Filter on io slots | [optional] 
 **io_slots_address** | **string**| Filter on io slots address | [optional] 
 **price** | **string**| Filter on price | [optional] 

### Return type

[**TapeLibraryCollection**](TapeLibraryCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tape_library_devices**
> TapeLibraryDeviceCollection index_tape_library_devices(job_id => $job_id)

Lists tape libraries devices.

**API Key Scope**: tape_libraries / devices

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->index_tape_library_devices(job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->index_tape_library_devices: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **string**| ID of active job | 

### Return type

[**TapeLibraryDeviceCollection**](TapeLibraryDeviceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_library**
> TapeLibrary show_tape_library(tape_library_id => $tape_library_id)

Displays a specific tape library.

**API Key Scope**: tape_libraries / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.

eval { 
    my $result = $api_instance->show_tape_library(tape_library_id => $tape_library_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->show_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tape_library**
> TapeLibrary update_tape_library(tape_library_id => $tape_library_id, tape_library_body => $tape_library_body)

Updates a specific tape library.

**API Key Scope**: tape_libraries / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeLibrariesApi;
my $api_instance = Nodeum::SDK::TapeLibrariesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_library_body = Nodeum::SDK::Object::TapeLibrary->new(); # TapeLibrary | 

eval { 
    my $result = $api_instance->update_tape_library(tape_library_id => $tape_library_id, tape_library_body => $tape_library_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeLibrariesApi->update_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_library_body** | [**TapeLibrary**](TapeLibrary.md)|  | 

### Return type

[**TapeLibrary**](TapeLibrary.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

