# Nodeum::SDK::UsersApi

## Load the API package
```perl
use Nodeum::SDK::Object::UsersApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_api_key**](UsersApi.md#create_api_key) | **POST** /users/me/api_keys | Creates a new API Key for current user.
[**create_configuration**](UsersApi.md#create_configuration) | **POST** /users/me/configurations | Creates a new configuration value for current user.
[**destroy_api_key**](UsersApi.md#destroy_api_key) | **DELETE** /users/me/api_keys/{api_key_id} | Destroys a specific API Key.
[**destroy_configuration**](UsersApi.md#destroy_configuration) | **DELETE** /users/me/configurations/{configuration_id} | Destroys a specific configuration value.
[**index_api_keys**](UsersApi.md#index_api_keys) | **GET** /users/me/api_keys | Lists all API keys of current user.
[**index_configurations**](UsersApi.md#index_configurations) | **GET** /users/me/configurations | Lists all configurations of current user.
[**index_system_groups**](UsersApi.md#index_system_groups) | **GET** /groups/-/systems | List all system groups.
[**index_system_users**](UsersApi.md#index_system_users) | **GET** /users/-/systems | List all system users.
[**show_api_key**](UsersApi.md#show_api_key) | **GET** /users/me/api_keys/{api_key_id} | Displays a specific API Key with its scopes.
[**show_configuration**](UsersApi.md#show_configuration) | **GET** /users/me/configurations/{configuration_id} | Displays a specific configuration value.
[**update_api_key**](UsersApi.md#update_api_key) | **PUT** /users/me/api_keys/{api_key_id} | Updates a specific API Key.
[**update_configuration**](UsersApi.md#update_configuration) | **PUT** /users/me/configurations/{configuration_id} | Updates a specific configuration value.


# **create_api_key**
> ApiKeyFull create_api_key(api_key_body => $api_key_body)

Creates a new API Key for current user.

**API Key Scope**: api_keys / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $api_key_body = Nodeum::SDK::Object::ApiKeyFull->new(); # ApiKeyFull | 

eval { 
    my $result = $api_instance->create_api_key(api_key_body => $api_key_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->create_api_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_body** | [**ApiKeyFull**](ApiKeyFull.md)|  | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_configuration**
> UserConfiguration create_configuration(configuration_body => $configuration_body)

Creates a new configuration value for current user.

**API Key Scope**: configurations / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $configuration_body = Nodeum::SDK::Object::UserConfiguration->new(); # UserConfiguration | 

eval { 
    my $result = $api_instance->create_configuration(configuration_body => $configuration_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->create_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_body** | [**UserConfiguration**](UserConfiguration.md)|  | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_api_key**
> destroy_api_key(api_key_id => $api_key_id)

Destroys a specific API Key.

**API Key Scope**: api_keys / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $api_key_id = 56; # int | Numeric ID of API Key.

eval { 
    $api_instance->destroy_api_key(api_key_id => $api_key_id);
};
if ($@) {
    warn "Exception when calling UsersApi->destroy_api_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **int**| Numeric ID of API Key. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_configuration**
> destroy_configuration(configuration_id => $configuration_id)

Destroys a specific configuration value.

**API Key Scope**: configurations / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $configuration_id = "configuration_id_example"; # string | Numeric ID, or key of configuration.

eval { 
    $api_instance->destroy_configuration(configuration_id => $configuration_id);
};
if ($@) {
    warn "Exception when calling UsersApi->destroy_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **string**| Numeric ID, or key of configuration. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_api_keys**
> ApiKeyCollection index_api_keys(limit => $limit, offset => $offset)

Lists all API keys of current user.

**API Key Scope**: api_keys / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

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
    my $result = $api_instance->index_api_keys(limit => $limit, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->index_api_keys: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 

### Return type

[**ApiKeyCollection**](ApiKeyCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_configurations**
> UserConfigurationCollection index_configurations(limit => $limit, offset => $offset)

Lists all configurations of current user.

**API Key Scope**: configurations / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

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
    my $result = $api_instance->index_configurations(limit => $limit, offset => $offset);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->index_configurations: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 

### Return type

[**UserConfigurationCollection**](UserConfigurationCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_system_groups**
> SystemGroupCollection index_system_groups()

List all system groups.

**API Key Scope**: groups / systems

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval { 
    my $result = $api_instance->index_system_groups();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->index_system_groups: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemGroupCollection**](SystemGroupCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_system_users**
> SystemUserCollection index_system_users()

List all system users.

**API Key Scope**: users / systems

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval { 
    my $result = $api_instance->index_system_users();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->index_system_users: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SystemUserCollection**](SystemUserCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_api_key**
> ApiKeyFull show_api_key(api_key_id => $api_key_id)

Displays a specific API Key with its scopes.

**API Key Scope**: api_keys / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $api_key_id = 56; # int | Numeric ID of API Key.

eval { 
    my $result = $api_instance->show_api_key(api_key_id => $api_key_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->show_api_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **int**| Numeric ID of API Key. | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_configuration**
> UserConfiguration show_configuration(configuration_id => $configuration_id)

Displays a specific configuration value.

**API Key Scope**: configurations / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $configuration_id = "configuration_id_example"; # string | Numeric ID, or key of configuration.

eval { 
    my $result = $api_instance->show_configuration(configuration_id => $configuration_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->show_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **string**| Numeric ID, or key of configuration. | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_api_key**
> ApiKeyFull update_api_key(api_key_id => $api_key_id, api_key_body => $api_key_body)

Updates a specific API Key.

**API Key Scope**: api_keys / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $api_key_id = 56; # int | Numeric ID of API Key.
my $api_key_body = Nodeum::SDK::Object::ApiKeyFull->new(); # ApiKeyFull | 

eval { 
    my $result = $api_instance->update_api_key(api_key_id => $api_key_id, api_key_body => $api_key_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->update_api_key: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **api_key_id** | **int**| Numeric ID of API Key. | 
 **api_key_body** | [**ApiKeyFull**](ApiKeyFull.md)|  | 

### Return type

[**ApiKeyFull**](ApiKeyFull.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_configuration**
> UserConfiguration update_configuration(configuration_id => $configuration_id, configuration_body => $configuration_body)

Updates a specific configuration value.

**API Key Scope**: configurations / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::UsersApi;
my $api_instance = Nodeum::SDK::UsersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $configuration_id = "configuration_id_example"; # string | Numeric ID, or key of configuration.
my $configuration_body = Nodeum::SDK::Object::UserConfiguration->new(); # UserConfiguration | 

eval { 
    my $result = $api_instance->update_configuration(configuration_id => $configuration_id, configuration_body => $configuration_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling UsersApi->update_configuration: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **configuration_id** | **string**| Numeric ID, or key of configuration. | 
 **configuration_body** | [**UserConfiguration**](UserConfiguration.md)|  | 

### Return type

[**UserConfiguration**](UserConfiguration.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

