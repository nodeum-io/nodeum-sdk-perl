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
package Nodeum::SDK::Configuration;

use strict;
use warnings;
use utf8;

use Log::Any qw($log);
use Carp;

use constant VERSION => '1.88.0';

=head1 Name

        Nodeum::SDK::Configuration - holds the configuration for all Nodeum::SDK Modules

=head1 new(%parameters)

=over 4

=item http_timeout: (optional)

Integer. timeout for HTTP requests in seconds

default: 180

=item http_user_agent: (optional)

String. custom UserAgent header

default: OpenAPI-Generator/1.88.0/perl

=item api_key: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens).

    api_key => {
        secretKey => 'aaaabbbbccccdddd',
        anotherKey => '1111222233334444',
    };

=item api_key_prefix: (optional)

Hashref. Keyed on the name of each key (there can be multiple tokens). Note not all api keys require a prefix.

    api_key_prefix => {
        secretKey => 'string',
        anotherKey => 'same or some other string',
    };

=item api_key_in: (optional)

=item username: (optional)

String. The username for basic auth.

=item password: (optional)

String. The password for basic auth.

=item access_token: (optional)

String. The OAuth access token.

=item base_url: (optional)

String. The base URL of the API

default: http://localhost/api/v2

=back

=cut

sub new {
    my ($self, %p) = (shift,@_);

    # class/static variables
    $p{http_timeout} //= 180;
    $p{http_user_agent} //= 'OpenAPI-Generator/1.88.0/perl';

    # authentication setting
    $p{api_key} //= {};
    $p{api_key_prefix} //= {};
    $p{api_key_in} //= {};

    # username and password for HTTP basic authentication
    $p{username} //= '';
    $p{password} //= '';

    # access token for OAuth
    $p{access_token} //= '';

    # base_url
    $p{base_url} //= 'http://localhost/api/v2';

    return bless \%p => $self;
}


sub get_tokens {
    my $self = shift;
   
    my $tokens = {};
    $tokens->{username} = $self->{username} if $self->{username};
    $tokens->{password} = $self->{password} if $self->{password};
    $tokens->{access_token} = $self->{access_token} if $self->{access_token};

    foreach my $token_name (keys %{ $self->{api_key} }) {
        $tokens->{$token_name}->{token} = $self->{api_key}{$token_name};
        $tokens->{$token_name}->{prefix} = $self->{api_key_prefix}{$token_name};
        $tokens->{$token_name}->{in} = $self->{api_key_in}{$token_name};
    }

    return $tokens;
}

sub clear_tokens {
    my $self = shift;
    my %tokens = %{$self->get_tokens}; # copy

    $self->{username} = '';
    $self->{password} = '';
    $self->{access_token} = '';

    $self->{api_key} = {};
    $self->{api_key_prefix} = {};
    $self->{api_key_in} = {};
  
    return \%tokens;
}

sub accept_tokens {
    my ($self, $tokens) = @_;
  
    foreach my $known_name (qw(username password access_token)) {
        next unless $tokens->{$known_name};
        $self->{$known_name} = delete $tokens->{$known_name};
    }

    foreach my $token_name (keys %$tokens) {
        $self->{api_key}{$token_name} = $tokens->{$token_name}{token};
        if ($tokens->{$token_name}{prefix}) {
            $self->{api_key_prefix}{$token_name} = $tokens->{$token_name}{prefix};
        }
        my $in = $tokens->{$token_name}->{in} || 'head';
        croak "Tokens can only go in 'head' or 'query' (not in '$in')" unless $in =~ /^(?:head|query)$/;
        $self->{api_key_in}{$token_name} = $in;
    }
}    

1;
