
#include "Cola.hpp"
#include <unistd.h>


Cola::Cola() {
    primero = NULL;
    ultimo = NULL;
}

void Cola::insertar(Persona p) {
    pnodo nuevo;
    nuevo = new NodoCola(p, ultimo);
    if (ultimo)
        ultimo -> siguiente = nuevo;
    ultimo = nuevo;
    if(!primero)
        primero = nuevo;
}

void Cola::mostrar(Cola cola) {
    pnodo aux = primero;
    Persona paux;
    while (aux != ultimo){
        paux = aux->pers;
        paux.mostrarPersona(paux);
        aux = aux -> siguiente;
        usleep(1000000);
    }
}

void Cola::eliminar(){
    pnodo aux = primero;
    Persona paux;
    if (!aux){
        cout << "No hay elementos que borrar" << endl;
    }else{
        primero = aux -> siguiente;
        paux = aux->pers;
        delete aux;
        if(!primero)
            ultimo = NULL;
    }
}