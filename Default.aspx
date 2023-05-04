<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SUIC_Wbe_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h3 id="TitleBusqueda">Búsqueda de Información</h3>
        </section>

        <div class="row">
            <div class="row col-3">
                <label for="txtNombre">Nombre</label>
                <input id="txtNombre" type="text" />
            </div>
            <div class="row col-1">
            </div>
            <div class="row col-3">
                <label for="txtAPaterno">Apellido Paterno</label>
                <input id="txtAPaterno" type="text" />
            </div>
            <div class="row col-1">
            </div>
            <div class="row col-3">
                <label for="txtAMaterno">APellido Materno</label>
                <input id="txtAMaterno" type="text" />
            </div>
        </div>
        <div class="row">
            <div class="row col-3">
                <label for="txtCURP">CURP</label>
                <input id="txtCURP" type="text" />
            </div>
            <div class="row col-1">
            </div>
            <div class="row col-3">
                <label for="txtFecha">Fecha de Nacimiento</label>
                <input id="txtFecha" type="text" />
            </div>
            <div class="row col-1">
            </div>
            <div class="row col-3">
                
            </div>
        </div>

    </main>

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h3 id="TitleResultado">Resultados de la Consulta</h3>
        </section>

        <div class="row">
            <div class="row col-6">
            </div>
            <div class="row col-6">
            </div>
        </div>
         <div class="row">
            <div class="row col-3">
                <label for="txtCURP">CURP</label>
                <input id="txtCURP" type="text" />
            </div>
            <div class="row col-1">
            </div>
            <div class="row col-3">
                <label for="txtAPaterno">Fecha de Nacimiento</label>
                <input id="txtFechaNac" type="text" />
            </div>
            <div class="row col-3">
                
            </div>
        </div>


    </main>

</asp:Content>
