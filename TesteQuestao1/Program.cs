using System;

//1.Faça um algoritmo ou programa que leia a idade de uma pessoa expressa em anos,
//meses e dias e escreva a idade dessa pessoa expressa apenas em dias.
//Considerar ano com 365 dias e mês com 30 dias. 



namespace TesteQuestao1
{
    class Program
    {
        static void Main(string[] args)
        {
            int dias = 0, meses = 0, anos = 0, diasDecorridos = 0;
            Console.WriteLine("Digite sua idade expressa em anos, meses e dias");

            Console.WriteLine("Digite os anos");
            anos = int.Parse(Console.ReadLine());

            Console.WriteLine("Digite os meses");
            meses = int.Parse(Console.ReadLine());

            Console.WriteLine("Digite os dias");
            dias = int.Parse(Console.ReadLine());

            diasDecorridos += anos * 365;

            diasDecorridos += meses * 30;

            diasDecorridos += dias;

            Console.WriteLine($"Já decorreram {diasDecorridos} dias");
        }
    }
}
