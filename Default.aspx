<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SUIC_Wbe_._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h3 id="TitleBusqueda">Búsqueda de Información</h3>
        </section>

        <div class="form-group row">
            <div class="form-group col-sm-4">
                <label for="txtNombre">Nombre</label>
                <input id="txtNombre" runat="server" type="text" class="form-control" />
            </div>

            <div class="form-group col-sm-4">
                <label for="txtAPaterno">Apellido Paterno</label>
                <input id="txtAPaterno" runat="server" type="text" class="form-control" />
            </div>

            <div class="form-group col-sm-4">
                <label for="txtAMaterno">APellido Materno</label>
                <input id="txtAMaterno" runat="server" type="text" class="form-control" />
            </div>
        </div>

        <div class="form-group row">
            <div class="form-group col-sm-4">
                <label for="txtCURP">CURP</label>
                <input id="txtCURP" runat="server" type="text" class="form-control" />
            </div>

            <div class="form-group col-sm-4">
                <label for="txtFecha">Fecha de Nacimiento</label>
                <input id="txtFecha" runat="server" type="text" class="form-control" />
            </div>

            <div class="form-group col-sm-2">
                <br />
                <asp:Button ID="btnBusqueda" runat="server" Text="Buscar"
                    CssClass="btn-primary  btn-rounded btn-md" OnClick="btnBusqueda_Click" />
            </div>
            <div class="form-group col-sm-2">
                <br />
                <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"
                    CssClass="btn-primary btn-rounded btn-md" OnClick="btnLimpiar_Click" />
            </div>

        </div>
    </main>
    <br />
    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h3 id="TitleResultado">Resultado de la Consulta</h3>
        </section>

        <div runat="server" id="divbusqueda">
            <div class="form-group row">
                <div class="form-group col-sm-12 text-center">
                    <div class="table-responsive">
                        <asp:UpdatePanel runat="server" ID="upgdvResultados">
                            <ContentTemplate>
                                <asp:GridView runat="server" ID="gdvResultados" CssClass="table table-striped table-bordered table-condensed"
                                    HeaderStyle-BackColor="#B38E5D" ShowHeader="true" ShowHeaderWhenEmpty="true" AutoGenerateColumns="false"
                                    OnPageIndexChanging="gdvResultados_PageIndexChanging" HeaderStyle-ForeColor="White" AllowPaging="True"
                                    PageSize="10" Font-Size="Small" AllowSorting="True">
                                    <EmptyDataRowStyle ForeColor="Red" CssClass="table table-bordered" Width="100%" />
                                    <EmptyDataTemplate>
                                        ¡No hay resultados!
                                    </EmptyDataTemplate>
                                    <Columns>
                                        <asp:TemplateField HeaderText="No.">
                                            <ItemTemplate>
                                                <asp:Label ID="lbNumero" runat="server"
                                                    Text='<%# (gdvResultados.PageSize * gdvResultados.PageIndex) + Container.DisplayIndex + 1 %>'>
                                                </asp:Label>
                                            </ItemTemplate>
                                            <ControlStyle Width="20px" />
                                            <ItemStyle Width="20px" />
                                        </asp:TemplateField>
                                        <asp:BoundField DataField="" HeaderText="Nombre">
                                            <ControlStyle Width="40px" />
                                            <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="" HeaderText="Apellido Paterno">
                                            <ControlStyle Width="40px" />
                                            <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="" HeaderText="Apellido Materno">
                                            <ControlStyle Width="40px" />
                                            <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="" HeaderText="CURP">
                                            <ControlStyle Width="40px" />
                                            <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="" HeaderText="Fecha de nacimiento" DataFormatString="{0:dd/MM/yyyy HH:mm}">
                                            <ControlStyle Width="40px" />
                                            <ItemStyle Width="40px" />
                                        </asp:BoundField>
                                    </Columns>
                                    <PagerStyle HorizontalAlign="Center" />
                                </asp:GridView>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="gdvResultados" EventName="PageIndexChanging" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>

    </main>


</asp:Content>
