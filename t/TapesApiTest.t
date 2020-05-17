=begin comment

Nodeum API

The Nodeum API makes it easy to tap into the digital data mesh that runs across your organisation. Make requests to our API endpoints and we’ll give you everything you need to interconnect your business workflows with your storage.  All production API requests are made to:  http://nodeumhostname/api/  The current production version of the API is v1.   **REST** The Nodeum API is a RESTful API. This means that the API is designed to allow you to get, create, update, & delete objects with the HTTP verbs GET, POST, PUT, PATCH, & DELETE.  **JSON** The Nodeum API speaks exclusively in JSON. This means that you should always set the Content-Type header to application/json to ensure that your requests are properly accepted and processed by the API.  **Authentication** All API calls require user-password authentication.   **Cross-Origin Resource Sharing** The Nodeum API supports CORS for communicating from Javascript for these endpoints. You will need to specify an Origin URI when creating your application to allow for CORS to be whitelisted for your domain.   **Pagination** Some endpoints such as File Listing return a potentially lengthy array of objects. In order to keep the response sizes manageable the API will take advantage of pagination. Pagination is a mechanism for returning a subset of the results for a request and allowing for subsequent requests to “page” through the rest of the results until the end is reached. Paginated endpoints follow a standard interface that accepts two query parameters, limit and offset, and return a payload that follows a standard form. These parameters names and their behavior are borrowed from SQL LIMIT and OFFSET keywords.  **Versioning** The Nodeum API is constantly being worked on to add features, make improvements, and fix bugs. This means that you should expect changes to be introduced and documented.   However, there are some changes or additions that are considered backwards-compatible and your applications should be flexible enough to handle them. These include:  - Adding new endpoints to the API - Adding new attributes to the response of an existing endpoint - Changing the order of attributes of responses (JSON by definition is an object of unordered key/value pairs)  **Filter parameters** When browsing a list of items, multiple filter parameters may be applied. Some operators can be added to the value as a prefix:  - `=` value is equal. Default operator, may be omitted  - `!=` value is different  - `>` greater than  - `>=` greater than or equal  - `<` lower than  - `>=` lower than or equal  - `><` included in list, items should be separated by `|`  - `!><` not included in list, items should be separated by `|`  - `~` pattern matching, may include `%` (any characters) and `_` (one character)  - `!~` pattern not matching, may include `%` (any characters) and `_` (one character)  

The version of the OpenAPI document: 2.1.0
Contact: info@nodeum.io
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('Nodeum::SDK::TapesApi');

my $api = Nodeum::SDK::TapesApi->new();
isa_ok($api, 'Nodeum::SDK::TapesApi');

#
# index_tape_stats test
#
{
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $result = $api->index_tape_stats(limit => $limit, offset => $offset);
}

#
# index_tapes test
#
{
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $sort_by = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $tape_library_id = undef; # replace NULL with a proper value
    my $pool_id = undef; # replace NULL with a proper value
    my $barcode = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $type = undef; # replace NULL with a proper value
    my $locked = undef; # replace NULL with a proper value
    my $scratch = undef; # replace NULL with a proper value
    my $cleaning = undef; # replace NULL with a proper value
    my $write_protect = undef; # replace NULL with a proper value
    my $mounted = undef; # replace NULL with a proper value
    my $ejected = undef; # replace NULL with a proper value
    my $known = undef; # replace NULL with a proper value
    my $mount_count = undef; # replace NULL with a proper value
    my $date_in = undef; # replace NULL with a proper value
    my $date_move = undef; # replace NULL with a proper value
    my $free = undef; # replace NULL with a proper value
    my $max = undef; # replace NULL with a proper value
    my $last_size_update = undef; # replace NULL with a proper value
    my $last_maintenance = undef; # replace NULL with a proper value
    my $last_repack = undef; # replace NULL with a proper value
    my $repack_status = undef; # replace NULL with a proper value
    my $hash = undef; # replace NULL with a proper value
    my $force_import_type = undef; # replace NULL with a proper value
    my $need_to_check = undef; # replace NULL with a proper value
    my $result = $api->index_tapes(limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
}

#
# index_tapes_by_pool test
#
{
    my $pool_id = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $sort_by = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $tape_library_id = undef; # replace NULL with a proper value
    my $barcode = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $type = undef; # replace NULL with a proper value
    my $locked = undef; # replace NULL with a proper value
    my $scratch = undef; # replace NULL with a proper value
    my $cleaning = undef; # replace NULL with a proper value
    my $write_protect = undef; # replace NULL with a proper value
    my $mounted = undef; # replace NULL with a proper value
    my $ejected = undef; # replace NULL with a proper value
    my $known = undef; # replace NULL with a proper value
    my $mount_count = undef; # replace NULL with a proper value
    my $date_in = undef; # replace NULL with a proper value
    my $date_move = undef; # replace NULL with a proper value
    my $free = undef; # replace NULL with a proper value
    my $max = undef; # replace NULL with a proper value
    my $last_size_update = undef; # replace NULL with a proper value
    my $last_maintenance = undef; # replace NULL with a proper value
    my $last_repack = undef; # replace NULL with a proper value
    my $repack_status = undef; # replace NULL with a proper value
    my $hash = undef; # replace NULL with a proper value
    my $force_import_type = undef; # replace NULL with a proper value
    my $need_to_check = undef; # replace NULL with a proper value
    my $result = $api->index_tapes_by_pool(pool_id => $pool_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, tape_library_id => $tape_library_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
}

#
# index_tapes_by_tape_library test
#
{
    my $tape_library_id = undef; # replace NULL with a proper value
    my $limit = undef; # replace NULL with a proper value
    my $offset = undef; # replace NULL with a proper value
    my $sort_by = undef; # replace NULL with a proper value
    my $id = undef; # replace NULL with a proper value
    my $pool_id = undef; # replace NULL with a proper value
    my $barcode = undef; # replace NULL with a proper value
    my $location = undef; # replace NULL with a proper value
    my $type = undef; # replace NULL with a proper value
    my $locked = undef; # replace NULL with a proper value
    my $scratch = undef; # replace NULL with a proper value
    my $cleaning = undef; # replace NULL with a proper value
    my $write_protect = undef; # replace NULL with a proper value
    my $mounted = undef; # replace NULL with a proper value
    my $ejected = undef; # replace NULL with a proper value
    my $known = undef; # replace NULL with a proper value
    my $mount_count = undef; # replace NULL with a proper value
    my $date_in = undef; # replace NULL with a proper value
    my $date_move = undef; # replace NULL with a proper value
    my $free = undef; # replace NULL with a proper value
    my $max = undef; # replace NULL with a proper value
    my $last_size_update = undef; # replace NULL with a proper value
    my $last_maintenance = undef; # replace NULL with a proper value
    my $last_repack = undef; # replace NULL with a proper value
    my $repack_status = undef; # replace NULL with a proper value
    my $hash = undef; # replace NULL with a proper value
    my $force_import_type = undef; # replace NULL with a proper value
    my $need_to_check = undef; # replace NULL with a proper value
    my $result = $api->index_tapes_by_tape_library(tape_library_id => $tape_library_id, limit => $limit, offset => $offset, sort_by => $sort_by, id => $id, pool_id => $pool_id, barcode => $barcode, location => $location, type => $type, locked => $locked, scratch => $scratch, cleaning => $cleaning, write_protect => $write_protect, mounted => $mounted, ejected => $ejected, known => $known, mount_count => $mount_count, date_in => $date_in, date_move => $date_move, free => $free, max => $max, last_size_update => $last_size_update, last_maintenance => $last_maintenance, last_repack => $last_repack, repack_status => $repack_status, hash => $hash, force_import_type => $force_import_type, need_to_check => $need_to_check);
}

#
# mount_status_tape test
#
{
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->mount_status_tape(tape_id => $tape_id);
}

#
# mount_status_tape_by_pool test
#
{
    my $pool_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->mount_status_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id);
}

#
# mount_status_tape_by_tape_library test
#
{
    my $tape_library_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->mount_status_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
}

#
# show_tape test
#
{
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape(tape_id => $tape_id);
}

#
# show_tape_by_pool test
#
{
    my $pool_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape_by_pool(pool_id => $pool_id, tape_id => $tape_id);
}

#
# show_tape_by_tape_library test
#
{
    my $tape_library_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
}

#
# show_tape_stat test
#
{
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape_stat(tape_id => $tape_id);
}

#
# show_tape_stat_by_pool test
#
{
    my $pool_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape_stat_by_pool(pool_id => $pool_id, tape_id => $tape_id);
}

#
# show_tape_stat_by_tape_library test
#
{
    my $tape_library_id = undef; # replace NULL with a proper value
    my $tape_id = undef; # replace NULL with a proper value
    my $result = $api->show_tape_stat_by_tape_library(tape_library_id => $tape_library_id, tape_id => $tape_id);
}


1;
