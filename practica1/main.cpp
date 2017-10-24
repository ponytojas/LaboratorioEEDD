#include <stdio.h>
#include <ctime>
#include <iostream>
#include <iomanip>
#include <unistd.h>

#include "Persona.hpp"
#include "Cola.hpp"

using namespace std;

int main(int argc, char **argv)
{
    char opcion;
    bool vipGenerados, noVipGenerados = false;
    Cola cola1;
    Cola cola2;
    int vips = 0;
    int novips = 0;
    int hora = 0;
    int hora2 = 0;

    srand(time(NULL));

    do{



        cout << "\n\t-----------------------------------------------\n";
        cout << "\t                      MENU                         ";
        cout << "\n\t-----------------------------------------------\n";



        cout << "\tNumero de clientes VIP: " << vips
             << "\n\tNumero de clientes no registrados: " << novips  << endl << "\n\n";


        cout << "\tA. Generar solicitudes de entradas de los clientes VIP\n\n";
        cout << "\tB. Mostrar la cola de solicitudes en espera de clientes VIP\n\n";
        cout << "\tC. Borrar la cola de solicitudes en espera de clientes VIP\n\n";
        cout << "\tD. Generar solicitudes de entradas de los cleintes no registrados\n\n";
        cout << "\tE. Mostrar la cola de solicitudes en espera de clientes no registrados\n\n";
        cout << "\tF. Borrar la cola de solicitudes en espera de clientes no registrados\n\n";
        cout << "\tG. Simular el proceso de compra de entradas de los clientes VIP\n\n";
        cout << "\tI. Simular el proceso de compra de entradas de clientes no registrados\n\n";
        cout << "\tJ. Reiniciar el programa\n\n\n\n";

        cout << "\tK. Crear un arbol binario de busqueda ordenado por DNI\n\n";
        cout << "\tL. Buscar un cliente en el ABB, dado su DNI, y ver sus datos\n\n";
        cout << "\tM. Mostrar el ABB en preorden \n\n";
        cout << "\tN. Mostrar el ABB en postorde\n\n";
        cout << "\tO. Mostrar el ABB en inorden\n\n";
        cout << "\tP. Dibujar el ABB\n\n\n\n";

        cout << "\tS. Salir del programa \n\n\n\n";

        cout << "\tIndique la opcion deseada: ";

        cin >> opcion;
        opcion = toupper(opcion);

        switch(opcion){
            case 'A': {
                
                uint espera = 0;
                for (int i = 0; i <= 14; i++) {
                    srand(time(NULL));
                    Persona persona(true, hora);
                    espera = rand() % 5 + 0;
                    hora = hora + espera;
                    usleep(1000000);
                    cola1.insertar(persona);
                    vips++;
                      
                    
                }vipGenerados = true;
                break;
            }
            case 'B':{
                if (!vipGenerados){
                    cout << "\tNo hay elementos que mostrar" << endl;
                    usleep(1000000);

                    break;
                }else{
                    cola1.mostrar(cola1);
                    break;
                }

            }
            case 'C':{
                if(!vipGenerados)
                    cout << "\tNo hay elementos a borrar" << endl;
                else{
                    cout << "\tSe borrarán todas las solicitudes de la cola de registrados"<<endl;
                     for (int i = 0; i <= vips-1; i++){
                        cola1.eliminar();
                    }
                    vips = 0;
                    vipGenerados = false;
                    cout << "\tSe han borrado todas las solicitudes"<<endl;   
                }
                usleep(1000000);
            break;
                }
            
            case 'D': {
                
                uint espera = 0;
                for (int i = 0; i <= 24; i++) {
                    srand(time(NULL));
                    Persona persona(false, hora2);
                    espera = rand() % 5 + 0;
                    hora2 = hora2 + espera;
                    usleep(1000000);
                    cola2.insertar(persona);
                    novips++;
                }noVipGenerados = true;
            
                break;
            }
            case 'E':{
                if (!noVipGenerados){
                    cout << "\tNo hay elementos que mostrar" << endl;
                    usleep(1000000);

                    break;
                }else{
                    cola2.mostrar(cola2);
                    break;
                }

            }
            case 'F': {
              if(!noVipGenerados)
                    cout << "\tNo hay elementos a borrar" << endl;
                else{
                    cout << "\tSe borrarán todas las solicitudes de la cola de registrados";
                     for (int i = 0; i <= novips-1; i++){
                        cola1.eliminar();
                    }
                    novips = 0;
                    noVipGenerados = false;
                    cout << "\tSe han borrado todas las solicitudes" << endl;
                }
                usleep(1000000);
                break;
            }
        }
    }while(opcion != 'S');
    return 0;
}
