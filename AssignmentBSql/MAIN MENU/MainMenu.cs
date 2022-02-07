using AssignmentBSql.INPUT_SERVICES;
using SqlAssignmentConsole;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.MAIN_MENU
{
    class MainMenu
    {
        public static void Menu()
        {

            string input;

            do
            {

                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("WELCOME TO PK PRIVATE SCHOOL");
                Console.ResetColor();
                Console.WriteLine();

                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine("CHOOSE ONE OF THE FOLLOWING OPTIONS");
                Console.ResetColor();
                Console.WriteLine();

                Console.ForegroundColor = ConsoleColor.White;
                Console.WriteLine("1 - DATABASE DATA");
                Console.WriteLine("2 - INPUT DATA");
                Console.WriteLine("E - EXIT");
                Console.ResetColor();
                Console.WriteLine();
                Console.Write("CHOOSE : ");
                input = Console.ReadLine().ToLower();
                Console.Clear();



                switch (input)
                {
                    case "1": ViewData.DataMenu(); break;
                    case "2": InputMenu.Menu(); break;
                    default:
                        Console.WriteLine("GOODBYE!!!");
                        break;
                }


            } while (input != "e");
        }
    }
}
