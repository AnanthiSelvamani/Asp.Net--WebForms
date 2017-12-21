
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="Display Books.aspx.cs" Inherits="Display_Books" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 157px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: larger;
        }
        .auto-style5 {
            width: 97px;
        }
        .auto-style6 {
            width: 202px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <strong><span class="auto-style4">List Of Books Available In The Application<br />
        <br />
        Search Books based on the Department ID.
        <br />
        <br />
        </span>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">DeptID</td>
                <td>Department Name</td>
            </tr>
            <tr>
                <td class="auto-style5">1</td>
                </strong>
                <td>Electronics And Communication Engineering</td>
            </tr>
            <strong>
            <tr>
                <td class="auto-style5">2</td>
                <td>Computer Science Engineering</td>
            </tr>
            <tr>
                <td class="auto-style5">3</td>
                <td>Electrical And Electronics Engineering</td>
            </tr>
            <tr>
                <td class="auto-style5">14</td>
                <td>Technology Management</td>
            </tr>
        </table>
        </strong><br />
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="DeptID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtDeptIDNo" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDeptIDNo" ErrorMessage=" * DepartmentID field cannot be null" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnShowBooks" runat="server" OnClick="btnShowBooks_Click" Text="Show Books" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="93px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblError" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:GridView ID="gv1" runat="server" AllowPaging="True" AllowSorting="True" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="4" GridLines="None" OnPageIndexChanging="gv1_PageIndexChanging" OnSorting="gv1_Sorting" Width="818px" Height="179px" OnRowCommand="gv1_RowCommand" OnSelectedIndexChanged="gv1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <p>
            &nbsp;</p>
        <p>
          
&nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</asp:Content>