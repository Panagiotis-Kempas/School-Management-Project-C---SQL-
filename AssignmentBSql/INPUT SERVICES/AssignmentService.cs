using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.INPUT_SERVICES
{
    class AssignmentService
    {
        private PkSchoolEntities db = new PkSchoolEntities();

        public List<Assignment> GetAssignment()
        {
            return db.Assignments.ToList();
        }

        public void CreateAssignment(Assignment assignment)
        {

            db.Assignments.Add(assignment);
            db.SaveChanges();
        }

    }
}
