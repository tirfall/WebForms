<%@ Page Title="Õpilane lisamine" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebForms.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2 id="title"><%: Title %>.</h2>
    <h3>Lisa uus õpilane.</h3>    
    <p>Toolbox -> DetailView</p>
    <p></p>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataKeyNames="opilaneId" DataSourceID="SqlDataSource2">
        <Fields>
            <asp:BoundField DataField="opilaneId" HeaderText="opilaneId" InsertVisible="False" ReadOnly="True" SortExpression="opilaneId" />
            <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
            <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
            <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" />
            <asp:TemplateField HeaderText="ryhm_ryhmId" SortExpression="ryhm_ryhmId">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ryhm_ryhmId") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ryhm_ryhmId") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ryhm_ryhmId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="keskmine_hinne" HeaderText="keskmine_hinne" SortExpression="keskmine_hinne" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekool_RogovskiConnectionString2 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneId] = @opilaneId" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [synniaeg], [ryhm_ryhmId], [keskmine_hinne]) VALUES (@eesnimi, @perenimi, @synniaeg, @ryhm_ryhmId, @keskmine_hinne)" SelectCommand="SELECT * FROM [opilaneSet]" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [synniaeg] = @synniaeg, [ryhm_ryhmId] = @ryhm_ryhmId, [keskmine_hinne] = @keskmine_hinne WHERE [opilaneId] = @opilaneId">
        <DeleteParameters>
            <asp:Parameter Name="opilaneId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="synniaeg" />
            <asp:Parameter Name="ryhm_ryhmId" Type="Int32" />
            <asp:Parameter Name="keskmine_hinne" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="eesnimi" Type="String" />
            <asp:Parameter Name="perenimi" Type="String" />
            <asp:Parameter DbType="Date" Name="synniaeg" />
            <asp:Parameter Name="ryhm_ryhmId" Type="Int32" />
            <asp:Parameter Name="keskmine_hinne" Type="Decimal" />
            <asp:Parameter Name="opilaneId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
