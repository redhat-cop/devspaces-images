# Local Dev Setup

These instructions are for anyone wanting to contribute this repo using a local deployment of Dev Spaces. These instructions will get your cluster set up

1. Provision a new OpenShift cluster either in lab equipment or using [OpenShift Local](https://developers.redhat.com/products/openshift-local/overview) on your local machine.
1. Create a [GitHub Oauth App](https://github.com/settings/applications/new) for DevSpaces, and export the client id and secret to your environment.
    ```bash
    export GITHUB_OAUTH_CLIENT_ID=<client id>
    export GITHUB_OAUTH_CLIENT_SECRET=<client secret>
    ```
1. Apply configs to install Dev Spaces and Pelorus
```bash
oc apply -f local-dev/namespaces.yaml
oc apply -f local-dev/devspaces-operator.yaml
envsubst < local-dev/github-oauth-config-secret.yaml | oc apply -f -
oc apply -f local-dev/devspaces-cr.yaml
```

Now log in as a a developer user and do the following:

1. Create a couple environment variables to specify your git author name and email.
    ```bash
    export USER_NAME=<Full Name>
    export USER_EMAIL=<email>
    ```
1. Then apply this to your devspaces namespace
    ```bash
    envsubst < local-dev/gitconfig-cm.yaml | oc apply -f -
    ```