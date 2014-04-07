using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;

namespace Traceyourroute_web_application
{
    public partial class Create_Route : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpClient clientRef = new HttpClient();
            clientRef.BaseAddress = new Uri("https://api.foursquare.com/v2/venues/search?client_id=5KWW00ERAULKEZHCEHRWXKHGBGRGZ2AIK25W0K4GHYXNEJBK%20&client_secret=Z34RBT15FGYILVUBP0EBQ1SNMKPJVVC11JWUF5KFH4AYMBEA%20&v=20130815%20&ll=40.7,-74%20&query=sushi");

            clientRef.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = clientRef.GetAsync("https://api.foursquare.com/v2/venues/search?client_id=5KWW00ERAULKEZHCEHRWXKHGBGRGZ2AIK25W0K4GHYXNEJBK%20&client_secret=Z34RBT15FGYILVUBP0EBQ1SNMKPJVVC11JWUF5KFH4AYMBEA%20&v=20130815%20&ll=40.7,-74%20&query=sushi").Result;
            if (response.IsSuccessStatusCode)
            {
                string yourcustomobjects = response.Content.ReadAsStringAsync().Result;
                //foreach (var x in yourcustomobjects)
                //{
                //    call your store method and pass in your own object
                //    savecustomobjecttodb(x);
                //}
            }
            else
            {
                //Something has gone wrong, handle it here
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

        }
    }
}

