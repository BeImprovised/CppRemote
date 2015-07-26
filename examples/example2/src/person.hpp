#ifndef EXAMPLE_PERSON_HPP
#define EXAMPLE_PERSON_HPP

#include <string>
#include <iostream>
//#include <boost/archive/text_iarchive.hpp>
//#include <boost/archive/text_oarchive.hpp>

#include <remote/bindings/text_serializer.hpp>

class person {
private:
    friend boost::serialization::access;

    person()
        : m_age(0)
    {}

    template<typename Archive>
    void serialize(Archive& ar, unsigned int const)
    {
        ar & m_name & m_age;
    }

    std::string m_name;
    int m_age;

public:
    void add_age()
    {
        m_age++;
    }

    person(std::string name, int age)
        : m_name(name), m_age(age)
    {}

    void info() const
    {
        std::cout << m_name << " (" << m_age << ")" << std::endl;
    }


};

#endif
