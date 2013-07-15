Erlang Demo APP
===============

Simple dummy application that serves as a demo for OpenShift


Issues
======

Openshift is a bit stupid when it comes to deployments: it normally just grabs whatever you pushed to Git, but Erlang code needs to be compiled. For the Java projects they seem to put a ROOT.war in the project. JBOSS seems to include a feature called DeploymentScanner which rechecks if the war file is complete.
Few possible solutions:
 * in the setup script we actually compile the source (requires erlang + rebar + whatever else) to be pre-installed on the system (ugly)
 * in the setup script download the build artifacts from central storage and install it. When do we trigger this? Must have proper workflow.
 * just commit the Erlang release to git repo. Very ugly, but fine for testing

