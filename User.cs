using Sieve.Attributes;

namespace TechDemo.Model
{
    public class User
    {
        public int Id { get; set; }
        [Sieve(CanFilter = true, CanSort = true)]
        public string Name { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }

    }
}
