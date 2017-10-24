

#ifndef PRACTICA1_NODOCOLA_HPP
#define PRACTICA1_NODOCOLA_HPP


#include <iostream>

#include "Persona.hpp"
using namespace std;

class NodoCola {

public:
    NodoCola(Persona p, NodoCola* sig = NULL);

    //~NodoCola();

private:
    Persona pers;
    NodoCola* siguiente;

    friend class Cola;
};

typedef  NodoCola* pnodo;


#endif //PRACTICA1_NODOCOLA_HPP
