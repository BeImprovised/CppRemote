#ifndef SERIALIZE_POINTER_HPP
#define SERIALIZE_POINTER_HPP

#include <vector>
#include <memory>
//#include <boost/archive/text_oarchive.hpp>
//#include <boost/archive/text_iarchive.hpp>
#include <boost/serialization/vector.hpp>
#include <boost/serialization/shared_ptr.hpp>
#include <boost/serialization/scoped_ptr.hpp>
#include <boost/shared_ptr.hpp>
#include <iostream>
#include <sstream>
//#include <remote/archive/text_iarchive.hpp>
//#include <remote/archive/text_oarchive.hpp>

#include <remote/bindings/text_serializer.hpp>

struct Foo {
private:
    friend boost::serialization::access;
    struct Bar {
        std::shared_ptr < std::vector<int> >	//boost::shared_ptr< std::vector<int> >
        data; // Must point to Foo::data

        Bar(
            std::shared_ptr< std::vector<int> >	//boost::shared_ptr< std::vector<int> >
            d
        ) : data(d) { }

        template<class Archive>
        void serialize(Archive & ar, const unsigned int version)
        {
            // ** note that this is empty **
        }
    };

    std::shared_ptr < std::vector<int> >	//boost::shared_ptr< std::vector<int> >
    data;
    //std::vector<Bar> elements;

    template<class Archive>
    friend inline void boost::serialization::save_construct_data(
        Archive & ar, const Foo * foo, const unsigned int file_version
    )
    {
        //ar << foo->data;// << foo->elements;
        std::cout << "save_construct_data" << std::endl;
        for (std::vector<int>::size_type i = 0; i < 10; i++) {
            ar << (*foo->data)[i];  // this don't break the private property / attribute of "data", but modify the class definition
        }
    }

    template<class Archive>
    friend inline void boost::serialization::load_construct_data(
        Archive & ar, Foo * foo, const unsigned int file_version
    )
    {
        std::cout << "load_construct_data" << std::endl;
        std::shared_ptr < std::vector<int> >	//boost::shared_ptr< std::vector<int> >
        data = std::shared_ptr < std::vector<int> >(new  std::vector<int> ());
        //std::vector<Foo::Bar> elements;

        //ar >> data;// >> elements;
        for (std::vector<int>::size_type i = 0; i < 10; i++) {
            int j = 0;
            ar >> j;
            data->push_back(j);
        }
        ::new(foo)Foo(data
                      //, elements
                     );
    }

    Foo() : data(new std::vector<int>())
    {
        std::cerr << "Running default constructor of Foo." << std::endl;
        data->push_back(1);
        data->push_back(2);
        data->push_back(3);
        data->push_back(4);
        data->push_back(5);
        data->push_back(1);
        data->push_back(2);
        data->push_back(3);
        data->push_back(4);
        data->push_back(5);
        //elements.push_back(Bar(data));
        //elements.push_back(Bar(data));
        //elements.push_back(Bar(data));
    }

    template<class Archive>
    void serialize(Archive & ar, const unsigned int version)
    {
        // ** note that this is empty **
    }
public:

    Foo(
        std::shared_ptr< std::vector<int> >	//boost::shared_ptr< std::vector<int> >
        const & data_
        //, std::vector<Bar> const & elements_
    )
        :
        data(data_)
        //, elements(elements_)
    {
        std::cout << "Cheap construction of Foo" << std::endl;
    }

    //Foo(
    //	remote::archive::text_iarchive t	//boost::archive::text_iarchive
    //	)
    //{

    //}

    std::shared_ptr < std::vector<int> > get_data() const
    {
        return data;
    }

    void info() const
    {
        //for (auto & e : elements)    // std::vector<Bar> elements;
        //{
        if (data) {
            int i = 0;
            for (auto & d :
                    *data	//*e.data
                ) {
                std::cout << "Foo data element " << i++ << " = (" << d << ")" << std::endl;
            }
        }
        //}

    }
};

namespace boost {
    namespace serialization {

//        template<class Archive>
//        inline
//        void save_construct_data(
//            Archive & ar, const Foo * foo, const unsigned int file_version
//        )
//        {
//            //ar << foo->data;// << foo->elements;
//            for (std::vector<int>::size_type i = 0; i < 10; i++) {
//                ar << (*foo->get_data())[i];
//            }
//        }

//        template<class Archive>
//        inline void load_construct_data(
//            Archive & ar, Foo * foo, const unsigned int file_version
//        )
//        {
//            std::shared_ptr < std::vector<int> >	//boost::shared_ptr< std::vector<int> >
//            data = std::shared_ptr < std::vector<int> >(new  std::vector<int> ());
//            //std::vector<Foo::Bar> elements;
//
//            //ar >> data;// >> elements;
//            for (std::vector<int>::size_type i = 0; i < 10; i++) {
//                int j = 0;
//                ar >> j;
//                data->push_back(j);
//            }
//            ::new(foo)Foo(data
//                          //, elements
//                         );
//        }

        template<class Archive>
        inline void save_construct_data(
            Archive & ar, const Foo::Bar * bar, const unsigned int file_version
        )
        {
            ar << bar->data;
        }

        template<class Archive>
        inline void load_construct_data(
            Archive & ar, Foo::Bar * bar, const unsigned int file_version
        )
        {
            std::shared_ptr < std::vector<int> >	//boost::shared_ptr< std::vector<int> >
            data;

            ar >> data;

            ::new(bar)Foo::Bar(data);
        }

    }
}


#endif // SERIALIZE_POINTER_HPP_INCLUDED
