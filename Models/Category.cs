using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ToDoListApp.Models
{
    public class Category
    {
        public int Id { get; set; }
        public int UserId { get; set; }
        public required string Name { get; set; }
    }
}

