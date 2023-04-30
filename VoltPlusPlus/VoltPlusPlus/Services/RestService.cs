using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace VoltPlusPlus.Services
{
    public class RestService 
    {
        HttpClient client;

        public RestService()
        {
        }
        public async Task<int> GetLoadAsync()
        {
            Uri uri = new Uri("http://in-hgs107245a.ingrnet.com/substation/Substation/GetCurrentLoad");
         //HttpClientHandler insecureHandler = GetInsecureHandler();
         // client = new HttpClient(insecureHandler);
         client = new HttpClient();
         HttpResponseMessage response = await client.GetAsync(uri);
            string content = await response.Content.ReadAsStringAsync();
            return Convert.ToInt32(content);
        }

        public async Task SetLoadAsync(int newLoad)
        {
            Uri uri = new Uri("http://in-hgs107245a.ingrnet.com/substation/Substation/SetCurrentLoad");
         //HttpClientHandler insecureHandler = GetInsecureHandler();
        // client = new HttpClient(insecureHandler);
         client = new HttpClient();

         StringContent content = new StringContent(newLoad.ToString(), Encoding.UTF8, "application/json");
            HttpResponseMessage response = await client.PostAsync(uri,content);                      
        }

        public async Task ToggleBulb(bool isOn)
        {
           // HttpClientHandler insecureHandler = GetInsecureHandler();
            client = new HttpClient();
         Uri uri = new Uri("http://in-hgs107245a.ingrnet.com/substation/Substation/ToggleBulb/" + isOn.ToString().ToLowerInvariant());
         //Uri uri = new Uri("https://in-hgs107245a.ingrnet.com/substation/Substation/ToggleBulb/" + isOn.ToString().ToLowerInvariant());
            //HttpResponseMessage response = await client.GetAsync(uri);
            HttpResponseMessage response = await client.GetAsync(uri);
            string content = await response.Content.ReadAsStringAsync();
        }

        public HttpClientHandler GetInsecureHandler()
        {
            HttpClientHandler handler = new HttpClientHandler();
            handler.ServerCertificateCustomValidationCallback = (message, cert, chain, errors) =>
            {
                if (cert.Issuer.Equals("CN=localhost"))
                    return true;
                return errors == System.Net.Security.SslPolicyErrors.None;
            };
            return handler;
        }
    }


}
