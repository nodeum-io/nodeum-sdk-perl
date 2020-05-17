# Nodeum::SDK::TaskExecutionsApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskExecutionsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**index_task_executions**](TaskExecutionsApi.md#index_task_executions) | **GET** /task_executions | Lists all task executions.
[**index_task_executions_by_task**](TaskExecutionsApi.md#index_task_executions_by_task) | **GET** /tasks/{task_id}/task_executions | Lists all task executions.
[**show_task_execution**](TaskExecutionsApi.md#show_task_execution) | **GET** /task_executions/{task_execution_id} | Displays a specific task execution.
[**show_task_execution_by_task**](TaskExecutionsApi.md#show_task_execution_by_task) | **GET** /tasks/{task_id}/task_executions/{task_execution_id} | Displays a specific task execution.


# **index_task_executions**
> TaskExecutionCollection index_task_executions(limit => $limit, offset => $offset, sort_by => $sort_by, complete_list => $complete_list, id => $id, task_id => $task_id, name => $name, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, status => $status, log_time => $log_time, job_started => $job_started, job_finished => $job_finished, creation_date => $creation_date, modification_date => $modification_date, to_process_size => $to_process_size, processed_size => $processed_size, to_process_files => $to_process_files, processed_files => $processed_files, finalized_files => $finalized_files, estimation_time => $estimation_time, bandwidth => $bandwidth)

Lists all task executions.

**API Key Scope**: task_executions / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskExecutionsApi;
my $api_instance = Nodeum::SDK::TaskExecutionsApi->new(

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
my $complete_list = true; # boolean | If `false`, only includes the last correct execution of a task.
my $id = "id_example"; # string | Filter on id
my $task_id = "task_id_example"; # string | Filter on task id
my $name = "name_example"; # string | Filter on name
my $workflow_type = "workflow_type_example"; # string | Filter on task workflow type
my $workflow_action = "workflow_action_example"; # string | Filter on task workflow action
my $source_type = "source_type_example"; # string | Filter on task source type
my $destination_type = "destination_type_example"; # string | Filter on task destination type
my $status = "status_example"; # string | Filter on status
my $log_time = "log_time_example"; # string | Filter on log time
my $job_started = "job_started_example"; # string | Filter on job started
my $job_finished = "job_finished_example"; # string | Filter on job finished
my $creation_date = "creation_date_example"; # string | Filter on creation date
my $modification_date = "modification_date_example"; # string | Filter on modification date
my $to_process_size = "to_process_size_example"; # string | Filter on to process size
my $processed_size = "processed_size_example"; # string | Filter on processed size
my $to_process_files = "to_process_files_example"; # string | Filter on to process files
my $processed_files = "processed_files_example"; # string | Filter on processed files
my $finalized_files = "finalized_files_example"; # string | Filter on finalized files
my $estimation_time = "estimation_time_example"; # string | Filter on estimation time
my $bandwidth = "bandwidth_example"; # string | Filter on bandwidth

eval { 
    my $result = $api_instance->index_task_executions(limit => $limit, offset => $offset, sort_by => $sort_by, complete_list => $complete_list, id => $id, task_id => $task_id, name => $name, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, status => $status, log_time => $log_time, job_started => $job_started, job_finished => $job_finished, creation_date => $creation_date, modification_date => $modification_date, to_process_size => $to_process_size, processed_size => $processed_size, to_process_files => $to_process_files, processed_files => $processed_files, finalized_files => $finalized_files, estimation_time => $estimation_time, bandwidth => $bandwidth);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskExecutionsApi->index_task_executions: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **complete_list** | **boolean**| If &#x60;false&#x60;, only includes the last correct execution of a task. | [optional] [default to true]
 **id** | **string**| Filter on id | [optional] 
 **task_id** | **string**| Filter on task id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **workflow_type** | **string**| Filter on task workflow type | [optional] 
 **workflow_action** | **string**| Filter on task workflow action | [optional] 
 **source_type** | **string**| Filter on task source type | [optional] 
 **destination_type** | **string**| Filter on task destination type | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **log_time** | **string**| Filter on log time | [optional] 
 **job_started** | **string**| Filter on job started | [optional] 
 **job_finished** | **string**| Filter on job finished | [optional] 
 **creation_date** | **string**| Filter on creation date | [optional] 
 **modification_date** | **string**| Filter on modification date | [optional] 
 **to_process_size** | **string**| Filter on to process size | [optional] 
 **processed_size** | **string**| Filter on processed size | [optional] 
 **to_process_files** | **string**| Filter on to process files | [optional] 
 **processed_files** | **string**| Filter on processed files | [optional] 
 **finalized_files** | **string**| Filter on finalized files | [optional] 
 **estimation_time** | **string**| Filter on estimation time | [optional] 
 **bandwidth** | **string**| Filter on bandwidth | [optional] 

### Return type

[**TaskExecutionCollection**](TaskExecutionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_task_executions_by_task**
> TaskExecutionCollection index_task_executions_by_task(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, status => $status, log_time => $log_time, job_started => $job_started, job_finished => $job_finished, to_process_size => $to_process_size, processed_size => $processed_size, to_process_files => $to_process_files, processed_files => $processed_files, finalized_files => $finalized_files, estimation_time => $estimation_time, bandwidth => $bandwidth)

Lists all task executions.

**API Key Scope**: task_executions / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskExecutionsApi;
my $api_instance = Nodeum::SDK::TaskExecutionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Filter on task id
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $workflow_type = "workflow_type_example"; # string | Filter on task workflow type
my $workflow_action = "workflow_action_example"; # string | Filter on task workflow action
my $source_type = "source_type_example"; # string | Filter on task source type
my $destination_type = "destination_type_example"; # string | Filter on task destination type
my $status = "status_example"; # string | Filter on status
my $log_time = "log_time_example"; # string | Filter on log time
my $job_started = "job_started_example"; # string | Filter on job started
my $job_finished = "job_finished_example"; # string | Filter on job finished
my $to_process_size = "to_process_size_example"; # string | Filter on to process size
my $processed_size = "processed_size_example"; # string | Filter on processed size
my $to_process_files = "to_process_files_example"; # string | Filter on to process files
my $processed_files = "processed_files_example"; # string | Filter on processed files
my $finalized_files = "finalized_files_example"; # string | Filter on finalized files
my $estimation_time = "estimation_time_example"; # string | Filter on estimation time
my $bandwidth = "bandwidth_example"; # string | Filter on bandwidth

eval { 
    my $result = $api_instance->index_task_executions_by_task(task_id => $task_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, workflow_type => $workflow_type, workflow_action => $workflow_action, source_type => $source_type, destination_type => $destination_type, status => $status, log_time => $log_time, job_started => $job_started, job_finished => $job_finished, to_process_size => $to_process_size, processed_size => $processed_size, to_process_files => $to_process_files, processed_files => $processed_files, finalized_files => $finalized_files, estimation_time => $estimation_time, bandwidth => $bandwidth);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskExecutionsApi->index_task_executions_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Filter on task id | [optional] 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **workflow_type** | **string**| Filter on task workflow type | [optional] 
 **workflow_action** | **string**| Filter on task workflow action | [optional] 
 **source_type** | **string**| Filter on task source type | [optional] 
 **destination_type** | **string**| Filter on task destination type | [optional] 
 **status** | **string**| Filter on status | [optional] 
 **log_time** | **string**| Filter on log time | [optional] 
 **job_started** | **string**| Filter on job started | [optional] 
 **job_finished** | **string**| Filter on job finished | [optional] 
 **to_process_size** | **string**| Filter on to process size | [optional] 
 **processed_size** | **string**| Filter on processed size | [optional] 
 **to_process_files** | **string**| Filter on to process files | [optional] 
 **processed_files** | **string**| Filter on processed files | [optional] 
 **finalized_files** | **string**| Filter on finalized files | [optional] 
 **estimation_time** | **string**| Filter on estimation time | [optional] 
 **bandwidth** | **string**| Filter on bandwidth | [optional] 

### Return type

[**TaskExecutionCollection**](TaskExecutionCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_execution**
> TaskExecution show_task_execution(task_execution_id => $task_execution_id)

Displays a specific task execution.

**API Key Scope**: task_executions / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskExecutionsApi;
my $api_instance = Nodeum::SDK::TaskExecutionsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_execution_id = "task_execution_id_example"; # string | Numeric ID of task execution.

eval { 
    my $result = $api_instance->show_task_execution(task_execution_id => $task_execution_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskExecutionsApi->show_task_execution: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_execution_id** | **string**| Numeric ID of task execution. | 

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_execution_by_task**
> TaskExecution show_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id)

Displays a specific task execution.

**API Key Scope**: task_executions / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskExecutionsApi;
my $api_instance = Nodeum::SDK::TaskExecutionsApi->new(

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

eval { 
    my $result = $api_instance->show_task_execution_by_task(task_id => $task_id, task_execution_id => $task_execution_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskExecutionsApi->show_task_execution_by_task: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_execution_id** | **string**| Numeric ID of task execution. | 

### Return type

[**TaskExecution**](TaskExecution.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

