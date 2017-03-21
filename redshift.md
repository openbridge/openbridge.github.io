# Redshift Self-Service
Openbridge allows you to add your self-managed Redshift cluster as a storage location. There are a few things that need to be cared for to allow Openbridge to pipeline data to your cluster

- [Setting Up Redshift Databases, Schemas and Users](#setting-up-redshift-databases-schemas-and-users)
	- [Create Database](#create-database)
	- [Create User](#create-user)
	- [Create Schema](#create-schema)
	- [Pre-Built Redshift Configuration SQL File](#pre-built-redshift-configuration-sql-file)
- [Configure Amazon Redshift Firewall](#configure-amazon-redshift-firewall)

## Setting Up Redshift Databases, Schemas and Users

To create an account for Openbridge you must be an admin Redshift user with the correct permissions.

First, lets run a quick test to see if you can connect:

`psql -h *****.us-east-1.redshift.amazonaws.com -p 5439 -U username -d mydatabase \d`

Did you see a list of tables? Ok, we are off to a good start!

### Create Database
If you want to use a different database then the default one created when your cluster was configured, then you can run:

`create database if not exists {{mydatabase}};`

This will create a new database in your cluster for us to use.

To verify the database exists you can run:
`select datname, datdba, datconnlimit from pg_database_info where datdba > 1;`

This should show something like this:

```
 datname     | datdba | datconnlimit
-------------+--------+-------------
 admin       |    100 | UNLIMITED   
 reports     |    100 | 100         
 mydatabase  |    100 | 100  
```
### Create User
After connecting to your cluster and database, run this command to create the user:

`create user {{username}} with password '{{userpassword}}';`

To verify that the user was created you can run;

`select * from pg_user_info;`

You should see your new user listed:

```
usename   | usesysid | usecreatedb | usesuper | usecatupd | passwd
-----------+----------+-------------+----------+-----------+----------
rdsdb     |        1 | true        | true     | true      | ********       
adminuser |      100 | true        | true     | false     | ********  
username  |      102 | true        | false    | false     | ********       
```


We will assign the `CREATE` permissions for `{{username}}` on `{{mydatabase}}`. The database can be the one you created with the command above or the name of the database you created when you launched the cluster:

`grant create on database {{mydatabase}} to {{username}};`

### Create Schema
Next, let's make sure you have a schema for Openbridge to use in `{{mydatabase}}`:

`create schema if not exists openbridge authorization {{userpassword}};`

To validate the the user has the correct permissions;

`select nspname as schema, usename as owner from pg_namespace, pg_user where pg_namespace.nspowner = pg_user.usesysid and pg_user.usename ='{{username}}';`

You should see something like this:
```
name   |  owner
----------+----------
openbridge | username
(1 row)
```

If the schema already exists, then we want to make sure the correct permissions are granted to `{{username}}` on the schema:

`grant all on schema openbridge to {{username}};`

### Using Pre-Built Redshift Configuration File
To simplify the process of getting everything setup we have included a `SQL` file called `create-openbridge.sql`. You can find it here: [`sql/create-openbridge.sql`](.sql/create-openbridge.sql).

Using `psql` you connect to Redshift with your admin user you would run:

`psql -h *****.us-east-1.redshift.amazonaws.com -p 5439 -U username -d mydatabase -q -f create-openbridge.sql`

Note: You will be prompted for your password


## Configure Amazon Redshift Firewall
Depending on your Amazon settings, you will need to grant Openbridge access to your Redshift instance via security group. Please review the [Amazon Redshift Documentation ](http://docs.aws.amazon.com/redshift/latest/mgmt/managing-security-groups-console.html) which describes how to allow us access to your cluster.

```bash
52.54.227.22/32
```

If you are familiar with configuring security groups, here is a summary of steps:

* Navigate to the Redshift Management Console.
* Select `Clusters` from the navigation.
* Click on the cluster you want to connect (if you have more than one).
* Click on the name of the security group. You’ll see a list of authorized connections. Click the blue `Add Connection Type` button in the upper left.
* Select `CIDR/IP` from the `Connection Type` dropdown, and paste the address `52.54.227.22/32` in the `CIDR/IP to Authorize` field.
* Click the blue `Authorize` button.
