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
package Nodeum::SDK::TapeLibrariesApi;

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
# create_tape_library
#
# Creates a new tape library.
# 
# @param TapeLibrary $tape_library_body  (required)
{
    my $params = {
    'tape_library_body' => {
        data_type => 'TapeLibrary',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_tape_library' } = { 
        summary => 'Creates a new tape library.',
        params => $params,
        returns => 'TapeLibrary',
        };
}
# @return TapeLibrary
#
sub create_tape_library {
    my ($self, %args) = @_;

    # verify the required parameter 'tape_library_body' is set
    unless (exists $args{'tape_library_body'}) {
      croak("Missing the required parameter 'tape_library_body' when calling create_tape_library");
    }

    # parse inputs
    my $_resource_path = '/tape_libraries';

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
    if ( exists $args{'tape_library_body'}) {
        $_body_data = $args{'tape_library_body'};
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
    my $_response_object = $self->{api_client}->deserialize('TapeLibrary', $response);
    return $_response_object;
}

#
# destroy_tape_library
#
# Destroys a specific tape library.
# 
# @param string $tape_library_id Numeric ID, serial, or name of tape library. (required)
{
    my $params = {
    'tape_library_id' => {
        data_type => 'string',
        description => 'Numeric ID, serial, or name of tape library.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_tape_library' } = { 
        summary => 'Destroys a specific tape library.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_tape_library {
    my ($self, %args) = @_;

    # verify the required parameter 'tape_library_id' is set
    unless (exists $args{'tape_library_id'}) {
      croak("Missing the required parameter 'tape_library_id' when calling destroy_tape_library");
    }

    # parse inputs
    my $_resource_path = '/tape_libraries/{tape_library_id}';

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
    if ( exists $args{'tape_library_id'}) {
        my $_base_variable = "{" . "tape_library_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tape_library_id'});
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
# index_tape_libraries
#
# Lists all tape libraries.
# 
# @param int $limit The number of items to display for pagination. (optional)
# @param int $offset The number of items to skip for pagination. (optional)
# @param ARRAY[string] $sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. (optional)
# @param string $id Filter on id (optional)
# @param string $name Filter on name (optional)
# @param string $serial Filter on serial (optional)
# @param string $comment Filter on comment (optional)
# @param string $protocol Filter on protocol (optional)
# @param string $vendor Filter on vendor (optional)
# @param string $product Filter on product (optional)
# @param string $firmware Filter on firmware (optional)
# @param string $device Filter on device (optional)
# @param string $libso Filter on libso (optional)
# @param string $acs Filter on acs (optional)
# @param string $status Filter on status (optional)
# @param string $storage_slots Filter on storage slots (optional)
# @param string $storage_slots_address Filter on storage slots address (optional)
# @param string $io_slots Filter on io slots (optional)
# @param string $io_slots_address Filter on io slots address (optional)
# @param string $price Filter on price (optional)
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
    'serial' => {
        data_type => 'string',
        description => 'Filter on serial',
        required => '0',
    },
    'comment' => {
        data_type => 'string',
        description => 'Filter on comment',
        required => '0',
    },
    'protocol' => {
        data_type => 'string',
        description => 'Filter on protocol',
        required => '0',
    },
    'vendor' => {
        data_type => 'string',
        description => 'Filter on vendor',
        required => '0',
    },
    'product' => {
        data_type => 'string',
        description => 'Filter on product',
        required => '0',
    },
    'firmware' => {
        data_type => 'string',
        description => 'Filter on firmware',
        required => '0',
    },
    'device' => {
        data_type => 'string',
        description => 'Filter on device',
        required => '0',
    },
    'libso' => {
        data_type => 'string',
        description => 'Filter on libso',
        required => '0',
    },
    'acs' => {
        data_type => 'string',
        description => 'Filter on acs',
        required => '0',
    },
    'status' => {
        data_type => 'string',
        description => 'Filter on status',
        required => '0',
    },
    'storage_slots' => {
        data_type => 'string',
        description => 'Filter on storage slots',
        required => '0',
    },
    'storage_slots_address' => {
        data_type => 'string',
        description => 'Filter on storage slots address',
        required => '0',
    },
    'io_slots' => {
        data_type => 'string',
        description => 'Filter on io slots',
        required => '0',
    },
    'io_slots_address' => {
        data_type => 'string',
        description => 'Filter on io slots address',
        required => '0',
    },
    'price' => {
        data_type => 'string',
        description => 'Filter on price',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_tape_libraries' } = { 
        summary => 'Lists all tape libraries.',
        params => $params,
        returns => 'TapeLibraryCollection',
        };
}
# @return TapeLibraryCollection
#
sub index_tape_libraries {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/tape_libraries';

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
    if ( exists $args{'serial'}) {
        $query_params->{'serial'} = $self->{api_client}->to_query_value($args{'serial'});
    }

    # query params
    if ( exists $args{'comment'}) {
        $query_params->{'comment'} = $self->{api_client}->to_query_value($args{'comment'});
    }

    # query params
    if ( exists $args{'protocol'}) {
        $query_params->{'protocol'} = $self->{api_client}->to_query_value($args{'protocol'});
    }

    # query params
    if ( exists $args{'vendor'}) {
        $query_params->{'vendor'} = $self->{api_client}->to_query_value($args{'vendor'});
    }

    # query params
    if ( exists $args{'product'}) {
        $query_params->{'product'} = $self->{api_client}->to_query_value($args{'product'});
    }

    # query params
    if ( exists $args{'firmware'}) {
        $query_params->{'firmware'} = $self->{api_client}->to_query_value($args{'firmware'});
    }

    # query params
    if ( exists $args{'device'}) {
        $query_params->{'device'} = $self->{api_client}->to_query_value($args{'device'});
    }

    # query params
    if ( exists $args{'libso'}) {
        $query_params->{'libso'} = $self->{api_client}->to_query_value($args{'libso'});
    }

    # query params
    if ( exists $args{'acs'}) {
        $query_params->{'acs'} = $self->{api_client}->to_query_value($args{'acs'});
    }

    # query params
    if ( exists $args{'status'}) {
        $query_params->{'status'} = $self->{api_client}->to_query_value($args{'status'});
    }

    # query params
    if ( exists $args{'storage_slots'}) {
        $query_params->{'storage_slots'} = $self->{api_client}->to_query_value($args{'storage_slots'});
    }

    # query params
    if ( exists $args{'storage_slots_address'}) {
        $query_params->{'storage_slots_address'} = $self->{api_client}->to_query_value($args{'storage_slots_address'});
    }

    # query params
    if ( exists $args{'io_slots'}) {
        $query_params->{'io_slots'} = $self->{api_client}->to_query_value($args{'io_slots'});
    }

    # query params
    if ( exists $args{'io_slots_address'}) {
        $query_params->{'io_slots_address'} = $self->{api_client}->to_query_value($args{'io_slots_address'});
    }

    # query params
    if ( exists $args{'price'}) {
        $query_params->{'price'} = $self->{api_client}->to_query_value($args{'price'});
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
    my $_response_object = $self->{api_client}->deserialize('TapeLibraryCollection', $response);
    return $_response_object;
}

#
# index_tape_library_devices
#
# Lists tape libraries devices.
# 
# @param string $job_id ID of active job (required)
{
    my $params = {
    'job_id' => {
        data_type => 'string',
        description => 'ID of active job',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_tape_library_devices' } = { 
        summary => 'Lists tape libraries devices.',
        params => $params,
        returns => 'TapeLibraryDeviceCollection',
        };
}
# @return TapeLibraryDeviceCollection
#
sub index_tape_library_devices {
    my ($self, %args) = @_;

    # verify the required parameter 'job_id' is set
    unless (exists $args{'job_id'}) {
      croak("Missing the required parameter 'job_id' when calling index_tape_library_devices");
    }

    # parse inputs
    my $_resource_path = '/tape_libraries/-/devices';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'queued', 'working', 'failed', );
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'job_id'}) {
        $query_params->{'job_id'} = $self->{api_client}->to_query_value($args{'job_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TapeLibraryDeviceCollection', $response);
    return $_response_object;
}

#
# show_tape_library
#
# Displays a specific tape library.
# 
# @param string $tape_library_id Numeric ID, serial, or name of tape library. (required)
{
    my $params = {
    'tape_library_id' => {
        data_type => 'string',
        description => 'Numeric ID, serial, or name of tape library.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_tape_library' } = { 
        summary => 'Displays a specific tape library.',
        params => $params,
        returns => 'TapeLibrary',
        };
}
# @return TapeLibrary
#
sub show_tape_library {
    my ($self, %args) = @_;

    # verify the required parameter 'tape_library_id' is set
    unless (exists $args{'tape_library_id'}) {
      croak("Missing the required parameter 'tape_library_id' when calling show_tape_library");
    }

    # parse inputs
    my $_resource_path = '/tape_libraries/{tape_library_id}';

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
    if ( exists $args{'tape_library_id'}) {
        my $_base_variable = "{" . "tape_library_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tape_library_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TapeLibrary', $response);
    return $_response_object;
}

#
# update_tape_library
#
# Updates a specific tape library.
# 
# @param string $tape_library_id Numeric ID, serial, or name of tape library. (required)
# @param TapeLibrary $tape_library_body  (required)
{
    my $params = {
    'tape_library_id' => {
        data_type => 'string',
        description => 'Numeric ID, serial, or name of tape library.',
        required => '1',
    },
    'tape_library_body' => {
        data_type => 'TapeLibrary',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_tape_library' } = { 
        summary => 'Updates a specific tape library.',
        params => $params,
        returns => 'TapeLibrary',
        };
}
# @return TapeLibrary
#
sub update_tape_library {
    my ($self, %args) = @_;

    # verify the required parameter 'tape_library_id' is set
    unless (exists $args{'tape_library_id'}) {
      croak("Missing the required parameter 'tape_library_id' when calling update_tape_library");
    }

    # verify the required parameter 'tape_library_body' is set
    unless (exists $args{'tape_library_body'}) {
      croak("Missing the required parameter 'tape_library_body' when calling update_tape_library");
    }

    # parse inputs
    my $_resource_path = '/tape_libraries/{tape_library_id}';

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
    if ( exists $args{'tape_library_id'}) {
        my $_base_variable = "{" . "tape_library_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'tape_library_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'tape_library_body'}) {
        $_body_data = $args{'tape_library_body'};
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
    my $_response_object = $self->{api_client}->deserialize('TapeLibrary', $response);
    return $_response_object;
}

1;
