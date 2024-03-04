<%@ Page Title="Õpilased tabelid" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebForms.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Õpilased seisuga 4.03.2024</h3>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="opilaneId" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="opilaneId" HeaderText="opilaneId" ReadOnly="True" SortExpression="opilaneId" InsertVisible="False" />
                    <asp:BoundField DataField="eesnimi" HeaderText="eesnimi" SortExpression="eesnimi" />
                    <asp:BoundField DataField="perenimi" HeaderText="perenimi" SortExpression="perenimi" />
                    <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" />
                    <asp:BoundField DataField="ryhm_ryhmId" HeaderText="ryhm_ryhmId" SortExpression="ryhm_ryhmId" />
                    <asp:BoundField DataField="keskmine_hinne" HeaderText="keskmine_hinne" SortExpression="keskmine_hinne" />
                    <asp:BoundField DataField="ryhmNimi" HeaderText="ryhmNimi" SortExpression="ryhmNimi" />
                    <asp:BoundField DataField="osakond" HeaderText="osakond" SortExpression="osakond" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekool_RogovskiConnectionString2 %>" SelectCommand="SELECT opilaneSet.opilaneId, opilaneSet.eesnimi, opilaneSet.perenimi, opilaneSet.synniaeg, opilaneSet.ryhm_ryhmId, opilaneSet.keskmine_hinne, ryhmSet.ryhmNimi, ryhmSet.osakond FROM opilaneSet CROSS JOIN ryhmSet"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kutsekool_RogovskiConnectionString2 %>" DeleteCommand="DELETE FROM [opilaneSet] WHERE [opilaneId] = @opilaneId" InsertCommand="INSERT INTO [opilaneSet] ([eesnimi], [perenimi], [synniaeg], [ryhm_ryhmId], [keskmine_hinne]) VALUES (@eesnimi, @perenimi, @synniaeg, @ryhm_ryhmId, @keskmine_hinne)" ProviderName="<%$ ConnectionStrings:kutsekool_RogovskiConnectionString2.ProviderName %>" SelectCommand="SELECT [opilaneId], [eesnimi], [perenimi], [synniaeg], [ryhm_ryhmId], [keskmine_hinne] FROM [opilaneSet]" UpdateCommand="UPDATE [opilaneSet] SET [eesnimi] = @eesnimi, [perenimi] = @perenimi, [synniaeg] = @synniaeg, [ryhm_ryhmId] = @ryhm_ryhmId, [keskmine_hinne] = @keskmine_hinne WHERE [opilaneId] = @opilaneId">
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
</p>
    </main>
</asp:Content>
