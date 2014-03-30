NewSpringWebApp
===============

Demonstrating basic HTML, Javascript, C#, and Parsing skills

In this project I used the "MonoDevelop" IDE on Linux to create a WebApp which uses HTML and C# to retrieve
a stock quote. I have also demonstrated basic knowladge of Javascript by creating a random quote generator 
using a preloaded array of quotes and the Random class. The Quote retrieving tool takes a company code entered 
into the text box and creates a String using "http://quote.yahoo.com/d/quotes.csv?s=" + company code + "&f=nl1vkj".
It then creates a WebRequest using the newly created String and retieves a WebRespons in the form of an aspx file,
parses the information from the file, and assigns the information to Lables on the Webpage.
