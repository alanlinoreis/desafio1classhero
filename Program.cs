// Definindo o tamanho do array
int quantidade = 5;

Console.WriteLine("Digite os nomes de 5 pessoas:");
string?[] nomes = new string[quantidade];
// Leitura dos nomes e armazenamento no array
for (int i = 0; i < quantidade; i++)
{
    Console.Write($"Nome {i + 1}: ");
    nomes[i] = Console.ReadLine();
}

Console.WriteLine("\nNomes digitados:");
// Exibindo os nomes armazenados
for (int i = 0; i < quantidade; i++)
{
    Console.WriteLine($"- {nomes[i]}");
}