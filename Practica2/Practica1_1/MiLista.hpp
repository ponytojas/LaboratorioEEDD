

#ifndef PRACTICA1_1_MILISTA_HPP
#define PRACTICA1_1_MILISTA_HPP


#include "MiNodoLista.hpp"
#include "Arbol.hpp"

class MiLista {

public:
    MiLista();
    void insertar(Cliente pers);
    void mostar();
    int getGenteEnLista();
    void popFirst();
    Cliente getPrimerCliente();

private:
    MiNodoLista* primero;
    MiNodoLista* ultimo;

    int genteEnLista;


};


#endif //PRACTICA1_1_MILISTA_HPP
