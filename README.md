# OBS Deploy tool

Simple tool to deploy OBS via zypper to our reference server

## Installation

Just run:

```ruby
gem 'obs_deploy'
```

## Usage



### To deploy

`obs_deploy deploy --user root --host localhost`

### To check which version is deployed

`obs_deploy deployed-version [--host <server>]`

### To check which package is available to install

`obs_deploy available-package [<product>] [<package-name>]`

### Deploy dry-run

`obs_deploy deploy --user root --host localhost --dry-run`

### Refresh Zypper repositories

`obs_deploy refresh-repositories`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Run the `bin/obs_deploy` on development:

On the checked out source, run the following:

`ruby -Ilib bin/obs_deploy -v`

## Hacking

If you want to add new command to the cli, please read the `dry-cli` documentation https://dry-rb.org/gems/dry-cli/0.4/. The commands are in the `obs_deploy/cli/commands` directory.

The commands are being sent via ssh and ssh is being called via `cheetah` https://github.com/openSUSE/cheetah. Please Read the `ssh.rb` file, specially the `SSH#run` method

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/vpereira/obs_deploy.
