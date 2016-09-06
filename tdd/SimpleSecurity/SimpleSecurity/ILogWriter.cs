using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SimpleSecurity
{
    public interface ILogWriter
    {
        /// <summary>
        /// Writes a message to the log
        /// </summary>
        /// <param name="message">the message to write</param>
        void WriteMessage(string message);
    }
}
