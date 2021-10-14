using System;

namespace GenericsIntro
{
    class Program
    {
        static void Main(string[] args)
        {
            MyList<string> names = new MyList<string>();
            names.Add("Musa");

            Console.WriteLine(names.Length);

            names.Add("Elyesa");

            Console.WriteLine(names.Length);

            foreach (var isim in names.Items)
            {
                Console.WriteLine(isim);
            }
        }
    }
}
