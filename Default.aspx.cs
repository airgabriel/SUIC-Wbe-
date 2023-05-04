using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.IO;
using System.Net;
using System.Web.Script.Serialization;

namespace SUIC_Wbe_
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            gdvResultados.DataSource = ViewState["ListaResultados"];
            gdvResultados.DataBind();
        }

        protected void btnBusqueda_Click(object sender, EventArgs e)
        {
            
            List<RepuveModel> repubelist = new List<RepuveModel>();

            var url = "https://apirestrepuve20230504131354.azurewebsites.net/api/values?idFuente=1";

            var request = WebRequest.Create(url);
            request.Method = "GET";

            var webResponse = request.GetResponse();
            var webStream = webResponse.GetResponseStream();

            var reader = new StreamReader(webStream);
            string data = reader.ReadToEnd();

       


            repubelist = JsonConvert.DeserializeObject<List<RepuveModel>>(data);

            ViewState["ListaResultados"] = repubelist;



        }

        protected void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtNombre.Value=String.Empty;
            txtAPaterno.Value=String.Empty;
            txtAMaterno.Value=String.Empty;
            txtCURP.Value=String.Empty;
            txtFecha.Value=String.Empty;
        }


        protected void gdvResultados_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gdvResultados.PageIndex = e.NewPageIndex;
            gdvResultados.DataSource = ViewState["ListaResultados"];
            gdvResultados.DataBind();
        }

    }
}