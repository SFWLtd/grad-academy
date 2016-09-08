using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleSecurity
{
    public class AuthenticationService
    {
        private readonly ILoginProvider _loginProvider;
        private readonly ILogWriter _logWriter;

        public AuthenticationService(ILoginProvider loginProvider, ILogWriter logWriter)
        {
            _loginProvider = loginProvider;
            _logWriter = logWriter;
        }

        /// <summary>
        /// Log in the user with the provided credentials
        /// </summary>
        /// <param name="username">the username</param>
        /// <param name="password">the password</param>
        /// <returns>true if the login was successful; otherwise false</returns>
        public bool Login(string username, string password)
        {
            throw new NotImplementedException();
        }
    }
}
