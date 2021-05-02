﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ListarOdontograma.aspx.cs" Inherits="JuntosPorUnaSonrisa.Sistema.FichaOdontologica.ListarOdontograma" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PHContenido" runat="server">
     <%-- Ventana Emergente --%>
    <div id="VentanaEmergente" class="Ventana">
        <asp:Image ImageUrl="~/Imagenes/warning.png" Width="25%" Height="25%" runat="server" />
        <br />
        <asp:Label ID="LbLTitulo" Text="Esta seguro que desea eliminar!" Font-Size="28px" runat="server"></asp:Label>
        <br />
        <asp:Label ID="LblSubtitulo" Text="El Odontograma Nº" runat="server"></asp:Label>
        <asp:Label ID="LblEstado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="LblAviso" Text="No podras revertir los cambios!" runat="server" ForeColor="Yellow"></asp:Label>
        <br />
        <br />
        <div class="text-center">
            <asp:Button Text="Aceptar" OnClick="BtnAceptar_Click"  Width="85px" CssClass="btn btn-primary" ID="BtnAceptar" runat="server" />
            <asp:Button ID="BtnCancelar" OnClick="BtnCancelar_Click" Width="85px" CssClass="btn btn-danger" Text="Cancelar" runat="server" CausesValidation="false" />
        </div>
    </div>
    <%-- Contenido --%>

     <div class="container-fluid" id="ContenidoHolder">
        <h2 class="text-center">Odontograma</h2>
        <div class="container-fluid">
            <div class="row">
                <!--      ---------------NUEVO---------------             -->
                <div class="col-xl">
                    <asp:ImageButton ID="Regresar"
                        runat="server"
                        OnClick="Regresar_Click"
                        ImageUrl="~/Imagenes/Previous.png"
                        ToolTip="Nuevo Registro"
                        AlternateText="Nuevo" />
                    &nbsp;&nbsp; 
                    <asp:ImageButton ID="BtnNuevo"
                        runat="server"
                        OnClick="BtnNuevo_Click"
                        ImageUrl="~/Imagenes/Add.png"
                        ToolTip="Nuevo Registro"
                        AlternateText="Nuevo" />
                </div>
                <!--      ---------------BUSCAR---------------             -->
                <div class="col-sm-auto">
                <div class="form-inline">
                    <div class="form-group">
                        Buscar: &nbsp;
                        <asp:TextBox id="TxtBuscar"  CssClass="form-control" runat="server" />
                    </div>
                     &nbsp;&nbsp;
                    <asp:imageButton id="BtnBuscar" 
                        Text="Aceptar" 
                        ImageUrl="~/Imagenes/search.png"
                        CssClass="btn btn-warning" 

                        ToolTip="Buscar"
                        runat="server" 
                        />
                    <asp:imageButton id="BtnListarTodo" 
                        Visible="false"
                        Text="Aceptar" 
                        ImageUrl="~/Imagenes/mas.png"
                        CssClass="btn btn-warning" 
                        ToolTip="Listar Todo"

                        runat="server" 
                        />

                    </div>
                </div>


            </div>

        </div>

        <!--      ------------------------------             -->

        <div class="container">
            <div class="row">
                <div class="col ">
                    <div class="text-center">
                        <asp:GridView runat="server" ID="GriPersonas"
                            AutoGenerateColumns="False"
                            CssClass="colorBlanco"
                            OnRowCommand="GriPersonas_RowCommand" AllowPaging="True"
                            OnPageIndexChanging="GriPersonas_PageIndexChanging" Height="100%"  Width="100%">

                            <AlternatingRowStyle BackColor="White" />

                            <Columns>
                                <asp:TemplateField>
                                    <HeaderTemplate>
                                        Acciones
                                    </HeaderTemplate>


                                    <ItemTemplate>
                                        <asp:ImageButton runat="server"
                                            ImageUrl="~/Imagenes/Edit.png"
                                            CommandName="Editar"
                                            CommandArgument='<%# Bind("IDDIENTE") %>'
                                            ID="BtnEditar" />
                                        <asp:ImageButton runat="server" ImageUrl="~/Imagenes/Delete.png"
                                            CommandName="Borrar"
                                            CommandArgument='<%# Bind("IDDIENTE") %>'
                                            ID="BtnBorrar" />

                                        <!--DataBinder.Eval(Container.DataItem, "PerCedula") Se puede usar este en casao de que falle el anterior Bind -->
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField HeaderText="Id" DataField="IDDIENTE" Visible="false" />
                                <asp:BoundField HeaderText="Id Diente" DataField="NDiente" />
                                <asp:BoundField HeaderText="Enfermedad " DataField="ENFERMEDAD" />
                                <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" visible="false"/>

                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerSettings FirstPageImageUrl="~/Imagenes/Home.png" LastPageImageUrl="~/Imagenes/Finaly.png" PreviousPageImageUrl="~/Imagenes/Previous.png" NextPageImageUrl="~/Imagenes/Next.png" Mode="NextPreviousFirstLast" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <br />
    </div>
    <!-- ---------------------------------------------------- -->





</asp:Content>
