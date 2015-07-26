#ifndef EXAMPLE_SERVICE_HPP
#define EXAMPLE_SERVICE_HPP

#include "person.hpp"
#include "serialize_pointer.hpp"

#include <boost/shared_ptr.hpp>
#include <boost/weak_ptr.hpp>
#include <vector>
#include <iostream>

class service {
public:
    void pass_person(person p)
    {
        p.info();
        std::cout << "Server side object person." << std::endl;
    }

    void pass_foo(Foo &p)
    {
        p.info();
        std::cout << "Server side object Foo." << std::endl;
    }

    void pass_people(std::vector<person> p)
    {
        typedef std::vector<person>::iterator iterator;

        std::cout << "Get " << p.size() << " peoples" << std::endl;
        for(iterator iter = p.begin(); iter != p.end(); ++iter) {
            std::cout << "  ";
            iter->info();
        }
    }

    void pass_reference(person& r)
    {
        r.info();
        r.add_age();//r.m_age++;
    }

    void pass_pointer(person* p)
    {
        if(p) {
            p->info();
            p->add_age();//p->m_age++;
        }
    }

    void pass_shared_ptr(boost::shared_ptr<person> s)
    {
        if(s) {
            s->info();
            s->add_age();//s->m_age++;
        }
    }

    void pass_weak_ptr(boost::weak_ptr<person> w)
    {
        boost::shared_ptr<person> s = w.lock();
        if(s) {
            s->info();
            s->add_age();//s->m_age++;
        }
    }
};

#endif
