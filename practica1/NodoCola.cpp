
#include "NodoCola.hpp"

NodoCola::NodoCola(Persona p, NodoCola *sig) {
    pers = p;
    siguiente = sig;
}
