using Sieve.Attributes;
namespace TechDemo
{
    public class ToDo
    {
        public int Id { get; set; }
        [Sieve(CanFilter = true, CanSort = true)]]
        public string Name { get; set; }
        public bool Description { get; set; }
        public string Status { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}
