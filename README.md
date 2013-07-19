Erlang Demo APP
===============

Simple dummy application that serves as a demo for OpenShift


Issues
======

OpenShift has two approaches to building in response to pushing to the OpenShift git repo:
1. the default flow, which executes some scripts locally, but stops the application
2. the custom-builder-flow, which is currently using Jenkins + Jenkins-client

The 2nd approach is better, we will persue this.

