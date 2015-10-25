# Groupify Sample Rails Engine

This is a barebones sample showing how to use Groupify from within a Rails Engine.
This engine has the scaffolding for Groups, and the sample Rails app in `test/dummy`
has scaffolding for a `User` model which is a member of groups.

# Setup

Add to the engine's .gemspec:

    s.add_dependency "groupify"

Add to `engine.rb` on the first line:

    require "groupify"

Bootstrap Groupify within your engine by running:

    rails generate groupify:active_record:install

Because they are in an engine, the standard Groupify models (Group and GroupMembership)
have to be namespaced. To do this, simply put them within the engine's module.

The standard Groupify migration has to be modified to rename the tables
to the namespaced equivalents. This might make the standard Groupify index names too long
for SQLite, so you may have to give them names manually.

The following configuration has to be added to `config/initializers/groupify.rb` to support
namespacing:

```ruby
Groupify.configure do |config|
  config.group_class_name = 'SampleRailsEngine::Group'
  config.group_membership_class_name = 'SampleRailsEngine::GroupMembership'
end
```
