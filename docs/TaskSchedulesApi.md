# Nodeum::SDK::TaskSchedulesApi

## Load the API package
```perl
use Nodeum::SDK::Object::TaskSchedulesApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_task_schedule**](TaskSchedulesApi.md#create_task_schedule) | **POST** /tasks/{task_id}/task_schedule | Creates a new task schedule. Only one should be created.
[**destroy_task_schedule**](TaskSchedulesApi.md#destroy_task_schedule) | **DELETE** /tasks/{task_id}/task_schedule | Destroys the task schedule.
[**index_task_schedules**](TaskSchedulesApi.md#index_task_schedules) | **GET** /task_schedules | Lists all task schedules.
[**show_task_schedule**](TaskSchedulesApi.md#show_task_schedule) | **GET** /tasks/{task_id}/task_schedule | Displays the task schedule.
[**update_task_schedule**](TaskSchedulesApi.md#update_task_schedule) | **PUT** /tasks/{task_id}/task_schedule | Updates the existing task schedule.


# **create_task_schedule**
> TaskSchedule create_task_schedule(task_id => $task_id, task_schedule_body => $task_schedule_body)

Creates a new task schedule. Only one should be created.

**API Key Scope**: task_schedules / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSchedulesApi;
my $api_instance = Nodeum::SDK::TaskSchedulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_schedule_body = Nodeum::SDK::Object::TaskSchedule->new(); # TaskSchedule | 

eval { 
    my $result = $api_instance->create_task_schedule(task_id => $task_id, task_schedule_body => $task_schedule_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSchedulesApi->create_task_schedule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_schedule_body** | [**TaskSchedule**](TaskSchedule.md)|  | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_task_schedule**
> destroy_task_schedule(task_id => $task_id)

Destroys the task schedule.

**API Key Scope**: task_schedules / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSchedulesApi;
my $api_instance = Nodeum::SDK::TaskSchedulesApi->new(

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
    $api_instance->destroy_task_schedule(task_id => $task_id);
};
if ($@) {
    warn "Exception when calling TaskSchedulesApi->destroy_task_schedule: $@\n";
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

# **index_task_schedules**
> TaskScheduleCollection index_task_schedules(with_next => $with_next, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, rrule => $rrule, done => $done, task_id => $task_id)

Lists all task schedules.

**API Key Scope**: task_schedules / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSchedulesApi;
my $api_instance = Nodeum::SDK::TaskSchedulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $with_next = true; # boolean | Display the next scheduled date, and information about missing executions.
my $limit = 56; # int | The number of items to display for pagination.
my $offset = 56; # int | The number of items to skip for pagination.
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $rrule = "rrule_example"; # string | Filter on RRule of schedule
my $done = "done_example"; # string | Filter on done schedule
my $task_id = "task_id_example"; # string | Filter on task id

eval { 
    my $result = $api_instance->index_task_schedules(with_next => $with_next, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, rrule => $rrule, done => $done, task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSchedulesApi->index_task_schedules: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **with_next** | **boolean**| Display the next scheduled date, and information about missing executions. | [optional] [default to true]
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **rrule** | **string**| Filter on RRule of schedule | [optional] 
 **done** | **string**| Filter on done schedule | [optional] 
 **task_id** | **string**| Filter on task id | [optional] 

### Return type

[**TaskScheduleCollection**](TaskScheduleCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_task_schedule**
> TaskSchedule show_task_schedule(task_id => $task_id)

Displays the task schedule.

**API Key Scope**: task_schedules / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSchedulesApi;
my $api_instance = Nodeum::SDK::TaskSchedulesApi->new(

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
    my $result = $api_instance->show_task_schedule(task_id => $task_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSchedulesApi->show_task_schedule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_task_schedule**
> TaskSchedule update_task_schedule(task_id => $task_id, task_schedule_body => $task_schedule_body)

Updates the existing task schedule.

**API Key Scope**: task_schedules / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::TaskSchedulesApi;
my $api_instance = Nodeum::SDK::TaskSchedulesApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $task_id = "task_id_example"; # string | Numeric ID or name of task. Task names are not unique, it's recommanded to use numeric ID.
my $task_schedule_body = Nodeum::SDK::Object::TaskSchedule->new(); # TaskSchedule | 

eval { 
    my $result = $api_instance->update_task_schedule(task_id => $task_id, task_schedule_body => $task_schedule_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling TaskSchedulesApi->update_task_schedule: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **task_id** | **string**| Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. | 
 **task_schedule_body** | [**TaskSchedule**](TaskSchedule.md)|  | 

### Return type

[**TaskSchedule**](TaskSchedule.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

