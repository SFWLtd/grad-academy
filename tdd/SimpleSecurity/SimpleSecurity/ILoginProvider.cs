using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleSecurity
{
    public interface ILoginProvider
    {
        /// <summary>
        /// Authenticate a user with the given credentials
        /// </summary>
        /// <param name="username">the username</param>
        /// <param name="password">the password</param>
        /// <returns>-1 if the user is not found; 0 if the credentials are incorrect; otherwise user id (positive integer)</returns>
        int AuthenticateUser(string username, string password);
    }
}
