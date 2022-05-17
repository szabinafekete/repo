using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Atletika.Models;
using Microsoft.EntityFrameworkCore;

namespace Atletika.Context
{
    public class AppDbContext : DbContext
    {
        public DbSet<Versenyzo> Versenyzok { get; set; }
        public DbSet<Helyszin> Helyszinek { get; set; }
        public DbSet<Eredmenyek> Eredmenyek { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
            optionsBuilder.UseSqlServer("Server=.\\SQLEXPRESS;Database=Atletika1DB;Trusted_Connection=True;");
            optionsBuilder.UseLazyLoadingProxies();
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Eredmenyek>()
                        .HasKey(model => new { model.VersID, model.HelyID});
            modelBuilder.Entity<Eredmenyek>()
                        .HasOne(x => x.Versenyzo);
            modelBuilder.Entity<Eredmenyek>()
                        .HasOne(x => x.Helyszin);
        }
    }
}
