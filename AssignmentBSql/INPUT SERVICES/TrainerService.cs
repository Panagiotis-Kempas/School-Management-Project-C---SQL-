using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AssignmentBSql.INPUT_SERVICES
{
    class TrainerService
    {
        private PkSchoolEntities db = new PkSchoolEntities();

        public List<Trainer> GetTrainer()
        {
            return db.Trainers.ToList();
        }

        public void CreateTrainer(Trainer trainer)
        {

            db.Trainers.Add(trainer);
            db.SaveChanges();
        }
    }
}
