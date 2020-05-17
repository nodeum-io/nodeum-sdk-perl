# Nodeum::SDK::TasksApi

## Load the API package
```perl
use Nodeum::SDK::Object::TasksApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task**](TasksApi.md#create_task) | **POST** /tasks | Creates a new task.
[**destroy_task**](TasksApi.md#destroy_task) | **DELETE** /tasks/{task_id} | Destroys a specific task.
[**index_tasks**](TasksApi.md#index_tasks) | **GET** /tasks | Lists all tasks.
[**pause_task**](TasksApi.md#pause_task) | **PUT** /tasks/{task_id}/action/pause | Pause a task.
[**pause_task_result**](TasksApi.md#pause_task_result) | **GET** /tasks/{task_id}/action/pause | Check result of a task pause request.
[**resume_task**](TasksApi.md#resume_task) | **PUT** /tasks/{task_id}/action/resume | Resume a task.
[**resume_task_result**](TasksApi.md#resume_task_result) | **GET** /tasks/{task_id}/action/resume | Check result of a task resume request.
[**run_task**](TasksApi.md#run_task) | **PUT** /tasks/{task_id}/action/run | Run a task.
[**run_task_result**](TasksApi.md#run_task_result) | **GET** /tasks/{task_id}/action/run | Check result of a task run request.
[**show_task**](TasksApi.md#show_task) | **GET** /tasks/{task_id} | Displays a specific task.
[**stop_task**](TasksApi.md#stop_task) | **PUT** /tasks/{task_id}/action/stop | Stop a task.
[**stop_task_result**](TasksApi.md#stop_task_result) | **GET** /tasks/{task_id}/action/stop | Check result of a task stop request.
[**update_task**](TasksApi.md#update_task) | **PUT** /tasks/{task_id} | Updates a specific task.


# **create_task**
> Task create_task(task_body => $task_body)

Creates a new task.

**API Key Scope**: tasks / create 

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_body = Nodeum::SDK::Object::Task->new(); # Task | 

eval { 
    my $result = $api_instance->create_task(task_body => $task_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->create_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_body** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task**
> destroy_task(task_id => $task_id)

Destroys a specific task.

**API Key Scope**: tasks / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    $api_instance->destroy_task(task_id => $task_id);
};
if ($@) {
    warn "Exception when calling TasksApi->destroy_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_tasks**
> TaskCollection index_tasks(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, priority => $priority, conflict_resolution => $conflict_resolution, action => $action, activate => $activate, creation_date => $creation_date, creation_username => $creation_username, modification_date => $modification_date, modification_username => $modification_username, job_started => $job_started, job_finished => $job_finished, status => $status, processed_size => $processed_size, to_process_size => $to_process_size, source_pool_id => $source_pool_id, source_pool_name => $source_pool_name, source_tape_id => $source_tape_id, source_tape_barcode => $source_tape_barcode, destination_pool_id => $destination_pool_id, destination_pool_name => $destination_pool_name, destination_tape_id => $destination_tape_id, destination_tape_barcode => $destination_tape_barcode)

Lists all tasks.

**API Key Scope**: tasks / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

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
my $workflow_type = "workflow_type_example"; # string | Filter on task workflow type
my $workflow_action = "workflow_action_example"; # string | Filter on task workflow action
my $source_type = "source_type_example"; # string | Filter on task source type
my $destination_type = "destination_type_example"; # string | Filter on task destination type
my $priority = "priority_example"; # string | Filter on priority
my $conflict_resolution = "conflict_resolution_example"; # string | Filter on conflict resolution
my $action = "action_example"; # string | Filter on action
my $activate = "activate_example"; # string | Filter on activate
my $creation_date = "creation_date_example"; # string | Filter on creation date
my $creation_username = "creation_username_example"; # string | Filter on creation username
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $modification_username = "modification_username_example"; # string | Filter on modification username
my $job_started = "job_started_example"; # string | Filter on job started
my $job_finished = "job_finished_example"; # string | Filter on job finished
my $status = "status_example"; # string | Filter on status
my $processed_size = "processed_size_example"; # string | Filter on processed size
my $to_process_size = "to_process_size_example"; # string | Filter on to process size
my $source_pool_id = "source_pool_id_example"; # string | Filter on task source pool id
my $source_pool_name = "source_pool_name_example"; # string | Filter on task source pool name
my $source_tape_id = "source_tape_id_example"; # string | Filter on task source tape id
my $source_tape_barcode = "source_tape_barcode_example"; # string | Filter on task source tape barcode
my $destination_pool_id = "destination_pool_id_example"; # string | Filter on task destination pool id
my $destination_pool_name = "destination_pool_name_example"; # string | Filter on task destination pool name
my $destination_tape_id = "destination_tape_id_example"; # string | Filter on task destination tape id
my $destination_tape_barcode = "destination_tape_barcode_example"; # string | Filter on task destination tape barcode

eval { 
    my $result = $api_instance->index_tasks(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, priority => $priority, conflict_resolution => $conflict_resolution, action => $action, activate => $activate, creation_date => $creation_date, creation_username => $creation_username, modification_date => $modification_date, modification_username => $modification_username, job_started => $job_started, job_finished => $job_finished, status => $status, processed_size => $processed_size, to_process_size => $to_process_size, source_pool_id => $source_pool_id, source_pool_name => $source_pool_name, source_tape_id => $source_tape_id, source_tape_barcode => $source_tape_barcode, destination_pool_id => $destination_pool_id, destination_pool_name => $destination_pool_name, destination_tape_id => $destination_tape_id, destination_tape_barcode => $destination_tape_barcode);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->index_tasks: $@\n";
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
 **workflow_type** | **string**| Filter on task workflow type | [optional] 
 **workflow_action** | **string**| Filter on task workflow action | [optional] 
 **source_type** | **string**| Filter on task source type | [optional] 
 **destination_type** | **string**| Filter on task destination type | [optional] 
 **priority** | **string**| Filter on priority | [optional] 
 **conflict_resolution** | **string**| Filter on conflict resolution | [optional] 
 **action** | **string**| Filter on action | [optional] 
 **activate** | **string**| Filter on activate | [optional] 
 **creation_date** | **string**| Filter on creation date | [optional] 
 **creation_username** | **string**| Filter on creation username | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **modification_username** | **string**| Filter on modification username | [optional] 
 **job_started** | **string**| Filter on job started | [optional] 
 **job_finished** | **string**| Filter on job finished | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **processed_size** | **string**| Filter on processed size | [optional] 
 **to_process_size** | **string**| Filter on to process size | [optional] 
 **source_pool_id** | **string**| Filter on task source pool id | [optional] 
 **source_pool_name** | **string**| Filter on task source pool name | [optional] 
 **source_tape_id** | **string**| Filter on task source tape id | [optional] 
 **source_tape_barcode** | **string**| Filter on task source tape barcode | [optional] 
 **destination_pool_id** | **string**| Filter on task destination pool id | [optional] 
 **destination_pool_name** | **string**| Filter on task destination pool name | [optional] 
 **destination_tape_id** | **string**| Filter on task destination tape id | [optional] 
 **destination_tape_barcode** | **string**| Filter on task destination tape barcode | [optional] 

### Return type

[**TaskCollection**](TaskCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pause_task**
> ActiveJobStatus pause_task(task_id => $task_id)

Pause a task.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    my $result = $api_instance->pause_task(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->pause_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **pause_task_result**
> ActiveJobStatus pause_task_result(task_id => $task_id, job_id => $job_id)

Check result of a task pause request.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->pause_task_result(task_id => $task_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->pause_task_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resume_task**
> ActiveJobStatus resume_task(task_id => $task_id)

Resume a task.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    my $result = $api_instance->resume_task(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->resume_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **resume_task_result**
> ActiveJobStatus resume_task_result(task_id => $task_id, job_id => $job_id)

Check result of a task resume request.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->resume_task_result(task_id => $task_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->resume_task_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **run_task**
> ActiveJobStatus run_task(task_id => $task_id)

Run a task.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    my $result = $api_instance->run_task(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->run_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **run_task_result**
> ActiveJobStatus run_task_result(task_id => $task_id, job_id => $job_id)

Check result of a task run request.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->run_task_result(task_id => $task_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->run_task_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task**
> Task show_task(task_id => $task_id)

Displays a specific task.

**API Key Scope**: tasks / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    my $result = $api_instance->show_task(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->show_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_task**
> ActiveJobStatus stop_task(task_id => $task_id)

Stop a task.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.

eval { 
    my $result = $api_instance->stop_task(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->stop_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **stop_task_result**
> ActiveJobStatus stop_task_result(task_id => $task_id, job_id => $job_id)

Check result of a task stop request.

**API Key Scope**: tasks / action

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $job_id = "job_id_example"; # string | ID of active job

eval { 
    my $result = $api_instance->stop_task_result(task_id => $task_id, job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->stop_task_result: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **job_id** | **string**| ID of active job | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task**
> Task update_task(task_id => $task_id, task_body => $task_body)

Updates a specific task.

**API Key Scope**: tasks / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TasksApi;
my $api_instance = Nodeum::SDK::TasksApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_body = Nodeum::SDK::Object::Task->new(); # Task | 

eval { 
    my $result = $api_instance->update_task(task_id => $task_id, task_body => $task_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TasksApi->update_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_body** | [**Task**](Task.md)|  | 

### Return type

[**Task**](Task.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

