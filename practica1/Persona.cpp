
#include <stdio.h>
#include <ctime>
#include <iomanip>
#include <iostream>

#include "Persona.hpp"



using namespace std;


Persona::Persona(bool registro, int hora){
    registrado = registro;
    hInicioEntrada = hora;

    int numAux [8];
    unsigned int numero = 0;
    srand(time(NULL));
    for (int aux = 0; aux <= 7; aux++){  /*Generamos el número aleatorio que guardamos tanto en una variable*/
        numAux[aux] = rand() % 9 + 0;    /* Como en un array auxilar de enteros*/
        numero = 10 * numero + numAux[aux];
    }
    for (int aux = 0; aux <= 7; aux++ ){  /*Utilizando el array auxiliar de enteros, convertimos estos en caracteres*/
        documento[aux] = numAux[aux] + 48;    /*Recurriendo al código ASCI, donde del 0 al 9 se corresponden con los char del 48 al 57*/
    }
    char letras[23] = {'T', 'R', 'W', 'A', 'G', 'M', 'Y', 'F', 'P', 'D', 'X', 'B',    /*El array que contiene*/
                       'N', 'J', 'Z', 'S', 'Q', 'V', 'H', 'L', 'C', 'K', 'E'};                           /*Las letras en función del número*/
    /*Cada letra está en su posición respecto al modulo*/
    // cadena[9] = '\0'; //Añadimos el caracter de fin del array
    documento[8] = letras[numero % 23]; //Obtenemos la letra
    documento[9] = '\0';
}


void Persona::mostrarPersona(Persona p) {
    int hora = 0;
    cout << "\nDni: " << p.documento;
    cout << "\tUsario ";
    if (p.registrado)
        cout << "registrado";
    else {
        cout << "no registrado";
        hora += 2;
    }
    while (p.hInicioEntrada >= 60){
        p.hInicioEntrada = p.hInicioEntrada - 60;
        hora++;
    }

    cout << "\tHora Inicio Registro: ";
    if (hora < 10)
        cout << "0";
    cout << hora << ":";
    if (p.hInicioEntrada < 10)
        cout << "0";
    cout << p.hInicioEntrada <<endl;
}



Persona::~Persona() = default;
       
            