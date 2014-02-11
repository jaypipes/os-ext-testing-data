Data Repository Example for OpenStack External Testing
======================================================

This is an example Data Repository to use with OpenStack External Testing Platform Installer.

DO NOT fork this repository.

It is intended to be copied to some private location (possibly a
private GitHub repository, possibly somewhere else private in your organization). This
repository will contain private SSH keys and other sensitive information.

Instructions for Use
--------------------

1. Copy the repository somewhere private.

2. Copy the **private** SSH key that you submitted when you registered with the upstream
   OpenStack Infrastructure team into somewhere in this repo.

3. Open up `vars.sh` in an editor.

4. Change the value of the `$UPSTREAM_GERRIT_USER` shell
   variable to the Gerrit username you registered with the upstream OpenStack Infrastructure
   team [as detailed in these instructions](http://ci.openstack.org/third_party.html#requesting-a-service-account)

5. Change the value of the `$UPSTREAM_GERRIT_SSH_KEY_PATH` shell variable to the **relative** path
   of the private SSH key file you copied into the repository in step #2.

   For example, let's say you put your private SSH key file named `mygerritkey` into a directory called `ssh`
   within the repository you created in step #1, you would set the `$UPSTREAM_GERRIT_SSH_KEY_PATH` value to
   `ssh/mygerritkey`

6. Change the value of the `$PUBLISH_HOST` to the host (without https:// prefix) you will publish
   job artifacts to.

7. Examine the files in `etc/jenkins_jobs/config` and modify as you need. Refer to this blog post
   for more information.

8. Example the `etc/zuul/layout.yaml` file and ensure you set up each upstream project that your
   testing system intends to run Jenkins jobs for.
