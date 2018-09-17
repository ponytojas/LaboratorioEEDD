

#ifndef PRACTICA1_1_NODOCOLA_HPP
#define PRACTICA1_1_NODOCOLA_HPP

#include "Cliente.hpp"


class NodoCola {
public:
    NodoCola (Cliente clienteAux, NodoCola* sig = NULL);


private:
    Cliente cliente;
    NodoCola* siguiente;

    friend class Cola;

};

typedef NodoCola* pnodoCola;


#endif //PRACTICA1_1_NODOCOLA_HPP
