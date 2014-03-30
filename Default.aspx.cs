// Author: Darrell Best

using System;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Net;
using System.Text;

namespace LearningHTML
{
    public partial class Default : System.Web.UI.Page
    {
        public virtual void button1Clicked(object sender, EventArgs args)
        { 
            String symbol, urlL, urlR, yahooUrl, result;
            symbol = txtBox.Text.Trim();
            urlL = "http://quote.yahoo.com/d/quotes.csv?s=";
            urlR = "&f=nl1vkj";
            yahooUrl = urlL + symbol + urlR;

            if (symbol.Length > 0)
            {
                // Initialize a new WebRequest.
                HttpWebRequest webreq = (HttpWebRequest)WebRequest.Create(yahooUrl);
                // Get the response from the Internet resource.
                HttpWebResponse webresp = (HttpWebResponse)webreq.GetResponse();
                // Read the body of the response from the server.
                StreamReader strm = new StreamReader(webresp.GetResponseStream(), Encoding.ASCII);
                result = strm.ReadToEnd();

                if(!result.Contains("N/A")){
                    lbl1.Text = "Company Name: " + result.Substring(0, result.LastIndexOf('"') + 1);
                    result = result.Remove(0, result.LastIndexOf('"') + 2);
                    lbl2.Text = "Last Price:   " + result.Substring(0, result.IndexOf(','));
                    result = result.Remove(0, result.IndexOf(',') + 1);
                    lbl3.Text = "Last Traded Volume: " + result.Substring(0, result.IndexOf(','));
                    result = result.Remove(0, result.IndexOf(',') + 1);
                    lbl4.Text = "52-Week High: " + result.Substring(0, result.IndexOf(','));
                    result = result.Remove(0, result.IndexOf(',') + 1);
                    lbl5.Text = "52-Week Low: " + result;
                    txtBox.Text = ""; 
                }
                else 
                {
                    lbl1.Text = "No such company exists.";
                    lbl2.Text = "";
                    lbl3.Text = "";
                    lbl4.Text = "";
                    lbl5.Text = "";
                    txtBox.Text = ""; 
                }
            }
        }

        public virtual void button1Clicked2(object sender, EventArgs args) 
        {
             
        }
    }
}

