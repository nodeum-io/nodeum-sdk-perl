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
package Nodeum::SDK::Object::Task;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new { 
    my ($class, %args) = @_; 

    my $self = bless {}, $class;

    $self->init(%args);
    
    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "Nodeum::SDK::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'Task',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'int',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => '',
        format => '',
        read_only => '',
            },
    'comment' => {
        datatype => 'string',
        base_name => 'comment',
        description => '',
        format => '',
        read_only => '',
            },
    'workflow_type' => {
        datatype => 'string',
        base_name => 'workflow_type',
        description => '',
        format => '',
        read_only => '',
            },
    'workflow_action' => {
        datatype => 'string',
        base_name => 'workflow_action',
        description => '',
        format => '',
        read_only => '',
            },
    'source_type' => {
        datatype => 'string',
        base_name => 'source_type',
        description => '',
        format => '',
        read_only => '',
            },
    'destination_type' => {
        datatype => 'string',
        base_name => 'destination_type',
        description => '',
        format => '',
        read_only => '',
            },
    'priority' => {
        datatype => 'int',
        base_name => 'priority',
        description => '',
        format => '',
        read_only => '',
            },
    'conflict_resolution' => {
        datatype => 'string',
        base_name => 'conflict_resolution',
        description => '',
        format => '',
        read_only => '',
            },
    'action' => {
        datatype => 'string',
        base_name => 'action',
        description => '',
        format => '',
        read_only => '',
            },
    'activate' => {
        datatype => 'boolean',
        base_name => 'activate',
        description => '',
        format => '',
        read_only => '',
            },
    'creation_date' => {
        datatype => 'string',
        base_name => 'creation_date',
        description => '',
        format => '',
        read_only => '',
            },
    'modification_date' => {
        datatype => 'string',
        base_name => 'modification_date',
        description => '',
        format => '',
        read_only => '',
            },
    'creation_username' => {
        datatype => 'string',
        base_name => 'creation_username',
        description => '',
        format => '',
        read_only => '',
            },
    'modification_username' => {
        datatype => 'string',
        base_name => 'modification_username',
        description => '',
        format => '',
        read_only => '',
            },
    'status' => {
        datatype => 'string',
        base_name => 'status',
        description => '',
        format => '',
        read_only => '',
            },
    'job_started' => {
        datatype => 'string',
        base_name => 'job_started',
        description => '',
        format => '',
        read_only => '',
            },
    'job_finished' => {
        datatype => 'string',
        base_name => 'job_finished',
        description => '',
        format => '',
        read_only => '',
            },
    'processed_size' => {
        datatype => 'int',
        base_name => 'processed_size',
        description => '',
        format => '',
        read_only => '',
            },
    'to_process_size' => {
        datatype => 'int',
        base_name => 'to_process_size',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'int',
    'name' => 'string',
    'comment' => 'string',
    'workflow_type' => 'string',
    'workflow_action' => 'string',
    'source_type' => 'string',
    'destination_type' => 'string',
    'priority' => 'int',
    'conflict_resolution' => 'string',
    'action' => 'string',
    'activate' => 'boolean',
    'creation_date' => 'string',
    'modification_date' => 'string',
    'creation_username' => 'string',
    'modification_username' => 'string',
    'status' => 'string',
    'job_started' => 'string',
    'job_finished' => 'string',
    'processed_size' => 'int',
    'to_process_size' => 'int'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'name' => 'name',
    'comment' => 'comment',
    'workflow_type' => 'workflow_type',
    'workflow_action' => 'workflow_action',
    'source_type' => 'source_type',
    'destination_type' => 'destination_type',
    'priority' => 'priority',
    'conflict_resolution' => 'conflict_resolution',
    'action' => 'action',
    'activate' => 'activate',
    'creation_date' => 'creation_date',
    'modification_date' => 'modification_date',
    'creation_username' => 'creation_username',
    'modification_username' => 'modification_username',
    'status' => 'status',
    'job_started' => 'job_started',
    'job_finished' => 'job_finished',
    'processed_size' => 'processed_size',
    'to_process_size' => 'to_process_size'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
