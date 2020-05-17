# Nodeum::SDK::TapesApi

## Load the API package
```perl
use Nodeum::SDK::Object::TapesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_tape_stats**](TapesApi.md#index_tape_stats) | **GET** /tape_stats | List all tape statistics.
[**index_tapes**](TapesApi.md#index_tapes) | **GET** /tapes | Lists all tapes.
[**index_tapes_by_pool**](TapesApi.md#index_tapes_by_pool) | **GET** /pools/{pool_id}/tapes | Lists all tapes.
[**index_tapes_by_tape_library**](TapesApi.md#index_tapes_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes | Lists all tapes.
[**mount_status_tape**](TapesApi.md#mount_status_tape) | **GET** /tapes/{tape_id}/mount | Get mount status of Tape.
[**mount_status_tape_by_pool**](TapesApi.md#mount_status_tape_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id}/mount | Get mount status of Tape.
[**mount_status_tape_by_tape_library**](TapesApi.md#mount_status_tape_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id}/mount | Get mount status of Tape.
[**show_tape**](TapesApi.md#show_tape) | **GET** /tapes/{tape_id} | Displays a specific tape.
[**show_tape_by_pool**](TapesApi.md#show_tape_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id} | Displays a specific tape.
[**show_tape_by_tape_library**](TapesApi.md#show_tape_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id} | Displays a specific tape.
[**show_tape_stat**](TapesApi.md#show_tape_stat) | **GET** /tapes/{tape_id}/tape_stat | Display statistic for a specific tape.
[**show_tape_stat_by_pool**](TapesApi.md#show_tape_stat_by_pool) | **GET** /pools/{pool_id}/tapes/{tape_id}/tape_stat | Display statistic for a specific tape.
[**show_tape_stat_by_tape_library**](TapesApi.md#show_tape_stat_by_tape_library) | **GET** /tape_libraries/{tape_library_id}/tapes/{tape_id}/tape_stat | Display statistic for a specific tape.


# **index_tape_stats**
> TapeStatCollection index_tape_stats(limit => $limit, offset => $offset)

List all tape statistics.

**API Key Scope**: tape_stats / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

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
    my $result = $api_instance->index_tape_stats(limit => $limit, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->index_tape_stats: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 

### Return type

[**TapeStatCollection**](TapeStatCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes**
> TapeCollection index_tapes(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check)

Lists all tapes.

**API Key Scope**: tapes / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

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
my $pool_id = "pool_id_example"; # string | Filter on a pool id
my $barcode = "barcode_example"; # string | Filter on barcode
my $location = "location_example"; # string | Filter on location
my $type = "type_example"; # string | Filter on type
my $locked = "locked_example"; # string | Filter on locked
my $scratch = "scratch_example"; # string | Filter on scratch
my $cleaning = "cleaning_example"; # string | Filter on cleaning
my $write_protect = "write_protect_example"; # string | Filter on write protect
my $mounted = "mounted_example"; # string | Filter on mounted
my $ejected = "ejected_example"; # string | Filter on ejected
my $known = "known_example"; # string | Filter on known
my $mount_count = "mount_count_example"; # string | Filter on mount count
my $date_in = "date_in_example"; # string | Filter on date in
my $date_move = "date_move_example"; # string | Filter on date move
my $free = "free_example"; # string | Filter on free
my $max = "max_example"; # string | Filter on max
my $last_size_update = "last_size_update_example"; # string | Filter on last size update
my $last_maintenance = "last_maintenance_example"; # string | Filter on last maintenance
my $last_repack = "last_repack_example"; # string | Filter on last repack
my $repack_status = "repack_status_example"; # string | Filter on repack status
my $hash = "hash_example"; # string | Filter on hash
my $force_import_type = "force_import_type_example"; # string | Filter on force import type
my $need_to_check = "need_to_check_example"; # string | Filter on need to check

eval { 
    my $result = $api_instance->index_tapes(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->index_tapes: $@\n";
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
 **pool_id** | **string**| Filter on a pool id | [optional] 
 **barcode** | **string**| Filter on barcode | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **locked** | **string**| Filter on locked | [optional] 
 **scratch** | **string**| Filter on scratch | [optional] 
 **cleaning** | **string**| Filter on cleaning | [optional] 
 **write_protect** | **string**| Filter on write protect | [optional] 
 **mounted** | **string**| Filter on mounted | [optional] 
 **ejected** | **string**| Filter on ejected | [optional] 
 **known** | **string**| Filter on known | [optional] 
 **mount_count** | **string**| Filter on mount count | [optional] 
 **date_in** | **string**| Filter on date in | [optional] 
 **date_move** | **string**| Filter on date move | [optional] 
 **free** | **string**| Filter on free | [optional] 
 **max** | **string**| Filter on max | [optional] 
 **last_size_update** | **string**| Filter on last size update | [optional] 
 **last_maintenance** | **string**| Filter on last maintenance | [optional] 
 **last_repack** | **string**| Filter on last repack | [optional] 
 **repack_status** | **string**| Filter on repack status | [optional] 
 **hash** | **string**| Filter on hash | [optional] 
 **force_import_type** | **string**| Filter on force import type | [optional] 
 **need_to_check** | **string**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_pool**
> TapeCollection index_tapes_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check)

Lists all tapes.

**API Key Scope**: tapes / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

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
my $tape_library_id = "tape_library_id_example"; # string | Filter on tape library id
my $barcode = "barcode_example"; # string | Filter on barcode
my $location = "location_example"; # string | Filter on location
my $type = "type_example"; # string | Filter on type
my $locked = "locked_example"; # string | Filter on locked
my $scratch = "scratch_example"; # string | Filter on scratch
my $cleaning = "cleaning_example"; # string | Filter on cleaning
my $write_protect = "write_protect_example"; # string | Filter on write protect
my $mounted = "mounted_example"; # string | Filter on mounted
my $ejected = "ejected_example"; # string | Filter on ejected
my $known = "known_example"; # string | Filter on known
my $mount_count = "mount_count_example"; # string | Filter on mount count
my $date_in = "date_in_example"; # string | Filter on date in
my $date_move = "date_move_example"; # string | Filter on date move
my $free = "free_example"; # string | Filter on free
my $max = "max_example"; # string | Filter on max
my $last_size_update = "last_size_update_example"; # string | Filter on last size update
my $last_maintenance = "last_maintenance_example"; # string | Filter on last maintenance
my $last_repack = "last_repack_example"; # string | Filter on last repack
my $repack_status = "repack_status_example"; # string | Filter on repack status
my $hash = "hash_example"; # string | Filter on hash
my $force_import_type = "force_import_type_example"; # string | Filter on force import type
my $need_to_check = "need_to_check_example"; # string | Filter on need to check

eval { 
    my $result = $api_instance->index_tapes_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->index_tapes_by_pool: $@\n";
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
 **tape_library_id** | **string**| Filter on tape library id | [optional] 
 **barcode** | **string**| Filter on barcode | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **locked** | **string**| Filter on locked | [optional] 
 **scratch** | **string**| Filter on scratch | [optional] 
 **cleaning** | **string**| Filter on cleaning | [optional] 
 **write_protect** | **string**| Filter on write protect | [optional] 
 **mounted** | **string**| Filter on mounted | [optional] 
 **ejected** | **string**| Filter on ejected | [optional] 
 **known** | **string**| Filter on known | [optional] 
 **mount_count** | **string**| Filter on mount count | [optional] 
 **date_in** | **string**| Filter on date in | [optional] 
 **date_move** | **string**| Filter on date move | [optional] 
 **free** | **string**| Filter on free | [optional] 
 **max** | **string**| Filter on max | [optional] 
 **last_size_update** | **string**| Filter on last size update | [optional] 
 **last_maintenance** | **string**| Filter on last maintenance | [optional] 
 **last_repack** | **string**| Filter on last repack | [optional] 
 **repack_status** | **string**| Filter on repack status | [optional] 
 **hash** | **string**| Filter on hash | [optional] 
 **force_import_type** | **string**| Filter on force import type | [optional] 
 **need_to_check** | **string**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_tape_library**
> TapeCollection index_tapes_by_tape_library(tape_library_id => $tape_library_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check)

Lists all tapes.

**API Key Scope**: tapes / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

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
my $pool_id = "pool_id_example"; # string | Filter on a pool id
my $barcode = "barcode_example"; # string | Filter on barcode
my $location = "location_example"; # string | Filter on location
my $type = "type_example"; # string | Filter on type
my $locked = "locked_example"; # string | Filter on locked
my $scratch = "scratch_example"; # string | Filter on scratch
my $cleaning = "cleaning_example"; # string | Filter on cleaning
my $write_protect = "write_protect_example"; # string | Filter on write protect
my $mounted = "mounted_example"; # string | Filter on mounted
my $ejected = "ejected_example"; # string | Filter on ejected
my $known = "known_example"; # string | Filter on known
my $mount_count = "mount_count_example"; # string | Filter on mount count
my $date_in = "date_in_example"; # string | Filter on date in
my $date_move = "date_move_example"; # string | Filter on date move
my $free = "free_example"; # string | Filter on free
my $max = "max_example"; # string | Filter on max
my $last_size_update = "last_size_update_example"; # string | Filter on last size update
my $last_maintenance = "last_maintenance_example"; # string | Filter on last maintenance
my $last_repack = "last_repack_example"; # string | Filter on last repack
my $repack_status = "repack_status_example"; # string | Filter on repack status
my $hash = "hash_example"; # string | Filter on hash
my $force_import_type = "force_import_type_example"; # string | Filter on force import type
my $need_to_check = "need_to_check_example"; # string | Filter on need to check

eval { 
    my $result = $api_instance->index_tapes_by_tape_library(tape_library_id => $tape_library_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->index_tapes_by_tape_library: $@\n";
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
 **pool_id** | **string**| Filter on a pool id | [optional] 
 **barcode** | **string**| Filter on barcode | [optional] 
 **location** | **string**| Filter on location | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **locked** | **string**| Filter on locked | [optional] 
 **scratch** | **string**| Filter on scratch | [optional] 
 **cleaning** | **string**| Filter on cleaning | [optional] 
 **write_protect** | **string**| Filter on write protect | [optional] 
 **mounted** | **string**| Filter on mounted | [optional] 
 **ejected** | **string**| Filter on ejected | [optional] 
 **known** | **string**| Filter on known | [optional] 
 **mount_count** | **string**| Filter on mount count | [optional] 
 **date_in** | **string**| Filter on date in | [optional] 
 **date_move** | **string**| Filter on date move | [optional] 
 **free** | **string**| Filter on free | [optional] 
 **max** | **string**| Filter on max | [optional] 
 **last_size_update** | **string**| Filter on last size update | [optional] 
 **last_maintenance** | **string**| Filter on last maintenance | [optional] 
 **last_repack** | **string**| Filter on last repack | [optional] 
 **repack_status** | **string**| Filter on repack status | [optional] 
 **hash** | **string**| Filter on hash | [optional] 
 **force_import_type** | **string**| Filter on force import type | [optional] 
 **need_to_check** | **string**| Filter on need to check | [optional] 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_tape**
> MountStatus mount_status_tape(tape_id => $tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->mount_status_tape(tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->mount_status_tape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_tape_by_pool**
> MountStatus mount_status_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->mount_status_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->mount_status_tape_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mount_status_tape_by_tape_library**
> MountStatus mount_status_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id)

Get mount status of Tape.

**API Key Scope**: tapes / mount_status

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->mount_status_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->mount_status_tape_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**MountStatus**](MountStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape**
> Tape show_tape(tape_id => $tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape(tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_by_pool**
> Tape show_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_by_tape_library**
> Tape show_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id)

Displays a specific tape.

**API Key Scope**: tapes / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**Tape**](Tape.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_stat**
> TapeStat show_tape_stat(tape_id => $tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape_stat(tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape_stat: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_stat_by_pool**
> TapeStat show_tape_stat_by_pool(pool_id => $pool_id, tape_id => $tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape_stat_by_pool(pool_id => $pool_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape_stat_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_tape_stat_by_tape_library**
> TapeStat show_tape_stat_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id)

Display statistic for a specific tape.

**API Key Scope**: tape_stats / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TapesApi;
my $api_instance = Nodeum::SDK::TapesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $tape_library_id = "tape_library_id_example"; # string | Numeric ID, serial, or name of tape library.
my $tape_id = "tape_id_example"; # string | Numeric ID, or barcode of tape.

eval { 
    my $result = $api_instance->show_tape_stat_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TapesApi->show_tape_stat_by_tape_library: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **tape_library_id** | **string**| Numeric ID, serial, or name of tape library. | 
 **tape_id** | **string**| Numeric ID, or barcode of tape. | 

### Return type

[**TapeStat**](TapeStat.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

