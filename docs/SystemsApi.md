# Nodeum::SDK::SystemsApi

## Load the API package
```perl
use Nodeum::SDK::Object::SystemsApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**download_reset_vars**](SystemsApi.md#download_reset_vars) | **POST** /systems/reset/generate_vars | Creates a YAML file with selected tables and downloads it
[**result_download_traces**](SystemsApi.md#result_download_traces) | **GET** /systems/download_traces | Check result of a download traces job.
[**trigger_download_traces**](SystemsApi.md#trigger_download_traces) | **PUT** /systems/download_traces | Trigger a download traces request.


# **download_reset_vars**
> string download_reset_vars(reset_form => $reset_form)

Creates a YAML file with selected tables and downloads it

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::SystemsApi;
my $api_instance = Nodeum::SDK::SystemsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $reset_form = Nodeum::SDK::Object::Reset->new(); # Reset | 

eval { 
    my $result = $api_instance->download_reset_vars(reset_form => $reset_form);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SystemsApi->download_reset_vars: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **reset_form** | [**Reset**](Reset.md)|  | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/x-yaml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **result_download_traces**
> string result_download_traces(job_id => $job_id)

Check result of a download traces job.

**API Key Scope**: systems / download_traces

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::SystemsApi;
my $api_instance = Nodeum::SDK::SystemsApi->new(

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
    my $result = $api_instance->result_download_traces(job_id => $job_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SystemsApi->result_download_traces: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **job_id** | **string**| ID of active job | 

### Return type

**string**

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/tar+gzip, queued, working, failed, 

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **trigger_download_traces**
> ActiveJobStatus trigger_download_traces(type => $type)

Trigger a download traces request.

**API Key Scope**: systems / download_traces

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::SystemsApi;
my $api_instance = Nodeum::SDK::SystemsApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $type = "type_example"; # string | Type of traces to download

eval { 
    my $result = $api_instance->trigger_download_traces(type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling SystemsApi->trigger_download_traces: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **string**| Type of traces to download | 

### Return type

[**ActiveJobStatus**](ActiveJobStatus.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, queued, working, failed

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

