IF(HAVE_UMFPACK OR HAVE_MUMPS)
  INCLUDE(test_macros)
  INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/fem/src)

  CONFIGURE_FILE(sif/1381-components-massive.sif sif/1381-components-massive.sif COPYONLY) 

  file(COPY ELMERSOLVER_STARTINFO DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")
  file(COPY sif/1381-circuits-components.definitions DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/sif")
  file(COPY 1381/mesh.boundary 1381/mesh.header 1381/mesh.nodes 1381/mesh.elements 1381/mesh.names DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/1381")
  file(COPY 1381/dat/1381.dat.names DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/1381/dat")

  ADD_ELMER_TEST(circuits2D_harmonic_massive LABELS 2D circuits harmonic mgdyn)
ENDIF()
