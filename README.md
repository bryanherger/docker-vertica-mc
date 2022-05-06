# docker-vertica-mc
Docker container for Vertica Management Console

How to use: obtain a vertica-console RPM (RHEL version) and place in packages folder.  Edit Dockerfile.centos to reference the exact file name.

The container will import /opt from the local file system to install and persist the MC install.  Edit testmc.sh and correct the --mount argument to the correct local path where you want to store MC.

Then run "bash ./testmc.sh" to build the image and run it.  MC will listen on port 35450 of the host unless you change it.
