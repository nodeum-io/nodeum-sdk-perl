=begin comment

Nodeum API

The Nodeum API makes it easy to tap into the digital data mesh that runs across your organisation. Make requests to our API endpoints and we’ll give you everything you need to interconnect your business workflows with your storage.  All production API requests are made to:  http://nodeumhostname/api/  The current production version of the API is v1.   **REST** The Nodeum API is a RESTful API. This means that the API is designed to allow you to get, create, update, & delete objects with the HTTP verbs GET, POST, PUT, PATCH, & DELETE.  **JSON** The Nodeum API speaks exclusively in JSON. This means that you should always set the Content-Type header to application/json to ensure that your requests are properly accepted and processed by the API.  **Authentication** All API calls require user-password authentication.   **Cross-Origin Resource Sharing** The Nodeum API supports CORS for communicating from Javascript for these endpoints. You will need to specify an Origin URI when creating your application to allow for CORS to be whitelisted for your domain.   **Pagination** Some endpoints such as File Listing return a potentially lengthy array of objects. In order to keep the response sizes manageable the API will take advantage of pagination. Pagination is a mechanism for returning a subset of the results for a request and allowing for subsequent requests to “page” through the rest of the results until the end is reached. Paginated endpoints follow a standard interface that accepts two query parameters, limit and offset, and return a payload that follows a standard form. These parameters names and their behavior are borrowed from SQL LIMIT and OFFSET keywords.  **Versioning** The Nodeum API is constantly being worked on to add features, make improvements, and fix bugs. This means that you should expect changes to be introduced and documented.   However, there are some changes or additions that are considered backwards-compatible and your applications should be flexible enough to handle them. These include:  - Adding new endpoints to the API - Adding new attributes to the response of an existing endpoint - Changing the order of attributes of responses (JSON by definition is an object of unordered key/value pairs)  **Filter parameters** When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0
Contact: info@nodeum.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package Nodeum::SDK::UsersApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use Nodeum::SDK::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'Nodeum::SDK::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = Nodeum::SDK::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# create_api_key
#
# Creates a new API Key for current user.
# 
# @param ApiKeyFull $api_key_body  (required)
{
    my $params = {
    'api_key_body' => {
        data_type => 'ApiKeyFull',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_api_key' } = { 
        summary => 'Creates a new API Key for current user.',
        params => $params,
        returns => 'ApiKeyFull',
        };
}
# @return ApiKeyFull
#
sub create_api_key {
    my ($self, %args) = @_;

    # verify the required parameter 'api_key_body' is set
    unless (exists $args{'api_key_body'}) {
      croak("Missing the required parameter 'api_key_body' when calling create_api_key");
    }

    # parse inputs
    my $_resource_path = '/users/me/api_keys';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'api_key_body'}) {
        $_body_data = $args{'api_key_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ApiKeyFull', $response);
    return $_response_object;
}

#
# create_configuration
#
# Creates a new configuration value for current user.
# 
# @param UserConfiguration $configuration_body  (required)
{
    my $params = {
    'configuration_body' => {
        data_type => 'UserConfiguration',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_configuration' } = { 
        summary => 'Creates a new configuration value for current user.',
        params => $params,
        returns => 'UserConfiguration',
        };
}
# @return UserConfiguration
#
sub create_configuration {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_body' is set
    unless (exists $args{'configuration_body'}) {
      croak("Missing the required parameter 'configuration_body' when calling create_configuration");
    }

    # parse inputs
    my $_resource_path = '/users/me/configurations';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'configuration_body'}) {
        $_body_data = $args{'configuration_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserConfiguration', $response);
    return $_response_object;
}

#
# destroy_api_key
#
# Destroys a specific API Key.
# 
# @param int $api_key_id Numeric ID of API Key. (required)
{
    my $params = {
    'api_key_id' => {
        data_type => 'int',
        description => 'Numeric ID of API Key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_api_key' } = { 
        summary => 'Destroys a specific API Key.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_api_key {
    my ($self, %args) = @_;

    # verify the required parameter 'api_key_id' is set
    unless (exists $args{'api_key_id'}) {
      croak("Missing the required parameter 'api_key_id' when calling destroy_api_key");
    }

    # parse inputs
    my $_resource_path = '/users/me/api_keys/{api_key_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'api_key_id'}) {
        my $_base_variable = "{" . "api_key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'api_key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# destroy_configuration
#
# Destroys a specific configuration value.
# 
# @param string $configuration_id Numeric ID, or key of configuration. (required)
{
    my $params = {
    'configuration_id' => {
        data_type => 'string',
        description => 'Numeric ID, or key of configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_configuration' } = { 
        summary => 'Destroys a specific configuration value.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_configuration {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_id' is set
    unless (exists $args{'configuration_id'}) {
      croak("Missing the required parameter 'configuration_id' when calling destroy_configuration");
    }

    # parse inputs
    my $_resource_path = '/users/me/configurations/{configuration_id}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'configuration_id'}) {
        my $_base_variable = "{" . "configuration_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'configuration_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# index_api_keys
#
# Lists all API keys of current user.
# 
# @param int $limit The number of items to display for pagination. (optional)
# @param int $offset The number of items to skip for pagination. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'The number of items to display for pagination.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of items to skip for pagination.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_api_keys' } = { 
        summary => 'Lists all API keys of current user.',
        params => $params,
        returns => 'ApiKeyCollection',
        };
}
# @return ApiKeyCollection
#
sub index_api_keys {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/me/api_keys';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ApiKeyCollection', $response);
    return $_response_object;
}

#
# index_configurations
#
# Lists all configurations of current user.
# 
# @param int $limit The number of items to display for pagination. (optional)
# @param int $offset The number of items to skip for pagination. (optional)
{
    my $params = {
    'limit' => {
        data_type => 'int',
        description => 'The number of items to display for pagination.',
        required => '0',
    },
    'offset' => {
        data_type => 'int',
        description => 'The number of items to skip for pagination.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_configurations' } = { 
        summary => 'Lists all configurations of current user.',
        params => $params,
        returns => 'UserConfigurationCollection',
        };
}
# @return UserConfigurationCollection
#
sub index_configurations {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/me/configurations';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'limit'}) {
        $query_params->{'limit'} = $self->{api_client}->to_query_value($args{'limit'});
    }

    # query params
    if ( exists $args{'offset'}) {
        $query_params->{'offset'} = $self->{api_client}->to_query_value($args{'offset'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserConfigurationCollection', $response);
    return $_response_object;
}

#
# index_system_groups
#
# List all system groups.
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'index_system_groups' } = { 
        summary => 'List all system groups.',
        params => $params,
        returns => 'SystemGroupCollection',
        };
}
# @return SystemGroupCollection
#
sub index_system_groups {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/groups/-/systems';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SystemGroupCollection', $response);
    return $_response_object;
}

#
# index_system_users
#
# List all system users.
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'index_system_users' } = { 
        summary => 'List all system users.',
        params => $params,
        returns => 'SystemUserCollection',
        };
}
# @return SystemUserCollection
#
sub index_system_users {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/users/-/systems';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SystemUserCollection', $response);
    return $_response_object;
}

#
# show_api_key
#
# Displays a specific API Key with its scopes.
# 
# @param int $api_key_id Numeric ID of API Key. (required)
{
    my $params = {
    'api_key_id' => {
        data_type => 'int',
        description => 'Numeric ID of API Key.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_api_key' } = { 
        summary => 'Displays a specific API Key with its scopes.',
        params => $params,
        returns => 'ApiKeyFull',
        };
}
# @return ApiKeyFull
#
sub show_api_key {
    my ($self, %args) = @_;

    # verify the required parameter 'api_key_id' is set
    unless (exists $args{'api_key_id'}) {
      croak("Missing the required parameter 'api_key_id' when calling show_api_key");
    }

    # parse inputs
    my $_resource_path = '/users/me/api_keys/{api_key_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'api_key_id'}) {
        my $_base_variable = "{" . "api_key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'api_key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ApiKeyFull', $response);
    return $_response_object;
}

#
# show_configuration
#
# Displays a specific configuration value.
# 
# @param string $configuration_id Numeric ID, or key of configuration. (required)
{
    my $params = {
    'configuration_id' => {
        data_type => 'string',
        description => 'Numeric ID, or key of configuration.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_configuration' } = { 
        summary => 'Displays a specific configuration value.',
        params => $params,
        returns => 'UserConfiguration',
        };
}
# @return UserConfiguration
#
sub show_configuration {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_id' is set
    unless (exists $args{'configuration_id'}) {
      croak("Missing the required parameter 'configuration_id' when calling show_configuration");
    }

    # parse inputs
    my $_resource_path = '/users/me/configurations/{configuration_id}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'configuration_id'}) {
        my $_base_variable = "{" . "configuration_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'configuration_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserConfiguration', $response);
    return $_response_object;
}

#
# update_api_key
#
# Updates a specific API Key.
# 
# @param int $api_key_id Numeric ID of API Key. (required)
# @param ApiKeyFull $api_key_body  (required)
{
    my $params = {
    'api_key_id' => {
        data_type => 'int',
        description => 'Numeric ID of API Key.',
        required => '1',
    },
    'api_key_body' => {
        data_type => 'ApiKeyFull',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_api_key' } = { 
        summary => 'Updates a specific API Key.',
        params => $params,
        returns => 'ApiKeyFull',
        };
}
# @return ApiKeyFull
#
sub update_api_key {
    my ($self, %args) = @_;

    # verify the required parameter 'api_key_id' is set
    unless (exists $args{'api_key_id'}) {
      croak("Missing the required parameter 'api_key_id' when calling update_api_key");
    }

    # verify the required parameter 'api_key_body' is set
    unless (exists $args{'api_key_body'}) {
      croak("Missing the required parameter 'api_key_body' when calling update_api_key");
    }

    # parse inputs
    my $_resource_path = '/users/me/api_keys/{api_key_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'api_key_id'}) {
        my $_base_variable = "{" . "api_key_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'api_key_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'api_key_body'}) {
        $_body_data = $args{'api_key_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ApiKeyFull', $response);
    return $_response_object;
}

#
# update_configuration
#
# Updates a specific configuration value.
# 
# @param string $configuration_id Numeric ID, or key of configuration. (required)
# @param UserConfiguration $configuration_body  (required)
{
    my $params = {
    'configuration_id' => {
        data_type => 'string',
        description => 'Numeric ID, or key of configuration.',
        required => '1',
    },
    'configuration_body' => {
        data_type => 'UserConfiguration',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_configuration' } = { 
        summary => 'Updates a specific configuration value.',
        params => $params,
        returns => 'UserConfiguration',
        };
}
# @return UserConfiguration
#
sub update_configuration {
    my ($self, %args) = @_;

    # verify the required parameter 'configuration_id' is set
    unless (exists $args{'configuration_id'}) {
      croak("Missing the required parameter 'configuration_id' when calling update_configuration");
    }

    # verify the required parameter 'configuration_body' is set
    unless (exists $args{'configuration_body'}) {
      croak("Missing the required parameter 'configuration_body' when calling update_configuration");
    }

    # parse inputs
    my $_resource_path = '/users/me/configurations/{configuration_id}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'configuration_id'}) {
        my $_base_variable = "{" . "configuration_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'configuration_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'configuration_body'}) {
        $_body_data = $args{'configuration_body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(BasicAuth BearerAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('UserConfiguration', $response);
    return $_response_object;
}

1;
