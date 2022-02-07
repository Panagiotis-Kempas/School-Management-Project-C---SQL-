using AssignmentBSql.MAIN_MENU;
using AssignmentBSql.PRINT_DATABASE_DATA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.INPUT_SERVICES
{
    class ViewData
    {
        public static void DataMenu()
        {
            PkSchoolEntities db = new PkSchoolEntities();

            const int first = -40;
            const int second = -40;
            string input;

            do
            {
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("SYNTHETIC DATA");
                Console.ResetColor();
                Console.WriteLine();

                Console.ForegroundColor = ConsoleColor.Cyan;
                Console.WriteLine("CHOOSE ONE OF THE FOLLOWING OPTIONS");
                Console.ResetColor();
                Console.WriteLine();

                Console.ForegroundColor = ConsoleColor.Blue;
                Console.WriteLine($"{"-------------- ALL DATA --------------",first}{"-------------- FILTER BY --------------",second}{"-------------- E - EXIT --------------",second}");
                Console.WriteLine($"{"1 - ALL STUDENTS",first}{"5 - ALL STUDENTS PER COURSE",second}");
                Console.WriteLine($"{"2 - ALL TRAINERS",first}{"6 - ALL TRAINERS PER COURSE",second}");
                Console.WriteLine($"{"3 - ALL ASSIGNMENTS",first}{"7 - ALL ASSIGNMENTS PER COURSE",second}");
                Console.WriteLine($"{"4 - ALL COURSES",first}{"8 - ALL ASSIGNMENTS PER COURSE PER STUDENTS",second}");
                Console.WriteLine($"{"",first}{"9 - 2 COURSE STUDENTS",second}");
                Console.ResetColor();
                Console.WriteLine();
                Console.Write("CHOOSE : ");
                Console.ResetColor();
                input = Console.ReadLine().ToLower();
                Console.Clear();


                switch (input)
                {
                    case "1": Printings.AllStudents(db.Students.ToList(), "ALL STUDENTS"); break;
                    case "2": Printings.AllTrainers(db.Trainers.ToList(), "ALL TRAINERS"); break;
                    case "3": Printings.AllAssignments(db.Assignments.ToList(), "ALL ASSIGNMENTS"); break;
                    case "4": Printings.AllCourses(db.Courses.ToList(), "ALL COURSES"); break;
                    case "5": Printings.StudentsPerCourse(db.Courses.ToList(), "ALL STUDENTS PER COURSE"); break;
                    case "6": Printings.TrainersPerCourse(db.Courses.ToList(), "ALL TRAINERS PER COURSE"); break;
                    case "7": Printings.AssignmentsPerCourse(db.Courses.ToList(), "ALL ASSIGNMENTS PER COURSE"); break;
                    case "8": Printings.AssignmentsPerStudent(db.Students.ToList(), "ALL ASSIGNMENTS PER COURSE PER STUDENT"); break;
                    case "9": Printings.StudentsWithMoreCourses(db.Students.ToList(), "STUDENT WHO ARE TO MORE THAN ONE COURSES"); break;

                    case "e": MainMenu.Menu(); break;
                    default:
                        Printings.Error();
                        break;
                }
            } while (input != "E" || input != "e");


        }
    }
}
