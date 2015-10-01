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
    {
        std::cout << "Default constructor of person." << std::endl;
    }

    template<typename Archive>
    void serialize(Archive& ar, unsigned int const)
    {
        //ar & m_name & m_age;
    }

    std::string m_name;
    int m_age;

public:
    void add_age()
    {
        m_age++;
    }

    int age() const
    {
        return m_age;
    }

    int& age()
    {
        return m_age;
    }

    std::string name()const
    {
        return m_name;
    }
    std::string& name()
    {
        return m_name;
    }
    person(std::string name, int age)
        : m_name(name), m_age(age)
    {}

    void info() const
    {
        std::cout << m_name << " current age is : " << m_age << "."; // << std::endl;
    }


};

BOOST_SERIALIZATION_SHARED_PTR(person)
BOOST_CLASS_TRACKING(person, boost::serialization::track_always)

namespace boost {
    namespace serialization {
        template<class Archive>
        inline void save_construct_data(Archive & ar, const person * ei, const BOOST_PFTO unsigned int file_version)
        {
            assert(ei);
            std::string _name = ei->name();
            int _age = ei->age();
            ar << _name << _age;
            //save(ar, ei->ProjectStart(), file_version);
            //save(ar, ei->ProjectEnd(), file_version);	// << ei->ProjectStart() << ei->ProjectEnd();
        }

        template<class Archive>
        inline void load_construct_data(Archive & ar, person * ei, const BOOST_PFTO unsigned int file_version)
        {

            std::string name_;
            int age_;

            ar >> name_ >> age_;

            ::new(ei)person(name_, age_);
        }

        template<class Archive>
        inline void save_construct_data(Archive & ar, const std::shared_ptr<person>& ei, const BOOST_PFTO unsigned int file_version)
        {
            assert(ei);
            ar << ei->name() << ei->age();
            //save(ar, ei->ProjectStart(), file_version);
            //save(ar, ei->ProjectEnd(), file_version);	// << ei->ProjectStart() << ei->ProjectEnd();
        }

        template<class Archive>
        inline void load_construct_data(Archive & ar, std::shared_ptr<person> ei, const BOOST_PFTO unsigned int file_version)
        {

            std::string name_;
            int age_;

            ar >> name_ >> age_;
            person *p = ei.get();
            ei = ::new(p)person(name_, age_);
        }
    }
}

#endif
