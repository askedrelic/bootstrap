# askedrelic-bootstrap

Public cookbook of my server bootstrapping code.

Requirements
============

Chef 0.12.0 or higher required (for Chef environment use).

Cookbooks
---------

The following cookbooks are dependencies:

Recipes
=======


Attributes
==========

Testing
========
1. kitchen list (verify no instances are running)
2. kitchen create (boot a DI instance)
3. kitchen converge (run chef on the instance)
4. kitchen login (manually verify the server)
5. write tests!
6. kitchen verify (to run the tests)
