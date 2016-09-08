using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FakeItEasy;
using Xunit;

namespace SimpleSecurity.Tests
{
    public class AuthenticationServiceTests
    {
        [Fact]
        public void ValidCredentialsReturnsTrue()
        {
            // Arrange / Given
            var loginProvider = A.Fake<ILoginProvider>();
            var logWriter = A.Fake<ILogWriter>();
            var service = new AuthenticationService(loginProvider, logWriter);

            // Act / When
            var result = service.Login("Bob", "$ecret*123");

            // Assert / Then
            Assert.True(result);
        }
    }
}
