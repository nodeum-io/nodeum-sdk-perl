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
package Nodeum::SDK::MetadataApi;

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
# index_file_metadata_definitions
#
# List file metadata definitions
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
    __PACKAGE__->method_documentation->{ 'index_file_metadata_definitions' } = { 
        summary => 'List file metadata definitions',
        params => $params,
        returns => 'FileMetadataDefinitionCollection',
        };
}
# @return FileMetadataDefinitionCollection
#
sub index_file_metadata_definitions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/file_metadata_definitions';

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
    my $_response_object = $self->{api_client}->deserialize('FileMetadataDefinitionCollection', $response);
    return $_response_object;
}

#
# index_task_metadata_definitions
#
# List task metadata definitions
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
    __PACKAGE__->method_documentation->{ 'index_task_metadata_definitions' } = { 
        summary => 'List task metadata definitions',
        params => $params,
        returns => 'TaskMetadataDefinitionCollection',
        };
}
# @return TaskMetadataDefinitionCollection
#
sub index_task_metadata_definitions {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/task_metadata_definitions';

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
    my $_response_object = $self->{api_client}->deserialize('TaskMetadataDefinitionCollection', $response);
    return $_response_object;
}

#
# show_file_metadata_definition
#
# Displays a specific task metadata definition.
# 
# @param string $metadata_definition_id Numeric ID or key of a metadata definition (required)
{
    my $params = {
    'metadata_definition_id' => {
        data_type => 'string',
        description => 'Numeric ID or key of a metadata definition',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_file_metadata_definition' } = { 
        summary => 'Displays a specific task metadata definition.',
        params => $params,
        returns => 'FileMetadataDefinition',
        };
}
# @return FileMetadataDefinition
#
sub show_file_metadata_definition {
    my ($self, %args) = @_;

    # verify the required parameter 'metadata_definition_id' is set
    unless (exists $args{'metadata_definition_id'}) {
      croak("Missing the required parameter 'metadata_definition_id' when calling show_file_metadata_definition");
    }

    # parse inputs
    my $_resource_path = '/file_metadata_definitions/{metadata_definition_id}';

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
    if ( exists $args{'metadata_definition_id'}) {
        my $_base_variable = "{" . "metadata_definition_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'metadata_definition_id'});
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
    my $_response_object = $self->{api_client}->deserialize('FileMetadataDefinition', $response);
    return $_response_object;
}

#
# show_task_metadata_definition
#
# Displays a specific task metadata definition.
# 
# @param string $metadata_definition_id Numeric ID or key of a metadata definition (required)
{
    my $params = {
    'metadata_definition_id' => {
        data_type => 'string',
        description => 'Numeric ID or key of a metadata definition',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_task_metadata_definition' } = { 
        summary => 'Displays a specific task metadata definition.',
        params => $params,
        returns => 'TaskMetadataDefinition',
        };
}
# @return TaskMetadataDefinition
#
sub show_task_metadata_definition {
    my ($self, %args) = @_;

    # verify the required parameter 'metadata_definition_id' is set
    unless (exists $args{'metadata_definition_id'}) {
      croak("Missing the required parameter 'metadata_definition_id' when calling show_task_metadata_definition");
    }

    # parse inputs
    my $_resource_path = '/task_metadata_definitions/{metadata_definition_id}';

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
    if ( exists $args{'metadata_definition_id'}) {
        my $_base_variable = "{" . "metadata_definition_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'metadata_definition_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TaskMetadataDefinition', $response);
    return $_response_object;
}

1;
