INCLUDE(${TEST_SOURCE}/../test_macros.cmake)

SET(NPROCS 4)

EXECUTE_PROCESS(COMMAND ${ELMERGRID_BIN} 1 2 mesh2D.grd -metis ${NPROCS} 4)

RUN_ELMERICE_TEST(WITH_MPI)