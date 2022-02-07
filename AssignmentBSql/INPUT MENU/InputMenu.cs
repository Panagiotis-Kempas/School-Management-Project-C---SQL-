using AssignmentBSql.MAIN_MENU;
using AssignmentBSql.PRINT_DATABASE_DATA;
using AssignmentBSql.VIEW_INPUT_DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SqlAssignmentConsole
{
    class InputMenu
    {
        public static void Menu()
        {


            string input;

            do
            {
                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine("CHOOSE ONE OF THE FOLLOWING");
                Console.ResetColor();
                Console.WriteLine();
                Console.ForegroundColor = ConsoleColor.Cyan;
                Console.WriteLine("1 - CREATE COURSE ");
                Console.WriteLine("2 - CREATE STUDENT ");
                Console.WriteLine("3 - CREATE TRAINER ");
                Console.WriteLine("4 - CREATE ASSIGNMENT ");
                Console.WriteLine("E - EXIT ");
                Console.WriteLine();
                Console.Write("CHOOSE: ");
                Console.ResetColor();
                input = Console.ReadLine().ToLower();
                Console.Clear();

                switch (input)
                {
                    case "1": ViewInputs.Course(); break;
                    case "2": ViewInputs.Student(); break;
                    case "3": ViewInputs.Trainer(); break;
                    case "4": ViewInputs.Assignment(); break;
                    case "e": MainMenu.Menu(); break;
                    default:
                        Printings.Error();
                        break;
                }
            } while (input != "e");


        }
    }
}
