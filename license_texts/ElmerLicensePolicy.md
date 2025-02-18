Elmer licensing policy
======================

Elmer is a finite element code published under open source. It uses both the GPL (GNU General Public License,
v. 2.1) and LGPL license (GNU Lesser General Public License, v. 2.0).

Elmer has been mainly developed at CSC - IT Center for Science, Finland.
However, there have been numerous contributions from other organizations and developers as well,
and the project is open for new contributions. 

This is a short description of the licensing policy of Elmer suite from practical point of view. It applies to
the use, modification and contribution of the code. This is a laymans description of the terms and is in no
way legally binding, or does not add anything to the existing license terms. 


Licences used
-------------
The code under LGPL license include the ElmerSolver main library (libelmersolver, codewise /fem/src/*.F90),
as well as the libraries matc and fhutiter. Some physical modules are also available under LGPL. ElmerSolver
library also depends on iso_varying_string that is already published under LGPL. 

The parts of Elmer project still under the more restrictive GPL license include ElmerGUI, ElmerGrid, 
and most of the existing physical modules a.k.a. solvers of Elmer (codewise /fem/src/modules/*).

Upon building or running ElmerSolver may also utilize other libraries that are compatible with LGPL. These include Umfpack
(LGPL up to version 5.1.), Hypre (LGPL) and (P)Arpack (Free BSD). Note that if you build Elmer utilizing some more
limiting optional libraries you might not be able to use modules that have been distributed in a non-free fashion.


Using Elmer
-----------
If you’re just using Elmer then the open source licenses do not set any limitations for your work. However, if
linking other code with Elmer you should not combine viral licenses (e.g. GPL) and proprierity code.


Modifying Elmer
---------------
Everybody has to freedom to modify the code for their own needs. However, if the modified code is distributed it must
be done under the very same license than the original code was under i.e. GPL modules stay under GPL even if modified by
the user. 


Contributing to Elmer
---------------------
Elmer project accepts contributions. If you want to contribute non-trivial contributions to the ElmerSolver library
or to the modules the you may sign an Contributor License Agreement (CLA) that grants certain rights to the main developer
of the code. The CA is based on Apache Contributor License Agreement widely accepted by the community.

Some parts of the code is more relaxed when it comes to contributing. To be more specific, modules under "elmerice" and
"contrib" do not result to the need to sign a CA.  

Contact
-------
If you have further questions on the licensing of Elmer in your work or want to contribute to Elmer, please contact
elmeradm(at)csc.fi for more details.
