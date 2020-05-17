# Nodeum::SDK::TapeDrivesApi

## Load the API package
```perl
use Nodeum::SDK::Object::TapeDrivesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_tape_drive_by_tape_library**](TapeDrivesApi.md#create_tape_drive_by_tape_library) | **POST** /tape_libraries/{tape_library_id}/tape_drives | Creates a new tape drive.
[**destroy_tape_drive**](TapeDrivesApi.md#destroy_tape_drive) | **DELETE** /tape_drives/{tape_drive_id} | Destroys a specific tape drive.
[**destroy_tape_drive_by_tape_library**](TapeDrivesApi.md#destroy_tape_drive_by_tape_library) | **DELETE** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Destroys a specific tape drive.
[**index_tape_drive_devices**](TapeDrivesApi.md#index_tape_drive_devices) | **GET** /tape_libraries/{tape_library_id}/tape_drives/-/devices | Lists tape drives devices.
[**index_tape_drives**](TapeDrivesApi.md#index_tape_drives) | **GET** /tape_drives | Lists all tape drives.
[**index_tape_drives_by_tape_library**](TapeDrivesApi.md#index_tape_drives_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tape_drives | Lists all tape drives.
[**show_tape_drive**](TapeDrivesApi.md#show_tape_drive) | **GET** /tape_drives/{tape_drive_id} | Displays a specific tape drive.
[**show_tape_drive_by_tape_library**](TapeDrivesApi.md#show_tape_drive_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Displays a specific tape drive.
[**update_tape_drive**](TapeDrivesApi.md#update_tape_drive) | **PUT** /tape_drives/{tape_drive_id} | Updates a specific tape drive.
[**update_tape_drive_by_tape_library**](TapeDrivesApi.md#update_tape_drive_by_tape_library) | **PUT** /tape_libraries/{tape_library_id}/tape_drives/{tape_drive_id} | Updates a specific tape drive.


# **create_tape_drive_by_tape_library**
> TapeDrive create_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_body => $tape_drive_body)

Creates a new tape drive.

**API Key Scope**: tape_drives / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_drive_body = Nodeum::SDK::Object::TapeDrive->new(); # TapeDrive | 

eval { 
    my $result = $api_instance->create_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_body => $tape_drive_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->create_tape_drive_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_tape_drive**
> destroy_tape_drive(tape_drive_id => $tape_drive_id)

Destroys a specific tape drive.

**API Key Scope**: tape_drives / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.

eval { 
    $api_instance->destroy_tape_drive(tape_drive_id => $tape_drive_id);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->destroy_tape_drive: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_tape_drive_by_tape_library**
> destroy_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id)

Destroys a specific tape drive.

**API Key Scope**: tape_drives / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.

eval { 
    $api_instance->destroy_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->destroy_tape_drive_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tape_drive_devices**
> TapeDriveDeviceCollection index_tape_drive_devices(tape_library_id => $tape_library_id, job_id => $job_id)

Lists tape drives devices.

**API Key Scope**: tape_drives / devices

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->index_tape_drive_devices(tape_library_id => $tape_library_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->index_tape_drive_devices: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**TapeDriveDeviceCollection**](TapeDriveDeviceCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tape_drives**
> TapeDriveCollection index_tape_drives(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, name => $name, serial => $serial, comment => $comment, scsi_address => $scsi_address, vendor => $vendor, product => $product, firmware => $firmware, device => $device, sgdevice => $sgdevice, libso => $libso, acs => $acs, lsm => $lsm, panel => $panel, transport => $transport, status => $status, full => $full, mount_count => $mount_count, use_to => $use_to, use_by => $use_by, barcode => $barcode, task_id => $task_id, use_file_processed_size => $use_file_processed_size, use_file_size_to_process => $use_file_size_to_process, use_file_name_processed => $use_file_name_processed, bandwidth => $bandwidth)

Lists all tape drives.

**API Key Scope**: tape_drives / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

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
my $tape_library_id = "tape_library_id_example"; # string | Filter on tape library id
my $name = "name_example"; # string | Filter on name
my $serial = "serial_example"; # string | Filter on serial
my $comment = "comment_example"; # string | Filter on comment
my $scsi_address = "scsi_address_example"; # string | Filter on scsi address
my $vendor = "vendor_example"; # string | Filter on vendor
my $product = "product_example"; # string | Filter on product
my $firmware = "firmware_example"; # string | Filter on firmware
my $device = "device_example"; # string | Filter on device
my $sgdevice = "sgdevice_example"; # string | Filter on sgdevice
my $libso = "libso_example"; # string | Filter on libso
my $acs = "acs_example"; # string | Filter on acs
my $lsm = "lsm_example"; # string | Filter on lsm
my $panel = "panel_example"; # string | Filter on panel
my $transport = "transport_example"; # string | Filter on transport
my $status = "status_example"; # string | Filter on status
my $full = "full_example"; # string | Filter on full
my $mount_count = "mount_count_example"; # string | Filter on mount count
my $use_to = "use_to_example"; # string | Filter on use to
my $use_by = "use_by_example"; # string | Filter on use by
my $barcode = "barcode_example"; # string | Filter on barcode
my $task_id = "task_id_example"; # string | Filter on task id
my $use_file_processed_size = "use_file_processed_size_example"; # string | Filter on use file processed size
my $use_file_size_to_process = "use_file_size_to_process_example"; # string | Filter on use file size to process
my $use_file_name_processed = "use_file_name_processed_example"; # string | Filter on use file name processed
my $bandwidth = "bandwidth_example"; # string | Filter on bandwidth

eval { 
    my $result = $api_instance->index_tape_drives(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, name => $name, serial => $serial, comment => $comment, scsi_address => $scsi_address, vendor => $vendor, product => $product, firmware => $firmware, device => $device, sgdevice => $sgdevice, libso => $libso, acs => $acs, lsm => $lsm, panel => $panel, transport => $transport, status => $status, full => $full, mount_count => $mount_count, use_to => $use_to, use_by => $use_by, barcode => $barcode, task_id => $task_id, use_file_processed_size => $use_file_processed_size, use_file_size_to_process => $use_file_size_to_process, use_file_name_processed => $use_file_name_processed, bandwidth => $bandwidth);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->index_tape_drives: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **tape_library_id** | **string**| Filter on tape library id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **serial** | **string**| Filter on serial | [optional] 
 **comment** | **string**| Filter on comment | [optional] 
 **scsi_address** | **string**| Filter on scsi address | [optional] 
 **vendor** | **string**| Filter on vendor | [optional] 
 **product** | **string**| Filter on product | [optional] 
 **firmware** | **string**| Filter on firmware | [optional] 
 **device** | **string**| Filter on device | [optional] 
 **sgdevice** | **string**| Filter on sgdevice | [optional] 
 **libso** | **string**| Filter on libso | [optional] 
 **acs** | **string**| Filter on acs | [optional] 
 **lsm** | **string**| Filter on lsm | [optional] 
 **panel** | **string**| Filter on panel | [optional] 
 **transport** | **string**| Filter on transport | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **full** | **string**| Filter on full | [optional] 
 **mount_count** | **string**| Filter on mount count | [optional] 
 **use_to** | **string**| Filter on use to | [optional] 
 **use_by** | **string**| Filter on use by | [optional] 
 **barcode** | **string**| Filter on barcode | [optional] 
 **task_id** | **string**| Filter on task id | [optional] 
 **use_file_processed_size** | **string**| Filter on use file processed size | [optional] 
 **use_file_size_to_process** | **string**| Filter on use file size to process | [optional] 
 **use_file_name_processed** | **string**| Filter on use file name processed | [optional] 
 **bandwidth** | **string**| Filter on bandwidth | [optional] 

### Return type

[**TapeDriveCollection**](TapeDriveCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tape_drives_by_tape_library**
> TapeDriveCollection index_tape_drives_by_tape_library(tape_library_id => $tape_library_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, serial => $serial, comment => $comment, scsi_address => $scsi_address, vendor => $vendor, product => $product, firmware => $firmware, device => $device, sgdevice => $sgdevice, libso => $libso, acs => $acs, lsm => $lsm, panel => $panel, transport => $transport, status => $status, full => $full, mount_count => $mount_count, use_to => $use_to, use_by => $use_by, barcode => $barcode, task_id => $task_id, use_file_processed_size => $use_file_processed_size, use_file_size_to_process => $use_file_size_to_process, use_file_name_processed => $use_file_name_processed, bandwidth => $bandwidth)

Lists all tape drives.

**API Key Scope**: tape_drives / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $serial = "serial_example"; # string | Filter on serial
my $comment = "comment_example"; # string | Filter on comment
my $scsi_address = "scsi_address_example"; # string | Filter on scsi address
my $vendor = "vendor_example"; # string | Filter on vendor
my $product = "product_example"; # string | Filter on product
my $firmware = "firmware_example"; # string | Filter on firmware
my $device = "device_example"; # string | Filter on device
my $sgdevice = "sgdevice_example"; # string | Filter on sgdevice
my $libso = "libso_example"; # string | Filter on libso
my $acs = "acs_example"; # string | Filter on acs
my $lsm = "lsm_example"; # string | Filter on lsm
my $panel = "panel_example"; # string | Filter on panel
my $transport = "transport_example"; # string | Filter on transport
my $status = "status_example"; # string | Filter on status
my $full = "full_example"; # string | Filter on full
my $mount_count = "mount_count_example"; # string | Filter on mount count
my $use_to = "use_to_example"; # string | Filter on use to
my $use_by = "use_by_example"; # string | Filter on use by
my $barcode = "barcode_example"; # string | Filter on barcode
my $task_id = "task_id_example"; # string | Filter on task id
my $use_file_processed_size = "use_file_processed_size_example"; # string | Filter on use file processed size
my $use_file_size_to_process = "use_file_size_to_process_example"; # string | Filter on use file size to process
my $use_file_name_processed = "use_file_name_processed_example"; # string | Filter on use file name processed
my $bandwidth = "bandwidth_example"; # string | Filter on bandwidth

eval { 
    my $result = $api_instance->index_tape_drives_by_tape_library(tape_library_id => $tape_library_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, serial => $serial, comment => $comment, scsi_address => $scsi_address, vendor => $vendor, product => $product, firmware => $firmware, device => $device, sgdevice => $sgdevice, libso => $libso, acs => $acs, lsm => $lsm, panel => $panel, transport => $transport, status => $status, full => $full, mount_count => $mount_count, use_to => $use_to, use_by => $use_by, barcode => $barcode, task_id => $task_id, use_file_processed_size => $use_file_processed_size, use_file_size_to_process => $use_file_size_to_process, use_file_name_processed => $use_file_name_processed, bandwidth => $bandwidth);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->index_tape_drives_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **serial** | **string**| Filter on serial | [optional] 
 **comment** | **string**| Filter on comment | [optional] 
 **scsi_address** | **string**| Filter on scsi address | [optional] 
 **vendor** | **string**| Filter on vendor | [optional] 
 **product** | **string**| Filter on product | [optional] 
 **firmware** | **string**| Filter on firmware | [optional] 
 **device** | **string**| Filter on device | [optional] 
 **sgdevice** | **string**| Filter on sgdevice | [optional] 
 **libso** | **string**| Filter on libso | [optional] 
 **acs** | **string**| Filter on acs | [optional] 
 **lsm** | **string**| Filter on lsm | [optional] 
 **panel** | **string**| Filter on panel | [optional] 
 **transport** | **string**| Filter on transport | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **full** | **string**| Filter on full | [optional] 
 **mount_count** | **string**| Filter on mount count | [optional] 
 **use_to** | **string**| Filter on use to | [optional] 
 **use_by** | **string**| Filter on use by | [optional] 
 **barcode** | **string**| Filter on barcode | [optional] 
 **task_id** | **string**| Filter on task id | [optional] 
 **use_file_processed_size** | **string**| Filter on use file processed size | [optional] 
 **use_file_size_to_process** | **string**| Filter on use file size to process | [optional] 
 **use_file_name_processed** | **string**| Filter on use file name processed | [optional] 
 **bandwidth** | **string**| Filter on bandwidth | [optional] 

### Return type

[**TapeDriveCollection**](TapeDriveCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_drive**
> TapeDrive show_tape_drive(tape_drive_id => $tape_drive_id)

Displays a specific tape drive.

**API Key Scope**: tape_drives / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.

eval { 
    my $result = $api_instance->show_tape_drive(tape_drive_id => $tape_drive_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->show_tape_drive: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_drive_by_tape_library**
> TapeDrive show_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id)

Displays a specific tape drive.

**API Key Scope**: tape_drives / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.

eval { 
    my $result = $api_instance->show_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->show_tape_drive_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tape_drive**
> TapeDrive update_tape_drive(tape_drive_id => $tape_drive_id, tape_drive_body => $tape_drive_body)

Updates a specific tape drive.

**API Key Scope**: tape_drives / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.
my $tape_drive_body = Nodeum::SDK::Object::TapeDrive->new(); # TapeDrive | 

eval { 
    my $result = $api_instance->update_tape_drive(tape_drive_id => $tape_drive_id, tape_drive_body => $tape_drive_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->update_tape_drive: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_tape_drive_by_tape_library**
> TapeDrive update_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id, tape_drive_body => $tape_drive_body)

Updates a specific tape drive.

**API Key Scope**: tape_drives / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapeDrivesApi;
my $api_instance = Nodeum::SDK::TapeDrivesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_drive_id = "tape_drive_id_example"; # string | Numeric ID, serial, or name of tape drive.
my $tape_drive_body = Nodeum::SDK::Object::TapeDrive->new(); # TapeDrive | 

eval { 
    my $result = $api_instance->update_tape_drive_by_tape_library(tape_library_id => $tape_library_id, tape_drive_id => $tape_drive_id, tape_drive_body => $tape_drive_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapeDrivesApi->update_tape_drive_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_drive_id** | **string**| Numeric ID, serial, or name of tape drive. | 
 **tape_drive_body** | [**TapeDrive**](TapeDrive.md)|  | 

### Return type

[**TapeDrive**](TapeDrive.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

