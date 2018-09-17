
#include "NodoCola.hpp"

NodoCola::NodoCola(Cliente clienteAux, NodoCola *sig) {
    siguiente = sig;
    cliente = clienteAux;
}
