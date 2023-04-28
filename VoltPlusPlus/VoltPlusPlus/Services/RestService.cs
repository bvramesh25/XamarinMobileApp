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
            client = new HttpClient();         
        }
        public async Task<int> GetLoadAsync()
        {
            Uri uri = new Uri("https://substationapi20230427181000.azurewebsites.net/Substation/GetCurrentLoad");
            HttpResponseMessage response = await client.GetAsync(uri);
            string content = await response.Content.ReadAsStringAsync();
            return Convert.ToInt32(content);
        }

        public async Task SetLoadAsync(int newLoad)
        {
            Uri uri = new Uri("https://substationapi20230427181000.azurewebsites.net/Substation/SetCurrentLoad");
            StringContent content = new StringContent(newLoad.ToString(), Encoding.UTF8, "application/json");
            HttpResponseMessage response = await client.PostAsync(uri,content);                      
        }
    }
}
