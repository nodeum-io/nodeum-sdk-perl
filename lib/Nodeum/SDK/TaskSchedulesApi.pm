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
package Nodeum::SDK::TaskSchedulesApi;

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
# create_task_schedule
#
# Creates a new task schedule. Only one should be created.
# 
# @param string $task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. (required)
# @param TaskSchedule $task_schedule_body  (required)
{
    my $params = {
    'task_id' => {
        data_type => 'string',
        description => 'Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.',
        required => '1',
    },
    'task_schedule_body' => {
        data_type => 'TaskSchedule',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'create_task_schedule' } = { 
        summary => 'Creates a new task schedule. Only one should be created.',
        params => $params,
        returns => 'TaskSchedule',
        };
}
# @return TaskSchedule
#
sub create_task_schedule {
    my ($self, %args) = @_;

    # verify the required parameter 'task_id' is set
    unless (exists $args{'task_id'}) {
      croak("Missing the required parameter 'task_id' when calling create_task_schedule");
    }

    # verify the required parameter 'task_schedule_body' is set
    unless (exists $args{'task_schedule_body'}) {
      croak("Missing the required parameter 'task_schedule_body' when calling create_task_schedule");
    }

    # parse inputs
    my $_resource_path = '/tasks/{task_id}/task_schedule';

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
    if ( exists $args{'task_id'}) {
        my $_base_variable = "{" . "task_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'task_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'task_schedule_body'}) {
        $_body_data = $args{'task_schedule_body'};
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
    my $_response_object = $self->{api_client}->deserialize('TaskSchedule', $response);
    return $_response_object;
}

#
# destroy_task_schedule
#
# Destroys the task schedule.
# 
# @param string $task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. (required)
{
    my $params = {
    'task_id' => {
        data_type => 'string',
        description => 'Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'destroy_task_schedule' } = { 
        summary => 'Destroys the task schedule.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub destroy_task_schedule {
    my ($self, %args) = @_;

    # verify the required parameter 'task_id' is set
    unless (exists $args{'task_id'}) {
      croak("Missing the required parameter 'task_id' when calling destroy_task_schedule");
    }

    # parse inputs
    my $_resource_path = '/tasks/{task_id}/task_schedule';

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
    if ( exists $args{'task_id'}) {
        my $_base_variable = "{" . "task_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'task_id'});
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
# index_task_schedules
#
# Lists all task schedules.
# 
# @param boolean $with_next Display the next scheduled date, and information about missing executions. (optional, default to true)
# @param int $limit The number of items to display for pagination. (optional)
# @param int $offset The number of items to skip for pagination. (optional)
# @param ARRAY[string] $sort_by Sort results by attribute.  Can sort on multiple attributes, separated by &#x60;|&#x60;. Order direction can be suffixing the attribute by either &#x60;:asc&#x60; (default) or &#x60;:desc&#x60;. (optional)
# @param string $id Filter on id (optional)
# @param string $rrule Filter on RRule of schedule (optional)
# @param string $done Filter on done schedule (optional)
# @param string $task_id Filter on task id (optional)
{
    my $params = {
    'with_next' => {
        data_type => 'boolean',
        description => 'Display the next scheduled date, and information about missing executions.',
        required => '0',
    },
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
    'rrule' => {
        data_type => 'string',
        description => 'Filter on RRule of schedule',
        required => '0',
    },
    'done' => {
        data_type => 'string',
        description => 'Filter on done schedule',
        required => '0',
    },
    'task_id' => {
        data_type => 'string',
        description => 'Filter on task id',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'index_task_schedules' } = { 
        summary => 'Lists all task schedules.',
        params => $params,
        returns => 'TaskScheduleCollection',
        };
}
# @return TaskScheduleCollection
#
sub index_task_schedules {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/task_schedules';

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
    if ( exists $args{'with_next'}) {
        $query_params->{'with_next'} = $self->{api_client}->to_query_value($args{'with_next'});
    }

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
    if ( exists $args{'rrule'}) {
        $query_params->{'rrule'} = $self->{api_client}->to_query_value($args{'rrule'});
    }

    # query params
    if ( exists $args{'done'}) {
        $query_params->{'done'} = $self->{api_client}->to_query_value($args{'done'});
    }

    # query params
    if ( exists $args{'task_id'}) {
        $query_params->{'task_id'} = $self->{api_client}->to_query_value($args{'task_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TaskScheduleCollection', $response);
    return $_response_object;
}

#
# show_task_schedule
#
# Displays the task schedule.
# 
# @param string $task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. (required)
{
    my $params = {
    'task_id' => {
        data_type => 'string',
        description => 'Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'show_task_schedule' } = { 
        summary => 'Displays the task schedule.',
        params => $params,
        returns => 'TaskSchedule',
        };
}
# @return TaskSchedule
#
sub show_task_schedule {
    my ($self, %args) = @_;

    # verify the required parameter 'task_id' is set
    unless (exists $args{'task_id'}) {
      croak("Missing the required parameter 'task_id' when calling show_task_schedule");
    }

    # parse inputs
    my $_resource_path = '/tasks/{task_id}/task_schedule';

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
    if ( exists $args{'task_id'}) {
        my $_base_variable = "{" . "task_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'task_id'});
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
    my $_response_object = $self->{api_client}->deserialize('TaskSchedule', $response);
    return $_response_object;
}

#
# update_task_schedule
#
# Updates the existing task schedule.
# 
# @param string $task_id Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID. (required)
# @param TaskSchedule $task_schedule_body  (required)
{
    my $params = {
    'task_id' => {
        data_type => 'string',
        description => 'Numeric ID or name of task. Task names are not unique, it&#39;s recommanded to use numeric ID.',
        required => '1',
    },
    'task_schedule_body' => {
        data_type => 'TaskSchedule',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'update_task_schedule' } = { 
        summary => 'Updates the existing task schedule.',
        params => $params,
        returns => 'TaskSchedule',
        };
}
# @return TaskSchedule
#
sub update_task_schedule {
    my ($self, %args) = @_;

    # verify the required parameter 'task_id' is set
    unless (exists $args{'task_id'}) {
      croak("Missing the required parameter 'task_id' when calling update_task_schedule");
    }

    # verify the required parameter 'task_schedule_body' is set
    unless (exists $args{'task_schedule_body'}) {
      croak("Missing the required parameter 'task_schedule_body' when calling update_task_schedule");
    }

    # parse inputs
    my $_resource_path = '/tasks/{task_id}/task_schedule';

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
    if ( exists $args{'task_id'}) {
        my $_base_variable = "{" . "task_id" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'task_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'task_schedule_body'}) {
        $_body_data = $args{'task_schedule_body'};
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
    my $_response_object = $self->{api_client}->deserialize('TaskSchedule', $response);
    return $_response_object;
}

1;
