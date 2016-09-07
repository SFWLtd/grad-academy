using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleBank
{
    /// <summary>
    /// Service to apply interest rates
    /// </summary>
    public class InterestService
    {
        private readonly double _interestRate;

        /// <summary>
        /// Create an instance of InterestService
        /// </summary>
        /// <param name="interestRate">the current interest rate</param>
        public InterestService(double interestRate)
        {
            _interestRate = interestRate;
        }
    }
}
