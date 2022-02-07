using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.INPUT_SERVICES
{
    class StudentService
    {
        private PkSchoolEntities db = new PkSchoolEntities();

        public List<Student> GetStudent()
        {
            return db.Students.ToList();
        }

        public void CreateStudent(Student student)
        {

            db.Students.Add(student);
            db.SaveChanges();
        }
    }
}
