#ifndef EXAMPLE_REMOTE_SERVICE_HPP
#define EXAMPLE_REMOTE_SERVICE_HPP

#include "person.hpp"
#include "serialize_pointer.hpp"

#include <remote/idl.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/shared_ptr.hpp>
#include <memory>

#define REMOTE_CLASS													\
REMOTE_CLASS_BEGIN(remote_service)										\
	REMOTE_METHOD_M1(void, pass_person, person)							\
	REMOTE_METHOD_M1(void, pass_foo, Foo&)								\
	REMOTE_METHOD_M1(void, pass_people, std::vector<person>)			\
	REMOTE_METHOD_M1(void, pass_reference, person&)						\
	REMOTE_METHOD_M1(void, pass_pointer, person*)						\
	REMOTE_METHOD_M1(void, pass_shared_ptr, std::shared_ptr<person>)	\
	REMOTE_METHOD_M1(void, pass_weak_ptr, std::weak_ptr<person>)		\
REMOTE_CLASS_END
#include <remote/idl/class.hpp>

#define REMOTE_REGISTER_CLASS remote_service
#include <remote/idl/register_class.hpp>


#endif
