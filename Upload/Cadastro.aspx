<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Upload.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" OnActiveViewChanged="MultiView1_ActiveViewChanged">
                <asp:View ID="View3" runat="server">
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Cadastrar Cliente</asp:LinkButton>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Editar Cliente</asp:LinkButton>
                    &nbsp;<br />
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Cadastrar Cliente</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Listar Clientes</asp:LinkButton>
                    <asp:Wizard ID="Wizard2" runat="server" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="357px" Width="497px" OnFinishButtonClick="Wizard2_FinishButtonClick">
                        <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                        <SideBarButtonStyle ForeColor="White" />
                        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                        <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" Title="Alterar Cliente">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True">
                                    <asp:ListItem Value="1">Ativo</asp:ListItem>
                                    <asp:ListItem Value="0">Inativo</asp:ListItem>
                                </asp:RadioButtonList>
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="ID:"></asp:Label>
                                &nbsp;&nbsp;
                                <asp:TextBox ID="txtId" runat="server" Width="17px" Height="16px"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="NOME:"></asp:Label>
                                <br />
                                <asp:TextBox ID="textNome" runat="server" ValidateRequestMode="Enabled"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label4" runat="server" Text="EMAIL:"></asp:Label>
                                <br />
                                <asp:TextBox ID="TextEmail" runat="server" TextMode="Email"></asp:TextBox>
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </asp:View>
                <asp:View ID="View1" runat="server">
                    <br />
                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Editar Cliente</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Listar Clientes</asp:LinkButton>
                    <asp:Wizard ID="Wizard1" runat="server" BackColor="#E6E2D8" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="308px" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="459px">
                        <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                        <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                        <SideBarButtonStyle ForeColor="White" />
                        <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                        <StepStyle BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="2px" />
                        <WizardSteps>
                            <asp:WizardStep runat="server" Title="Cadastro do cliente">
                                <br />
                                <br />
                                <br />
                                <asp:RadioButtonList ID="rbStatus" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                                    <asp:ListItem Value="1">Ativo</asp:ListItem>
                                    <asp:ListItem Value="0">Inativo</asp:ListItem>
                                </asp:RadioButtonList>
                                &nbsp;&nbsp;
                                <asp:Label ID="Label1" runat="server" Text="NOME:"></asp:Label>
                                <br />
                                &nbsp;
                                <asp:TextBox ID="txtNome" runat="server" ValidateRequestMode="Enabled" ValidationGroup="Required"></asp:TextBox>
                                <br />
                                &nbsp;
                                <asp:Label ID="Label2" runat="server" Text="EMAIL"></asp:Label>
                                <br />
                                &nbsp;
                                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                                <br />
                            </asp:WizardStep>
                        </WizardSteps>
                    </asp:Wizard>
                </asp:View>
            </asp:MultiView>
            <asp:Label ID="lblErro" runat="server" Text="..."></asp:Label>
        </div>
    </form>
</body>
</html>