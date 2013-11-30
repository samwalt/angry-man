# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AiderServer.create([{name: 'Jira', host: '10.200.188.105', port: '8075'},
                    {name: 'Bamboo', host: '10.200.188.105', port: '8085'},
                    {name: 'Stash', host: '10.200.188.105', port: '7990'},
                    {name: 'Crucible', host: '10.200.188.105', port: '8060'}])


