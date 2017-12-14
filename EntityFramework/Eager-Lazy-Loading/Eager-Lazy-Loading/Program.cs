using System;
using System.Collections.Generic;
using System.Linq;

namespace Eager_Lazy_Loading
{
    class Program
    {
        static void Main(string[] args)
        {
            using (Eager_Lazy_LoadingEntities db = new Eager_Lazy_LoadingEntities())
            {
                List<tblDepartment> depList = db.tblDepartments.ToList();

                foreach (var dep in depList)
                {
                    foreach (var emp in dep.tblEmployees)
                    {
                        Console.WriteLine(emp.Name);
                    }
                }
            }
        }
    }
}