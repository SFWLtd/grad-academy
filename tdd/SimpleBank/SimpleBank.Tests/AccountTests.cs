using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;

namespace SimpleBank.Tests
{
    public class AccountTests
    {
        [Fact]
        public void CanCreditAccount()
        {
            // Arrange / Given
            var account = new Account(1000);

            // Act / When
            // TODO - Credit account with 500, e.g. account.Credit(...)

            // Assert / Then
            Assert.Equal(1500, account.Balance);
        }
    }
}
