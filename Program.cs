using System;

public class Temperatura
{
    private double valor;
    private string escala; // "C" para Celsius, "F" para Fahrenheit

    public Temperatura(double valor, string escala)
    {
        this.valor = valor;
        this.escala = escala.ToUpper();

        if (this.escala != "C" && this.escala != "F")
            throw new ArgumentException("Escala inválida. Use 'C' para Celsius ou 'F' para Fahrenheit.");
    }

    public double EmCelsius()
    {
        if (escala == "C")
            return valor;
        else
            return (valor - 32) * 5 / 9; // F → C
    }

    public double EmFahrenheit()
    {
        if (escala == "F")
            return valor;
        else
            return (valor * 9 / 5) + 32; // C → F
    }

    public override string ToString()
    {
        return $"{valor}°{escala}";
    }
}

class Program
{
    static void Main()
    {
        Console.WriteLine("Conversor de Temperatura");

        Console.Write("Digite o valor da temperatura: ");
        if (!double.TryParse(Console.ReadLine(), out double valor))
        {
            Console.WriteLine("Valor inválido.");
            return;
        }

        Console.Write("Digite a escala (C para Celsius, F para Fahrenheit): ");
        string escala = Console.ReadLine();

        try
        {
            Temperatura temp = new Temperatura(valor, escala);

            Console.WriteLine($"\nTemperatura original: {temp}");
            Console.WriteLine($"Em Celsius: {temp.EmCelsius():F2}°C");
            Console.WriteLine($"Em Fahrenheit: {temp.EmFahrenheit():F2}°F");
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Erro: {ex.Message}");
        }
    }
}