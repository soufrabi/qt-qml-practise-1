cmake_minimum_required(VERSION 3.16)

project(tst3 VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)
# https://stackoverflow.com/questions/76143135/image-from-resource-is-not-loading-in-qt-qml
########add this line to compile qrc file to rcc
set(CMAKE_AUTORCC ON)
########

find_package(Qt6 6.4 REQUIRED COMPONENTS Quick)

qt_standard_project_setup()

qt_add_executable(apptst3
    main.cpp
    resource.qrc
)

qt_add_qml_module(apptst3
    URI tst3
    VERSION 1.0
    QML_FILES Main.qml
    RESOURCES resource.qrc
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(apptst3 PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.apptst3
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(apptst3
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS apptst3
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
