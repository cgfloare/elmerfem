IF(HAVE_UMFPACK OR HAVE_MUMPS)
  INCLUDE(test_macros)
  INCLUDE_DIRECTORIES(${CMAKE_BINARY_DIR}/fem/src)

  CONFIGURE_FILE(sif/1962.sif sif/1962.sif COPYONLY) 

  file(COPY ELMERSOLVER_STARTINFO DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/")
  file(COPY sif/1962-circuits.definitions DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/sif")
  file(COPY 1962/mesh.boundary 1962/mesh.header 1962/mesh.nodes 1962/mesh.elements 1962/mesh.names DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/1962")

  ADD_ELMER_TEST(circuits_harmonic_massive LABELS circuits harmonic 3D mgdyn whitney)
ENDIF()
