#
# Copyright 2016 SmartBear Software
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
#
package WWW::SwaggerClient::UserApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# create_user
#
# Create user
# 
# @param User $body Created user object (optional)
{
    my $params = {
    'body' => {
        data_type => 'User',
        description => 'Created user object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ create_user } = { 
    	summary => 'Create user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_users_with_array_input
#
# Creates list of users with given input array
# 
# @param ARRAY[User] $body List of user object (optional)
{
    my $params = {
    'body' => {
        data_type => 'ARRAY[User]',
        description => 'List of user object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ create_users_with_array_input } = { 
    	summary => 'Creates list of users with given input array',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_users_with_array_input {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user/createWithArray';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# create_users_with_list_input
#
# Creates list of users with given input array
# 
# @param ARRAY[User] $body List of user object (optional)
{
    my $params = {
    'body' => {
        data_type => 'ARRAY[User]',
        description => 'List of user object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ create_users_with_list_input } = { 
    	summary => 'Creates list of users with given input array',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub create_users_with_list_input {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user/createWithList';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# delete_user
#
# Delete user
# 
# @param string $username The name that needs to be deleted (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The name that needs to be deleted',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ delete_user } = { 
    	summary => 'Delete user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub delete_user {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling delete_user");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(test_http_basic )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# get_user_by_name
#
# Get user by user name
# 
# @param string $username The name that needs to be fetched. Use user1 for testing.  (required)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The name that needs to be fetched. Use user1 for testing. ',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ get_user_by_name } = { 
    	summary => 'Get user by user name',
        params => $params,
        returns => 'User',
        };
}
# @return User
#
sub get_user_by_name {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling get_user_by_name");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('User', $response);
    return $_response_object;
}

#
# login_user
#
# Logs user into the system
# 
# @param string $username The user name for login (optional)
# @param string $password The password for login in clear text (optional)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'The user name for login',
        required => '0',
    },
    'password' => {
        data_type => 'string',
        description => 'The password for login in clear text',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ login_user } = { 
    	summary => 'Logs user into the system',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub login_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user/login';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'username'}) {
        $query_params->{'username'} = $self->{api_client}->to_query_value($args{'username'});
    }

    # query params
    if ( exists $args{'password'}) {
        $query_params->{'password'} = $self->{api_client}->to_query_value($args{'password'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# logout_user
#
# Logs out current logged in user session
# 
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ logout_user } = { 
    	summary => 'Logs out current logged in user session',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub logout_user {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/user/logout';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# update_user
#
# Updated user
# 
# @param string $username name that need to be deleted (required)
# @param User $body Updated user object (optional)
{
    my $params = {
    'username' => {
        data_type => 'string',
        description => 'name that need to be deleted',
        required => '1',
    },
    'body' => {
        data_type => 'User',
        description => 'Updated user object',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ update_user } = { 
    	summary => 'Updated user',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub update_user {
    my ($self, %args) = @_;

    # verify the required parameter 'username' is set
    unless (exists $args{'username'}) {
      croak("Missing the required parameter 'username' when calling update_user");
    }

    # parse inputs
    my $_resource_path = '/user/{username}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/xml');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'username'}) {
        my $_base_variable = "{" . "username" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'username'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw()];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
