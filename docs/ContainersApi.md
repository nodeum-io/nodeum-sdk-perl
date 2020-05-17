# Nodeum::SDK::ContainersApi

## Load the API package
```perl
use Nodeum::SDK::Object::ContainersApi;
```

All URIs are relative to *http://localhost/api/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_container**](ContainersApi.md#create_container) | **POST** /containers | Creates a new container.
[**create_container_privilege**](ContainersApi.md#create_container_privilege) | **POST** /containers/{container_id}/container_privileges | Creates a new privilege on the container.
[**destroy_container**](ContainersApi.md#destroy_container) | **DELETE** /containers/{container_id} | Destroys a specific container.
[**destroy_container_privilege**](ContainersApi.md#destroy_container_privilege) | **DELETE** /containers/{container_id}/container_privileges/{container_privilege_id} | Destroys a specific privilege.
[**index_container_privileges**](ContainersApi.md#index_container_privileges) | **GET** /containers/{container_id}/container_privileges | Lists all privilege on the container.
[**index_containers**](ContainersApi.md#index_containers) | **GET** /containers | Lists all containers.
[**show_container**](ContainersApi.md#show_container) | **GET** /containers/{container_id} | Displays a specific container.
[**show_container_privilege**](ContainersApi.md#show_container_privilege) | **GET** /containers/{container_id}/container_privileges/{container_privilege_id} | Displays a specific privilege.
[**update_container**](ContainersApi.md#update_container) | **PUT** /containers/{container_id} | Updates a specific container.
[**update_container_privilege**](ContainersApi.md#update_container_privilege) | **PUT** /containers/{container_id}/container_privileges/{container_privilege_id} | Updates a specific privilege.


# **create_container**
> Container create_container(container_body => $container_body)

Creates a new container.

It **does not** yet create the file structure and configure the samba connection. Use API v1 instead.  **API Key Scope**: containers / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_body = Nodeum::SDK::Object::Container->new(); # Container | 

eval { 
    my $result = $api_instance->create_container(container_body => $container_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->create_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_body** | [**Container**](Container.md)|  | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **create_container_privilege**
> ContainerPrivilege create_container_privilege(container_id => $container_id, container_privilege_body => $container_privilege_body)

Creates a new privilege on the container.

**API Key Scope**: container_privileges / create

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $container_privilege_body = Nodeum::SDK::Object::ContainerPrivilege->new(); # ContainerPrivilege | 

eval { 
    my $result = $api_instance->create_container_privilege(container_id => $container_id, container_privilege_body => $container_privilege_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->create_container_privilege: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **container_privilege_body** | [**ContainerPrivilege**](ContainerPrivilege.md)|  | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_container**
> destroy_container(container_id => $container_id)

Destroys a specific container.

**API Key Scope**: containers / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.

eval { 
    $api_instance->destroy_container(container_id => $container_id);
};
if ($@) {
    warn "Exception when calling ContainersApi->destroy_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **destroy_container_privilege**
> destroy_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id)

Destroys a specific privilege.

**API Key Scope**: container_privileges / destroy

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $container_privilege_id = 56; # int | Numeric ID of container privilege.

eval { 
    $api_instance->destroy_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id);
};
if ($@) {
    warn "Exception when calling ContainersApi->destroy_container_privilege: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **container_privilege_id** | **int**| Numeric ID of container privilege. | 

### Return type

void (empty response body)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_container_privileges**
> ContainerPrivilegeCollection index_container_privileges(container_id => $container_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, privilege => $privilege, type => $type)

Lists all privilege on the container.

**API Key Scope**: container_privileges / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

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
my $sort_by = [("null")]; # ARRAY[string] | Sort results by attribute.  Can sort on multiple attributes, separated by `|`. Order direction can be suffixing the attribute by either `:asc` (default) or `:desc`.
my $id = "id_example"; # string | Filter on id
my $name = "name_example"; # string | Filter on name
my $privilege = "privilege_example"; # string | Filter on privilege
my $type = "type_example"; # string | Filter on type

eval { 
    my $result = $api_instance->index_container_privileges(container_id => $container_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, privilege => $privilege, type => $type);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->index_container_privileges: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **limit** | **int**| The number of items to display for pagination. | [optional] 
 **offset** | **int**| The number of items to skip for pagination. | [optional] 
 **sort_by** | [**ARRAY[string]**](string.md)| Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. | [optional] 
 **id** | **string**| Filter on id | [optional] 
 **name** | **string**| Filter on name | [optional] 
 **privilege** | **string**| Filter on privilege | [optional] 
 **type** | **string**| Filter on type | [optional] 

### Return type

[**ContainerPrivilegeCollection**](ContainerPrivilegeCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **index_containers**
> ContainerCollection index_containers(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, quota_total_size => $quota_total_size, quota_on_cache => $quota_on_cache, stat_total_files => $stat_total_files, stat_total_size => $stat_total_size, stat_size_on_cache => $stat_size_on_cache, guest_right => $guest_right, last_update => $last_update)

Lists all containers.

**API Key Scope**: containers / index

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

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
my $quota_total_size = "quota_total_size_example"; # string | Filter on quota total size
my $quota_on_cache = "quota_on_cache_example"; # string | Filter on quota on cache
my $stat_total_files = "stat_total_files_example"; # string | Filter on stat total files
my $stat_total_size = "stat_total_size_example"; # string | Filter on stat total size
my $stat_size_on_cache = "stat_size_on_cache_example"; # string | Filter on stat size on cache
my $guest_right = "guest_right_example"; # string | Filter on guest right
my $last_update = "last_update_example"; # string | Filter on last update

eval { 
    my $result = $api_instance->index_containers(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, name => $name, comment => $comment, quota_total_size => $quota_total_size, quota_on_cache => $quota_on_cache, stat_total_files => $stat_total_files, stat_total_size => $stat_total_size, stat_size_on_cache => $stat_size_on_cache, guest_right => $guest_right, last_update => $last_update);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->index_containers: $@\n";
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
 **quota_total_size** | **string**| Filter on quota total size | [optional] 
 **quota_on_cache** | **string**| Filter on quota on cache | [optional] 
 **stat_total_files** | **string**| Filter on stat total files | [optional] 
 **stat_total_size** | **string**| Filter on stat total size | [optional] 
 **stat_size_on_cache** | **string**| Filter on stat size on cache | [optional] 
 **guest_right** | **string**| Filter on guest right | [optional] 
 **last_update** | **string**| Filter on last update | [optional] 

### Return type

[**ContainerCollection**](ContainerCollection.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_container**
> Container show_container(container_id => $container_id)

Displays a specific container.

**API Key Scope**: containers / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.

eval { 
    my $result = $api_instance->show_container(container_id => $container_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->show_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **show_container_privilege**
> ContainerPrivilege show_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id)

Displays a specific privilege.

**API Key Scope**: container_privileges / show

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $container_privilege_id = 56; # int | Numeric ID of container privilege.

eval { 
    my $result = $api_instance->show_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->show_container_privilege: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **container_privilege_id** | **int**| Numeric ID of container privilege. | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_container**
> Container update_container(container_id => $container_id, container_body => $container_body)

Updates a specific container.

It **does not** yet create the file structure and configure the samba connection. Use API v1 instead.  **API Key Scope**: containers / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $container_body = Nodeum::SDK::Object::Container->new(); # Container | 

eval { 
    my $result = $api_instance->update_container(container_id => $container_id, container_body => $container_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->update_container: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **container_body** | [**Container**](Container.md)|  | 

### Return type

[**Container**](Container.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **update_container_privilege**
> ContainerPrivilege update_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id, container_privilege_body => $container_privilege_body)

Updates a specific privilege.

**API Key Scope**: container_privileges / update

### Example 
```perl
use Data::Dumper;
use Nodeum::SDK::ContainersApi;
my $api_instance = Nodeum::SDK::ContainersApi->new(

    # Configure HTTP basic authorization: BasicAuth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
    # Configure API key authorization: BearerAuth
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $container_id = "container_id_example"; # string | Numeric ID or name of container.
my $container_privilege_id = 56; # int | Numeric ID of container privilege.
my $container_privilege_body = Nodeum::SDK::Object::ContainerPrivilege->new(); # ContainerPrivilege | 

eval { 
    my $result = $api_instance->update_container_privilege(container_id => $container_id, container_privilege_id => $container_privilege_id, container_privilege_body => $container_privilege_body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ContainersApi->update_container_privilege: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **container_id** | **string**| Numeric ID or name of container. | 
 **container_privilege_id** | **int**| Numeric ID of container privilege. | 
 **container_privilege_body** | [**ContainerPrivilege**](ContainerPrivilege.md)|  | 

### Return type

[**ContainerPrivilege**](ContainerPrivilege.md)

### Authorization

[BasicAuth](../README.md#BasicAuth), [BearerAuth](../README.md#BearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

