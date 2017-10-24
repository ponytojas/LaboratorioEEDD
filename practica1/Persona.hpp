#ifndef PRACTICA1_PERSONA_HPP
#define PRACTICA1_PERSONA_HPP
#include <string>
using  namespace std;



class Persona {
public:
    Persona(){}; //constructor sin parametros
    Persona(bool registro, int hora);
    void mostrarPersona(Persona p);

    ~Persona();



private:
    int hInicioEntrada;
    int tiempoCompra;
    bool registrado;
    char documento [10];

};


#endif
