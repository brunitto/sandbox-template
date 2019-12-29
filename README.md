# SANDBOX-TEMPLATE

This is a sandbox template.

# Overview

A sandbox is a simple project that you can use to learn new software. A sandbox
has the following properties:

1. **Simple**: focus on a single software
2. **Local**: should run in your computer
3. **Automated**: no manual steps to create the sandbox
4. **Phoenix**: it might be destroyed and recreated without problems

Moreover, a sandbox might contain several scenarios, that represents specific
environment and setups, useful in the learning process.

# Requirements

1. VirtualBox 6
2. Vagrant 2
3. vagrant-vbguest

You might use any minor and/or patch version compatible between VirtualBox and
Vagrant.

# Scenarios

Within a sandbox, a scenario represents a software specific environment and
setup. A scenario should be isolated and cohese.

A scenario should be defined within a directory within the `scenarios`
directory.

# Provisioning

A sandbox should be provisioned using VirtualBox and Vagrant (using the Shell
provisioning). All you need to do to have a working sandbox is:

    cd /path/to/sandbox/scenarios/scenario
    vagrant up

All provisioning shell scripts should be kept in the `scripts` directory. These
scripts might be shared between scenarios.

All configuration files should be kept in the `files` directory. These files
might be shared between scenarios.

Use `generic/debian10` as the base box.

Use the scenario name as the hostname, for example `quickstart`. For multiple
hosts scenarios (clusters), append a numeric identifier, for example
`cluster-1`.

# Versioning

Use different branches to represent different software versions, so the sandbox
provisioning keep deterministic. Just use the software version as the branch's
name, for example, if you are creating an Apache Kafka 2.3.0 sandbox, keep this
under the `2.3.0` branch within the `kafka-sandbox` repository.

The `master` branch should "point" to the latest version.

# Issues

Report any issues at https://github.com/brunitto/sandbox-template/issues.

# Contribute

You are welcome to contribute at https://github.com/brunitto/sandbox-template.
