if (MIF_STATIC_LIBS)
    install (TARGETS ${PROJECT_LC} EXPORT ${PROJECT_LC}
             ARCHIVE DESTINATION lib
    )
endif()

if (MIF_SHARED_LIBS)
    install (TARGETS ${PROJECT_LC}${MIF_SHARED_LIB_SUFFIX} EXPORT ${PROJECT_LC}${MIF_SHARED_LIB_SUFFIX}
             LIBRARY DESTINATION lib
    )
endif()

install(DIRECTORY include/${PROJECT_LC} DESTINATION include)
