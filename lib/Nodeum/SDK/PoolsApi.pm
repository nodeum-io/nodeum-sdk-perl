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
package Nodeum::SDK::PoolsApi;

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
# create_pool
#
# Creates a new pool.
# 
# @param PoolUp $pool_body  (required)
{
    my $params = {
    'pool_body' => {
        data_type => 'PoolUp',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_pool' } = { 
        summary => 'Creates a new pool.',
        params => $params,
        returns => 'Pool',
        };
}
# @return Pool
#
sub create_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_body' is set
    unless (exists $args{'pool_body'}) {
      croak("Missing the required parameter 'pool_body' when calling create_pool");
    }

    # parse inputs
    my $_resource_path = '/pools';

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
    if ( exists $args{'pool_body'}) {
        $_body_data = $args{'pool_body'};
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
    my $_response_object = $self->{api_client}->deserialize('Pool', $response);
    return $_response_object;
}

#
# create_primary_scan
#
# Set a new primary pool scan option.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
# @param PrimaryScan $primary_scan_body  (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    'primary_scan_body' => {
        data_type => 'PrimaryScan',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_primary_scan' } = { 
        summary => 'Set a new primary pool scan option.',
        params => $params,
        returns => 'PrimaryScan',
        };
}
# @return PrimaryScan
#
sub create_primary_scan {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling create_primary_scan");
    }

    # verify the required parameter 'primary_scan_body' is set
    unless (exists $args{'primary_scan_body'}) {
      croak("Missing the required parameter 'primary_scan_body' when calling create_primary_scan");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/primary_scan';

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

    # path params
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'primary_scan_body'}) {
        $_body_data = $args{'primary_scan_body'};
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
    my $_response_object = $self->{api_client}->deserialize('PrimaryScan', $response);
    return $_response_object;
}

#
# destroy_pool
#
# Destroys a specific tape pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_pool' } = { 
        summary => 'Destroys a specific tape pool.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling destroy_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
# destroy_primary_scan
#
# Disable the primary pool scan.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_primary_scan' } = { 
        summary => 'Disable the primary pool scan.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_primary_scan {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling destroy_primary_scan");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/primary_scan';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
# index_pools
#
# Lists all pools.
# 
# @param int $limit The number of items to display for pagination. (optional)
# @param int $offset The number of items to skip for pagination. (optional)
# @param ARRAY[string] $sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. (optional)
# @param string $id Filter on id (optional)
# @param string $name Filter on name (optional)
# @param string $comment Filter on comment (optional)
# @param string $type Filter on type (optional)
# @param string $content Filter on content (optional)
# @param string $primary_id Filter on primary id (optional)
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
    'sort_by' => {
        data_type => 'ARRAY[string]',
        description => 'Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;.',
        required => '0',
    },
    'id' => {
        data_type => 'string',
        description => 'Filter on id',
        required => '0',
    },
    'name' => {
        data_type => 'string',
        description => 'Filter on name',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'Filter on comment',
        required => '0',
    },
    'type' => {
        data_type => 'string',
        description => 'Filter on type',
        required => '0',
    },
    'content' => {
        data_type => 'string',
        description => 'Filter on content',
        required => '0',
    },
    'primary_id' => {
        data_type => 'string',
        description => 'Filter on primary id',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_pools' } = { 
        summary => 'Lists all pools.',
        params => $params,
        returns => 'PoolCollection',
        };
}
# @return PoolCollection
#
sub index_pools {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/pools';

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

    # query params
    if ( exists $args{'sort_by'}) {
        $query_params->{'sort_by'} = $self->{api_client}->to_query_value($args{'sort_by'});
    }

    # query params
    if ( exists $args{'id'}) {
        $query_params->{'id'} = $self->{api_client}->to_query_value($args{'id'});
    }

    # query params
    if ( exists $args{'name'}) {
        $query_params->{'name'} = $self->{api_client}->to_query_value($args{'name'});
    }

    # query params
    if ( exists $args{'comment'}) {
        $query_params->{'comment'} = $self->{api_client}->to_query_value($args{'comment'});
    }

    # query params
    if ( exists $args{'type'}) {
        $query_params->{'type'} = $self->{api_client}->to_query_value($args{'type'});
    }

    # query params
    if ( exists $args{'content'}) {
        $query_params->{'content'} = $self->{api_client}->to_query_value($args{'content'});
    }

    # query params
    if ( exists $args{'primary_id'}) {
        $query_params->{'primary_id'} = $self->{api_client}->to_query_value($args{'primary_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PoolCollection', $response);
    return $_response_object;
}

#
# mount_pool
#
# Mount Pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'mount_pool' } = { 
        summary => 'Mount Pool.',
        params => $params,
        returns => 'MountStatus',
        };
}
# @return MountStatus
#
sub mount_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling mount_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/mount';

    my $_method = 'PUT';
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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('MountStatus', $response);
    return $_response_object;
}

#
# mount_status_pool
#
# Get mount status of Pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'mount_status_pool' } = { 
        summary => 'Get mount status of Pool.',
        params => $params,
        returns => 'MountStatus',
        };
}
# @return MountStatus
#
sub mount_status_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling mount_status_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/mount';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('MountStatus', $response);
    return $_response_object;
}

#
# show_pool
#
# Displays a specific pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_pool' } = { 
        summary => 'Displays a specific pool.',
        params => $params,
        returns => 'Pool',
        };
}
# @return Pool
#
sub show_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling show_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('Pool', $response);
    return $_response_object;
}

#
# show_primary_scan
#
# Displays the primary pool scan status.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_primary_scan' } = { 
        summary => 'Displays the primary pool scan status.',
        params => $params,
        returns => 'PrimaryScan',
        };
}
# @return PrimaryScan
#
sub show_primary_scan {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling show_primary_scan");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/primary_scan';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('PrimaryScan', $response);
    return $_response_object;
}

#
# sync_primary_pool
#
# Synchronize a primary after a scan (for internal use only).
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
# @param int $tx New transaction number. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    'tx' => {
        data_type => 'int',
        description => 'New transaction number.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sync_primary_pool' } = { 
        summary => 'Synchronize a primary after a scan (for internal use only).',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sync_primary_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling sync_primary_pool");
    }

    # verify the required parameter 'tx' is set
    unless (exists $args{'tx'}) {
      croak("Missing the required parameter 'tx' when calling sync_primary_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/sync';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'tx'}) {
        $query_params->{'tx'} = $self->{api_client}->to_query_value($args{'tx'});
    }

    # path params
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
# unmount_pool
#
# Unmount Pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'unmount_pool' } = { 
        summary => 'Unmount Pool.',
        params => $params,
        returns => 'MountStatus',
        };
}
# @return MountStatus
#
sub unmount_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling unmount_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/mount';

    my $_method = 'DELETE';
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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
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
    my $_response_object = $self->{api_client}->deserialize('MountStatus', $response);
    return $_response_object;
}

#
# update_pool
#
# Updates a specific pool.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
# @param PoolUp $pool_body  (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    'pool_body' => {
        data_type => 'PoolUp',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_pool' } = { 
        summary => 'Updates a specific pool.',
        params => $params,
        returns => 'Pool',
        };
}
# @return Pool
#
sub update_pool {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling update_pool");
    }

    # verify the required parameter 'pool_body' is set
    unless (exists $args{'pool_body'}) {
      croak("Missing the required parameter 'pool_body' when calling update_pool");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'pool_body'}) {
        $_body_data = $args{'pool_body'};
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
    my $_response_object = $self->{api_client}->deserialize('Pool', $response);
    return $_response_object;
}

#
# update_primary_scan
#
# Updates the existing primary pool scan option.
# 
# @param string $pool_id Numeric ID, or name of pool. (required)
# @param PrimaryScan $primary_scan_body  (required)
{
    my $params = {
    'pool_id' => {
        data_type => 'string',
        description => 'Numeric ID, or name of pool.',
        required => '1',
    },
    'primary_scan_body' => {
        data_type => 'PrimaryScan',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_primary_scan' } = { 
        summary => 'Updates the existing primary pool scan option.',
        params => $params,
        returns => 'PrimaryScan',
        };
}
# @return PrimaryScan
#
sub update_primary_scan {
    my ($self, %args) = @_;

    # verify the required parameter 'pool_id' is set
    unless (exists $args{'pool_id'}) {
      croak("Missing the required parameter 'pool_id' when calling update_primary_scan");
    }

    # verify the required parameter 'primary_scan_body' is set
    unless (exists $args{'primary_scan_body'}) {
      croak("Missing the required parameter 'primary_scan_body' when calling update_primary_scan");
    }

    # parse inputs
    my $_resource_path = '/pools/{pool_id}/primary_scan';

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
    if ( exists $args{'pool_id'}) {
        my $_base_variable = "{" . "pool_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pool_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'primary_scan_body'}) {
        $_body_data = $args{'primary_scan_body'};
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
    my $_response_object = $self->{api_client}->deserialize('PrimaryScan', $response);
    return $_response_object;
}

1;
