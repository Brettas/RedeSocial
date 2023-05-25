namespace Cultivo.Domain.Models
{
    public class User : BaseEntity
    {
        public string Name { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public string PhotoURL { get; set; }

        public virtual List<Post> posts { get; set; }
    }
}
