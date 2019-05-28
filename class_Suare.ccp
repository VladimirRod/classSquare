#include <stdio.h>
#include <stdlib.h>
#include <iomanip>
#include <fstream>
#include <iostream>
#include <conio.h>
#include <cstdlib>
using namespace std;
class Square
{
private:
    int x; //координата x левого угла квадрата
    int y; //координата y левого угла квадрата
    int a; //сторона квадрата
    
public: 
    Square() // конструктор без параметров
    {
        x = 0;
        y = 2;
        a = 2;
    }
    Square(int x1, int y1, int a1) // конструктор с тремя параметрами
    {
        x = x1;
        y = y1;
        a = a1;
    }
    void vvodCoor() // инициализация полей
    {
         
       
       cout << "\nВведите координаты левого верхнего угла квадрата (x,y) и сторону квадрата a\n";
       cout << "x: ";     cin >> x;
       cout << "y: ";    cin >> y;
       cout << "a: ";  cin >> a;
       cout << "Новые значения координат ("<<x<<","<<y<<") и стороны "<<a;
       
    }
    void Coord()
    {
        cout <<"Координаты левого нижнего угла квадрата:"<< x,y-a;
        cout<<"\n";
        cout <<"Координаты левого верхнего угла квадрата:"<< x,y;
        cout<<"\n";
        cout <<"Координаты правого верхнего угла квадрата:"<< x+a,y;
        cout<<"\n";
        cout <<"Координаты правого нижнего угла квадрата:"<< x+a,y-a;
    }
    void changeLenght() //изменение длины стороны квадрата
    {
        
        cout<<"Введите новое значение стороны "; cin >>a;
        cout<<"Новое значение стороны "<<a;
    }
    void Perimetr()
    {
        cout <<"Периметр квадрата равен: "<<4*a;
    }
    void Area()
    {
        cout <<"Площадь квадрата равна: "<<a*a;
    }
    void Coor90()
    {
        cout <<"Координаты левого нижнего угла квадрата при повороте на 90 градусов:"<<x+a,y-a;
        cout<<"\n";
        cout <<"Координаты левого верхнего угла квадрата при повороте на 90 градусов:"<<x+a,y-a;
        cout<<"\n";
        cout <<"Координаты правого верхнего угла квадрата при повороте на 90 градусов:"<<x,y;
        cout<<"\n";
        cout <<"Координаты правого нижнего угла квадрата при повороте на 90 градусов:"<<x+a,y;
    }
    void menu()
    {
        cout<<endl;
        cout<<"Меню:"<<"\n"<<"1 - Инициализация полей"<<"\n"<<"2 - Вычисление координат"<<"\n"<<"3 - Изменение длины стороны квадрата"<<"\n"<<"4 - Периметр"<<"\n"<<"5 - Площадь"<<"\n"<<"6 - Координаты квадрата при повороте на 90 градусов";
        Square a;
        int str;
        cout<<"\n";
        cout<<"Выберите номер команды ";
        cin>>str;
        switch (str)
        {
        case 1:
        {
            clrscr();
            a.vvodCoor();
            a.menu();
            break;
        }
        case 2:
        {
            clrscr();
            a.Coord();
            a.menu();
            break;
        }
        case 3:
        {
            clrscr();
            a.changeLenght();
            a.menu();
            break;
        }
        case 4:
        {
            clrscr();
            a.Perimetr();
            a.menu();
            break;
        }
        case 5:
        {
            clrscr();
            a.Area();
            a.menu();
            break;
        }
        case 6:
        {
            clrscr();
            a.Coor90();
            a.menu();
            break;
        }
        case 7:
        {
            break;
        }
        }
    };
};
int main()
{
    Square a;
    a.menu();
}
