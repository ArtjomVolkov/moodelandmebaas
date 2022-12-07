<%@ Page Title="Eksam" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="moodelandmebaas.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Koolieksam tulemus.</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="eksamID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="478px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="oppeaine" HeaderText="oppeaine" SortExpression="oppeaine" />
                <asp:BoundField DataField="kuupaev" HeaderText="kuupaev" SortExpression="kuupaev" />
                <asp:BoundField DataField="opilane" HeaderText="opilane" SortExpression="opilane" />
                <asp:BoundField DataField="hinne" HeaderText="hinne" SortExpression="hinne" />
                <asp:CommandField DeleteText="Kustuta" ShowDeleteButton="True" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:tarpv21ConnectionString1 %>" DeleteCommand="DELETE FROM [EksamSet] WHERE [eksamID] = @eksamID" InsertCommand="INSERT INTO [EksamSet] ([kuupaev], [oppeaine], [opilane], [hinne]) VALUES (@kuupaev, @oppeaine, @opilane, @hinne)" SelectCommand="SELECT [eksamID], [kuupaev], [oppeaine], [opilane], [hinne] FROM [EksamSet]" UpdateCommand="UPDATE [EksamSet] SET [kuupaev] = @kuupaev, [oppeaine] = @oppeaine, [opilane] = @opilane, [hinne] = @hinne WHERE [eksamID] = @eksamID">
            <DeleteParameters>
                <asp:Parameter Name="eksamID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="kuupaev" Type="DateTime" />
                <asp:Parameter Name="oppeaine" Type="String" />
                <asp:Parameter Name="opilane" Type="String" />
                <asp:Parameter Name="hinne" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="kuupaev" Type="DateTime" />
                <asp:Parameter Name="oppeaine" Type="String" />
                <asp:Parameter Name="opilane" Type="String" />
                <asp:Parameter Name="hinne" Type="Int32" />
                <asp:Parameter Name="eksamID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <h3>Lisamine andmed.</h3>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="eksamID" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" GridLines="None" Height="50px" Width="125px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
            <EditRowStyle BackColor="#999999" />
            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="eksamID" HeaderText="eksamID" InsertVisible="False" ReadOnly="True" SortExpression="eksamID" />
                <asp:BoundField DataField="oppeaine" HeaderText="oppeaine" SortExpression="oppeaine" />
                <asp:TemplateField HeaderText="kuupaev" SortExpression="kuupaev">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("kuupaev") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate='<%# Bind("kuupaev") %>' Width="423px">
                            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                            <DayStyle BackColor="#CCCCCC" />
                            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                            <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
                            <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        </asp:Calendar>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("kuupaev") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="opilane" HeaderText="opilane" SortExpression="opilane" />
                <asp:BoundField DataField="hinne" HeaderText="hinne" SortExpression="hinne" />
                <asp:CommandField CancelText="Loobu" InsertText="Lisa" NewText="Lisa" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:DetailsView>

    </p>
</asp:Content>
