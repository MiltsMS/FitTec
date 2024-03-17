using Microsoft.VisualBasic;
using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FitTec.Base.Models
{
    public class Cliente
    {
        [PrimaryKey]
        public Guid Id { get; set; } = Guid.NewGuid();
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Address { get; set; }
        public int? Age { get; set; }

        public string NameFormated
        {
            get
            {
                return $"{Name} {LastName} ({Age})";
            }
        }

        public string NameLastName
        {
            get
            {
                return $"{Name} {LastName}";
            }
        }
    }
}
