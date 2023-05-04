using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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