using System;
using System.Collections.Generic;
using System.Linq;

namespace desafio1classhero
{
    class Aluno
    {
        private List<double> notas;

        public Aluno()
        {
            notas = new List<double>();
        }

        // Método para adicionar nota com validação
        public bool AdicionarNota(double nota)
        {
            if (nota >= 0 && nota <= 10)
            {
                notas.Add(nota);
                return true;
            }
            else
            {
                Console.WriteLine("Nota inválida. Insira uma nota entre 0 e 10.");
                return false;
            }
        }

        // Método para calcular a média das notas
        public double CalcularMedia()
        {
            if (notas.Count == 0)
                return 0;

            return notas.Average();
        }

        // Método para verificar se foi aprovado
        public bool EstaAprovado()
        {
            return CalcularMedia() >= 6;
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            Aluno aluno = new Aluno();
            Console.WriteLine("Digite as notas do aluno. Digite 'sair' para encerrar:");

            while (true)
            {
                Console.Write("Nota: ");
                string entrada = Console.ReadLine();

                if (entrada.ToLower() == "sair")
                    break;

                if (double.TryParse(entrada, out double nota))
                {
                    aluno.AdicionarNota(nota);
                }
                else
                {
                    Console.WriteLine("Entrada inválida. Por favor, digite um número.");
                }
            }

            double media = aluno.CalcularMedia();
            Console.WriteLine($"\nMédia final: {media:F2}");

            if (aluno.EstaAprovado())
            {
                Console.WriteLine("Status: Aprovado");
            }
            else
            {
                Console.WriteLine("Status: Reprovado");
            }
        }
    }
}