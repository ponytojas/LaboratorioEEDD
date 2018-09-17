#include "Arbol.hpp"
#include <cstring>
Arbol::Arbol(){
    genteEnArbol = 0;
    //tiempoTotalEstancia = 0;
    raiz = NULL;
}

void Arbol::insertar(Cliente persAux, pnodoArbol& ABB){

    if (ABB == NULL) {
        ABB = new NodoArbol(persAux);
        if(!genteEnArbol)
            raiz = new NodoArbol(persAux);;
        genteEnArbol++;
        return;
    }
    else if((strcmp(ABB->cliente.getDni(), persAux.getDni()) > 0))
        insertar(persAux, ABB->izquierda);
    else if((strcmp(ABB->cliente.getDni(), persAux.getDni()) < 0))
        insertar (persAux, ABB->derecha);

}

void Arbol::mostrar(int nodos, pnodoArbol &ABB) {
    if(ABB==NULL)
        return;
    mostrar(nodos+1, ABB->derecha);

    for(int i=0; i<nodos; i++)
        cout <<"       ";
    cout<< ABB->cliente.getDni() <<endl;

    mostrar(nodos+1,ABB->izquierda);
}

/* int Arbol::getNiveles(pnodoArbol &ABB, int niveles) {
    if (ABB->cliente.getDni())
        niveles++;
    if (!ABB->izquierda && !ABB->derecha)
        return niveles;
    else if (ABB->izquierda && ABB->derecha)
        return (niveles +  (getNiveles(ABB->derecha, 0) > getNiveles(ABB->izquierda, 0) ? getNiveles(ABB->derecha,0) : getNiveles(ABB->izquierda, 0)));
    else {
        if (ABB->izquierda)
            return niveles = niveles + getNiveles(ABB->izquierda, 0);
        else if (ABB->derecha)
            return niveles = niveles + getNiveles(ABB->derecha, 0);
    }
    return niveles;
}

void Arbol::mostrarVertical(pnodo &ABB, int niveles){
    pnodo aux = ABB;
    for (int i = 0; i < niveles; i++ )
        cout << "\t";
    cout << aux->numero << "     ";
    if (aux ->izquierda && aux->derecha){
        cout << endl;
        mostrarVertical(ABB->izquierda, (niveles - 1));
        cout <<  "     ";
        mostrarVertical(ABB->derecha, (niveles - 1));
    }
    else {
        if (aux->izquierda) {

            mostrarVertical(ABB->izquierda, (niveles - 1));
            cout << endl;
        }
        else if (aux->derecha) {
            for (int i = 0; i < niveles; i++ )
                cout << "\t\t";
            mostrarVertical(ABB->derecha, (niveles - 1));
            cout << endl;
        }
    }
}*/

bool Arbol::getGenteEnArbol() {
    if (genteEnArbol)
        return true;
    else
        return false;
}

void Arbol::preOrden(pnodoArbol& ABB) {
     if(ABB)
     {
          cout << ABB->cliente.getDni() <<" " << endl << endl;
          preOrden(ABB->izquierda);
          preOrden(ABB->derecha);
     }
}

void Arbol::enOrden(pnodoArbol& ABB) {
     if(ABB)
     {
          enOrden(ABB->izquierda);
          cout << ABB->cliente.getDni() << " " << endl << endl;
          enOrden(ABB->derecha);
     }
}

void Arbol::postOrden(pnodoArbol& ABB) {
     if(ABB)
     {
          postOrden(ABB->izquierda);
          postOrden(ABB->derecha);
          cout << ABB->cliente.getDni() << " " << endl << endl;
     }
}

void Arbol::buscar(pnodoArbol& ABB, char* numeroDNI) {
    if(ABB){
        if (strcmp(ABB->cliente.getDni(), numeroDNI) == 0) {
            ABB->cliente.mostrarDatos();
            ABB->cliente.mostrarHoraInicioCompra();
            ABB->cliente.mostrarHoraFinCompra();
            ABB->cliente.mostrarId();
        } else if (strcmp(ABB->cliente.getDni(), numeroDNI) > 0)
            buscar(ABB->izquierda,numeroDNI);
        else if ((strcmp(ABB->cliente.getDni(), numeroDNI) < 0))
            buscar(ABB->derecha,numeroDNI);
    }
}

void Arbol::reiniciarArbol(pnodoArbol& ABB){
    if (!ABB)
        return;
    reiniciarArbol(ABB->derecha);
    reiniciarArbol(ABB->izquierda);
    ABB = NULL;
}

void Arbol::reiniciarGenteArbol(){
    genteEnArbol = 0;
    raiz = NULL;
}

void Arbol::calcularTiempoMedio(pnodoArbol &ABB, Arbol abb){
    if (ABB){
        tiempoTotalEstancia += ABB->cliente.estanciaServidor();
        calcularTiempoMedio(ABB->izquierda, abb);
        calcularTiempoMedio(ABB->derecha, abb);
        if (strcmp(ABB->cliente.getDni(), this->raiz->cliente.getDni()) == 0){
            int tiempoMedioEstancia = 0;
            tiempoMedioEstancia = (tiempoTotalEstancia/this->genteEnArbol);
            cout << "\n\tEl tiempo medio de estancia en el servidor es: " << tiempoMedioEstancia;
        }
        return; 
    }
}
    