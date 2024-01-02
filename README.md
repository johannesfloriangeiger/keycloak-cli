Keycloak CLI
=

This is a demo how the Keycloak CLI can be used to interact with Keycloak.

Setup
-

Checkout the project.

Run
-

```
docker-compose up --build
```

As soon as Keycloak and the CLI container are running, exec into the CLI container with

```
docker exec -it keycloak-cli /bin/sh
```

and you can run any Keycloak command against the Keycloak instance, e.g.

```
./kcadm.sh config credentials --server http://keycloak:8080 --realm master --user admin --password admin
```

followed by

```
./kcadm.sh get users
```

to read all users of the `master` realm.