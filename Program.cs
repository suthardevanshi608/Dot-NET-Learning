using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Value_Vs_Reference
{
    internal class Student
    {
        public int Id;
        public string Name;
    }
    class Program
    {
        private static int x;

        static void main()
        {
            int x = 10;
            int y = x;
            y = 20;
            Console.WriteLine(x);
            Console.WriteLine(y);


        }  
        static void Main(string[] args)
        {

            Student s1 = new Student();
            s1.Name = "John";
            Student s2 = s1;
            s2.Name = "Doe";
            Console.WriteLine(s1.Name);
            Console.WriteLine(s2.Name);
        }
    }
}
