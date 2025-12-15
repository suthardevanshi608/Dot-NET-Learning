using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Calculator
{
    internal class Calculator
    {
        int num1;
        int num2;
        int result;

        void Add()
        {
            result = num1 + num2;
            Console.WriteLine(result);
            Console.ReadLine();
        }
        void Subtract()
        {
            result = num1 - num2;
            Console.WriteLine(result);
            Console.ReadLine();
        }
        static void Main(string[] args)
        {
            Calculator obj = new Calculator();
            obj.num1 = 20;
            obj.num2 = 30;
            obj.Add();
            obj.Subtract();
        }
    }
}
