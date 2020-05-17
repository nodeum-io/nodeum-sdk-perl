# Nodeum::SDK::FilesApi

## Load the API package
```perl
use Nodeum::SDK::Object::FilesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**files_children**](FilesApi.md#files_children) | **GET** /files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_container**](FilesApi.md#files_children_by_container) | **GET** /containers/{container_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_pool**](FilesApi.md#files_children_by_pool) | **GET** /pools/{pool_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task**](FilesApi.md#files_children_by_task) | **GET** /tasks/{task_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task_execution**](FilesApi.md#files_children_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**files_children_by_task_execution_by_task**](FilesApi.md#files_children_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_parent_id}/children | Lists files under a specific folder.
[**import_files_children_by_pool**](FilesApi.md#import_files_children_by_pool) | **GET** /pools/{pool_id}/import_files/{file_parent_id}/children | Lists files under a specific folder on tape of pools, specific for Data Exchange.
[**index_files**](FilesApi.md#index_files) | **GET** /files | Lists files on root.
[**index_files_by_container**](FilesApi.md#index_files_by_container) | **GET** /containers/{container_id}/files | Lists files on root.
[**index_files_by_pool**](FilesApi.md#index_files_by_pool) | **GET** /pools/{pool_id}/files | Lists files on root.
[**index_files_by_task**](FilesApi.md#index_files_by_task) | **GET** /tasks/{task_id}/files | Lists files on root.
[**index_files_by_task_execution**](FilesApi.md#index_files_by_task_execution) | **GET** /task_executions/{task_execution_id}/files | Lists files on root.
[**index_files_by_task_execution_by_task**](FilesApi.md#index_files_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files | Lists files on root.
[**index_import_files_by_pool**](FilesApi.md#index_import_files_by_pool) | **GET** /pools/{pool_id}/import_files | Lists files on root of tape of pools, specific for Data Exchange.
[**index_on_tapes_files_by_pool**](FilesApi.md#index_on_tapes_files_by_pool) | **GET** /pools/{pool_id}/on_tapes_files | Lists files on root of tape of pools, specific for Active and Offline.
[**index_tapes_by_file_by_pool**](FilesApi.md#index_tapes_by_file_by_pool) | **GET** /pools/{pool_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific pool.
[**index_tapes_by_file_by_task**](FilesApi.md#index_tapes_by_file_by_task) | **GET** /tasks/{task_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**index_tapes_by_file_by_task_execution**](FilesApi.md#index_tapes_by_file_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**index_tapes_by_file_by_task_execution_by_task**](FilesApi.md#index_tapes_by_file_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_id}/tapes | Displays tapes containing specific file, related to the specific task.
[**on_tapes_files_children_by_pool**](FilesApi.md#on_tapes_files_children_by_pool) | **GET** /pools/{pool_id}/on_tapes_files/{file_parent_id}/children | Lists files under a specific folder on tape of pools, specific for Active and Offline.
[**show_file**](FilesApi.md#show_file) | **GET** /files/{file_id} | Displays a specific file.
[**show_file_by_container**](FilesApi.md#show_file_by_container) | **GET** /containers/{container_id}/files/{file_id} | Displays a specific file.
[**show_file_by_pool**](FilesApi.md#show_file_by_pool) | **GET** /pools/{pool_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task**](FilesApi.md#show_file_by_task) | **GET** /tasks/{task_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task_execution**](FilesApi.md#show_file_by_task_execution) | **GET** /task_executions/{task_execution_id}/files/{file_id} | Displays a specific file.
[**show_file_by_task_execution_by_task**](FilesApi.md#show_file_by_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id}/files/{file_id} | Displays a specific file.
[**show_import_file_by_pool**](FilesApi.md#show_import_file_by_pool) | **GET** /pools/{pool_id}/import_files/{file_id} | Displays a specific file on tape of pools, specific for Data Exchange.
[**show_on_tape_file_by_pool**](FilesApi.md#show_on_tape_file_by_pool) | **GET** /pools/{pool_id}/on_tapes_files/{file_id} | Displays a specific file on tape of pools, specific for Active and Offline.


# **files_children**
> NodeumFileCollection files_children(file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children(file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files_children_by_container**
> NodeumFileCollection files_children_by_container(container_id => $container_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children_by_container(container_id => $container_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children_by_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files_children_by_pool**
> NodeumFileCollection files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files_children_by_task**
> NodeumFileCollection files_children_by_task(task_id => $task_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children_by_task(task_id => $task_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files_children_by_task_execution**
> NodeumFileCollection files_children_by_task_execution(task_execution_id => $task_execution_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children_by_task_execution(task_execution_id => $task_execution_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children_by_task_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **files_children_by_task_execution_by_task**
> NodeumFileCollection files_children_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->files_children_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->files_children_by_task_execution_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **import_files_children_by_pool**
> ImportFileCollection import_files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files under a specific folder on tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->import_files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->import_files_children_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**ImportFileCollection**](ImportFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files**
> NodeumFileCollection index_files(limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

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
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files(limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files_by_container**
> NodeumFileCollection index_files_by_container(container_id => $container_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files_by_container(container_id => $container_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files_by_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files_by_pool**
> NodeumFileCollection index_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

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
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files_by_task**
> NodeumFileCollection index_files_by_task(task_id => $task_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

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
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files_by_task(task_id => $task_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files_by_task_execution**
> NodeumFileCollection index_files_by_task_execution(task_execution_id => $task_execution_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files_by_task_execution(task_execution_id => $task_execution_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files_by_task_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_files_by_task_execution_by_task**
> NodeumFileCollection index_files_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root.

**API Key Scope**: files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_files_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_files_by_task_execution_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**NodeumFileCollection**](NodeumFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_import_files_by_pool**
> ImportFileCollection index_import_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid)

Lists files on root of tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

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
my $file_id = "file_id_example"; # string | Filter on file id
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $permission = "permission_example"; # string | Filter on permission
my $size = "size_example"; # string | Filter on size
my $change_date = "change_date_example"; # string | Filter on change date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $access_date = "access_date_example"; # string | Filter on access date
my $gid = "gid_example"; # string | Filter on gid
my $uid = "uid_example"; # string | Filter on uid

eval { 
    my $result = $api_instance->index_import_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, file_id => $file_id, name => $name, type => $type, permission => $permission, size => $size, change_date => $change_date, modification_date => $modification_date, access_date => $access_date, gid => $gid, uid => $uid);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_import_files_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **file_id** | **string**| Filter on file id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **permission** | **string**| Filter on permission | [optional] 
 **size** | **string**| Filter on size | [optional] 
 **change_date** | **string**| Filter on change date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **access_date** | **string**| Filter on access date | [optional] 
 **gid** | **string**| Filter on gid | [optional] 
 **uid** | **string**| Filter on uid | [optional] 

### Return type

[**ImportFileCollection**](ImportFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_on_tapes_files_by_pool**
> OnTapesFileCollection index_on_tapes_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, name => $name, type => $type, size => $size)

Lists files on root of tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

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
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $size = "size_example"; # string | Filter on size

eval { 
    my $result = $api_instance->index_on_tapes_files_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, name => $name, type => $type, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_on_tapes_files_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **size** | **string**| Filter on size | [optional] 

### Return type

[**OnTapesFileCollection**](OnTapesFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_file_by_pool**
> TapeCollection index_tapes_by_file_by_pool(pool_id => $pool_id, file_id => $file_id)

Displays tapes containing specific file, related to the specific pool.

**API Key Scope**: files / tapes

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->index_tapes_by_file_by_pool(pool_id => $pool_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_tapes_by_file_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_file_by_task**
> TapeCollection index_tapes_by_file_by_task(task_id => $task_id, file_id => $file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->index_tapes_by_file_by_task(task_id => $task_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_tapes_by_file_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_file_by_task_execution**
> TapeCollection index_tapes_by_file_by_task_execution(task_execution_id => $task_execution_id, file_id => $file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->index_tapes_by_file_by_task_execution(task_execution_id => $task_execution_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_tapes_by_file_by_task_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tapes_by_file_by_task_execution_by_task**
> TapeCollection index_tapes_by_file_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_id => $file_id)

Displays tapes containing specific file, related to the specific task.

**API Key Scope**: files / tapes

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->index_tapes_by_file_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->index_tapes_by_file_by_task_execution_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**TapeCollection**](TapeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **on_tapes_files_children_by_pool**
> OnTapesFileCollection on_tapes_files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, name => $name, type => $type, size => $size)

Lists files under a specific folder on tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_parent_id = 56; # int | Numeric ID of parent folder.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $name = "name_example"; # string | Filter on name
my $type = "type_example"; # string | Filter on type
my $size = "size_example"; # string | Filter on size

eval { 
    my $result = $api_instance->on_tapes_files_children_by_pool(pool_id => $pool_id, file_parent_id => $file_parent_id, limit => $limit, offset => $offset, name => $name, type => $type, size => $size);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->on_tapes_files_children_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_parent_id** | **int**| Numeric ID of parent folder. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **type** | **string**| Filter on type | [optional] 
 **size** | **string**| Filter on size | [optional] 

### Return type

[**OnTapesFileCollection**](OnTapesFileCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file**
> NodeumFileWithPath show_file(file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file(file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_by_container**
> NodeumFileWithPath show_file_by_container(container_id => $container_id, file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file_by_container(container_id => $container_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file_by_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_by_pool**
> NodeumFileWithPath show_file_by_pool(pool_id => $pool_id, file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file_by_pool(pool_id => $pool_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_by_task**
> NodeumFileWithPath show_file_by_task(task_id => $task_id, file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file_by_task(task_id => $task_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_by_task_execution**
> NodeumFileWithPath show_file_by_task_execution(task_execution_id => $task_execution_id, file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file_by_task_execution(task_execution_id => $task_execution_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file_by_task_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_file_by_task_execution_by_task**
> NodeumFileWithPath show_file_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_id => $file_id)

Displays a specific file.

**API Key Scope**: files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_file_by_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_file_by_task_execution_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **string**| Numeric ID of task execution. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**NodeumFileWithPath**](NodeumFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_import_file_by_pool**
> ImportFileWithPath show_import_file_by_pool(pool_id => $pool_id, file_id => $file_id)

Displays a specific file on tape of pools, specific for Data Exchange.

**API Key Scope**: import_files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_import_file_by_pool(pool_id => $pool_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_import_file_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**ImportFileWithPath**](ImportFileWithPath.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_on_tape_file_by_pool**
> OnTapesFile show_on_tape_file_by_pool(pool_id => $pool_id, file_id => $file_id)

Displays a specific file on tape of pools, specific for Active and Offline.

**API Key Scope**: on_tapes_files / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::FilesApi;
my $api_instance = Nodeum::SDK::FilesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pool_id = "pool_id_example"; # string | Numeric ID, or name of pool.
my $file_id = 56; # int | Numeric ID of file.

eval { 
    my $result = $api_instance->show_on_tape_file_by_pool(pool_id => $pool_id, file_id => $file_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling FilesApi->show_on_tape_file_by_pool: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pool_id** | **string**| Numeric ID, or name of pool. | 
 **file_id** | **int**| Numeric ID of file. | 

### Return type

[**OnTapesFile**](OnTapesFile.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

