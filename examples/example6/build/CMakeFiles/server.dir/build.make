# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /_home/beunprepared/working/RPC/CppRemote/examples/example6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /_home/beunprepared/working/RPC/CppRemote/examples/example6/build

# Include any dependencies generated for this target.
include CMakeFiles/server.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/server.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/server.dir/flags.make

CMakeFiles/server.dir/src/remote_reader.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/remote_reader.cpp.o: ../src/remote_reader.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /_home/beunprepared/working/RPC/CppRemote/examples/example6/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/server.dir/src/remote_reader.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/remote_reader.cpp.o -c /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_reader.cpp

CMakeFiles/server.dir/src/remote_reader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/remote_reader.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_reader.cpp > CMakeFiles/server.dir/src/remote_reader.cpp.i

CMakeFiles/server.dir/src/remote_reader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/remote_reader.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_reader.cpp -o CMakeFiles/server.dir/src/remote_reader.cpp.s

CMakeFiles/server.dir/src/remote_reader.cpp.o.requires:
.PHONY : CMakeFiles/server.dir/src/remote_reader.cpp.o.requires

CMakeFiles/server.dir/src/remote_reader.cpp.o.provides: CMakeFiles/server.dir/src/remote_reader.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/remote_reader.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/src/remote_reader.cpp.o.provides

CMakeFiles/server.dir/src/remote_reader.cpp.o.provides.build: CMakeFiles/server.dir/src/remote_reader.cpp.o

CMakeFiles/server.dir/src/remote_topic.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/remote_topic.cpp.o: ../src/remote_topic.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /_home/beunprepared/working/RPC/CppRemote/examples/example6/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/server.dir/src/remote_topic.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/remote_topic.cpp.o -c /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_topic.cpp

CMakeFiles/server.dir/src/remote_topic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/remote_topic.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_topic.cpp > CMakeFiles/server.dir/src/remote_topic.cpp.i

CMakeFiles/server.dir/src/remote_topic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/remote_topic.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/remote_topic.cpp -o CMakeFiles/server.dir/src/remote_topic.cpp.s

CMakeFiles/server.dir/src/remote_topic.cpp.o.requires:
.PHONY : CMakeFiles/server.dir/src/remote_topic.cpp.o.requires

CMakeFiles/server.dir/src/remote_topic.cpp.o.provides: CMakeFiles/server.dir/src/remote_topic.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/remote_topic.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/src/remote_topic.cpp.o.provides

CMakeFiles/server.dir/src/remote_topic.cpp.o.provides.build: CMakeFiles/server.dir/src/remote_topic.cpp.o

CMakeFiles/server.dir/src/server.cpp.o: CMakeFiles/server.dir/flags.make
CMakeFiles/server.dir/src/server.cpp.o: ../src/server.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /_home/beunprepared/working/RPC/CppRemote/examples/example6/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/server.dir/src/server.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/server.dir/src/server.cpp.o -c /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/server.cpp

CMakeFiles/server.dir/src/server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/server.dir/src/server.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/server.cpp > CMakeFiles/server.dir/src/server.cpp.i

CMakeFiles/server.dir/src/server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/server.dir/src/server.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /_home/beunprepared/working/RPC/CppRemote/examples/example6/src/server.cpp -o CMakeFiles/server.dir/src/server.cpp.s

CMakeFiles/server.dir/src/server.cpp.o.requires:
.PHONY : CMakeFiles/server.dir/src/server.cpp.o.requires

CMakeFiles/server.dir/src/server.cpp.o.provides: CMakeFiles/server.dir/src/server.cpp.o.requires
	$(MAKE) -f CMakeFiles/server.dir/build.make CMakeFiles/server.dir/src/server.cpp.o.provides.build
.PHONY : CMakeFiles/server.dir/src/server.cpp.o.provides

CMakeFiles/server.dir/src/server.cpp.o.provides.build: CMakeFiles/server.dir/src/server.cpp.o

# Object files for target server
server_OBJECTS = \
"CMakeFiles/server.dir/src/remote_reader.cpp.o" \
"CMakeFiles/server.dir/src/remote_topic.cpp.o" \
"CMakeFiles/server.dir/src/server.cpp.o"

# External object files for target server
server_EXTERNAL_OBJECTS =

../bin/server: CMakeFiles/server.dir/src/remote_reader.cpp.o
../bin/server: CMakeFiles/server.dir/src/remote_topic.cpp.o
../bin/server: CMakeFiles/server.dir/src/server.cpp.o
../bin/server: CMakeFiles/server.dir/build.make
../bin/server: /_home/beunprepared/working/RPC/CppRemote/lib/libremote.a
../bin/server: /usr/lib64/libboost_serialization.a
../bin/server: /usr/lib64/libboost_thread.a
../bin/server: /usr/lib64/libboost_system.a
../bin/server: /usr/lib64/libboost_chrono.a
../bin/server: CMakeFiles/server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/server"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/server.dir/build: ../bin/server
.PHONY : CMakeFiles/server.dir/build

CMakeFiles/server.dir/requires: CMakeFiles/server.dir/src/remote_reader.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/src/remote_topic.cpp.o.requires
CMakeFiles/server.dir/requires: CMakeFiles/server.dir/src/server.cpp.o.requires
.PHONY : CMakeFiles/server.dir/requires

CMakeFiles/server.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/server.dir/cmake_clean.cmake
.PHONY : CMakeFiles/server.dir/clean

CMakeFiles/server.dir/depend:
	cd /_home/beunprepared/working/RPC/CppRemote/examples/example6/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /_home/beunprepared/working/RPC/CppRemote/examples/example6 /_home/beunprepared/working/RPC/CppRemote/examples/example6 /_home/beunprepared/working/RPC/CppRemote/examples/example6/build /_home/beunprepared/working/RPC/CppRemote/examples/example6/build /_home/beunprepared/working/RPC/CppRemote/examples/example6/build/CMakeFiles/server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/server.dir/depend

