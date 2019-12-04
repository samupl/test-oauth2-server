# Test OAuth2 Server

A simple and ready to use OAuth2 Server that can be used for local development.

The intention is to have a locally running, RFC6749 (OAuth 2.0) compatible 
provider, in case you need to write an application that requires such service.

Basically this project is just a simple django app using 
[Django OAuth Toolkit](https://django-oauth-toolkit.readthedocs.io/en/latest/),
only set up in a easy-to-use docker container.

For documentation about the actual OAuth2 functionality the project provides, 
please visit [Django OAuth Toolkit documentation](https://django-oauth-toolkit.readthedocs.io/en/latest/).

## Running

Simply invoke:

```bash
docker-compose up
```

The provider should start and be available at http://127.0.0.1:8880/

Upon startup, an admin user will be created, alongside with your first OAuth2 
application. The only configuration that's really required is the whitelist of
redirect URIs. The instructions will be printed to the console.

## Endpoints

The provider is very simple and limited in the amount of endpoints it provides.

### Oauth2 base endpoints

| URL                                  | Description                          |
|--------------------------------------|:------------------------------------:|
| http://127.0.0.1:8880/o/authorize/   | OAuth2 authorization initialization  |
| http://127.0.0.1:8880/o/token/       | OAuth2 token retrieval               |
| http://127.0.0.1:8880/o/revoke_token/| OAuth2 token revoke                  |
| http://127.0.0.1:8880/o/introspect/  | OAuth2 token introspect              |
