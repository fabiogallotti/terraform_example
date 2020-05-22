# Example 4

Let's create a proper folder structure combining the previous examples.

We will move the backend section in the *main.tf* for the webserver-cluster.

Let's add a MySQL db. It will have his backend section.

To pass the db_password we will use Env Var:

* export TF_VAR_db_password="db_password"

How to use interpolation syntax (aws_db_instance.name.address) in this configuration?
We need to use **read-only** state.

We can retrieve the state of another folder using a data structure:

*data "terraform_remote_state" "db"*

and then using the information store with interpolation syntax.

You can do a similar thing if you want to import the bash script from an external file.

You have to import it as a data structure "template_file", and you can define which (and how) variable to export.

In this way we are addressing carefully the problems of isolation, locking and storage of the state.
