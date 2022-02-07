using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.INPUT_SERVICES
{
    class CourseService
    {
        private PkSchoolEntities db = new PkSchoolEntities();

        public List<Course> GetCourse()
        {
            return db.Courses.ToList();
        }
        public void CreateCourse(Course course)
        {

            db.Courses.Add(course);
            db.SaveChanges();
        }
    }
}
