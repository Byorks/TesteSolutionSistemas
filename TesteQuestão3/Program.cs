using System;
using System.Globalization;

//Escrever um algoritmo/programa que leia o número de carros por ele vendidos,
//o valor total de suas vendas, o salário fixo e o valor que ele recebe por carro vendido.
//Calcule e escreva o salário final do vendedor. 

namespace TesteQuestão3
{
    class Program
    {
        static void Main(string[] args)
        {
            int carrosVendidos = 0;
            double totalVendas = 0, salarioFixo = 0, comissaoCarros = 0, salarioFinal = 0;

            Console.WriteLine("Insira o número total de carros vendidos");
            carrosVendidos = int.Parse(Console.ReadLine());

            Console.WriteLine("Insira o valor total de vendas");
            totalVendas = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.WriteLine("Insira o valor do salário fixo");
            salarioFixo = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            Console.WriteLine("Insira o valor da comissão por carro vendido");
            comissaoCarros = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);

            salarioFinal = carrosVendidos * comissaoCarros + totalVendas * .05 + salarioFixo; 

            Console.WriteLine("Salário final = " + salarioFinal.ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
