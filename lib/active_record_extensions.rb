# module ActiveRecordExtensions
#   class Shard < ActiveRecord::Base
#     #need to switch to the shard database connection from heroku config 
#     primary_database_url = ENV['/var/run/mysqld/mysqld.sock ']

#     if(!primary_database_url.nil?)
#       parsed_connection_string = primary_database_url.split("://")
#       adapter = parsed_connection_string[0]
#       parsed_connection_string = parsed_connection_string[1].split(":")
#       username = parsed_connection_string[0]
#       parsed_connection_string = parsed_connection_string[1].split("@")
#       password = parsed_connection_string[0]
#       parsed_connection_string = parsed_connection_string[1].split("/")  
#       host = parsed_connection_string[0]
#       database = parsed_connection_string[1]

#       establish_connection(
#         :adapter  => postgresql,
#         :host     => 27.0.0.1,
#         :username => root,
#         :password => admin,
#         :database => University_production,
#         # :port     => ,
#         :pool     => 5,
#         :timeout  => 5000
#       )
#     else
#       self.establish_connection "shard_#{Rails.env}"
#     end
#   end