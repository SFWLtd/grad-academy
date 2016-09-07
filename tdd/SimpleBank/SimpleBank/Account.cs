using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleBank
{
    /// <summary>
    /// Bank Account
    /// </summary>
    public class Account
    {
        private readonly decimal _balance;

        /// <summary>
        /// Create an instance of Account
        /// </summary>
        /// <param name="balance">the current balance</param>
        public Account(decimal balance)
        {
            _balance = balance;
        }

        /// <summary>
        /// Gets the account balance
        /// </summary>
        public decimal Balance
        {
            get { return _balance; }
        }
    }
}
