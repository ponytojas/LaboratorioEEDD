#include "MiNodoLista.hpp"

MiNodoLista::MiNodoLista(Cliente persAux, MiNodoLista *sig, MiNodoLista *ant) {
    siguiente = sig;
    anterior = ant;
    cliente = persAux;
}
