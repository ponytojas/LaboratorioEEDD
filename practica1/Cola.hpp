

#ifndef PRACTICA1_COLA_HPP
#define PRACTICA1_COLA_HPP

#include "Persona.hpp"
#include "NodoCola.hpp"

class Cola {

public:
    Cola();

    void insertar(Persona p);
    void eliminar();
    void mostrar(Cola cola);

private:
    pnodo primero, ultimo;
    Persona* ppersona;

    friend class Persona;

};


#endif //PRACTICA1_COLA_HPP
