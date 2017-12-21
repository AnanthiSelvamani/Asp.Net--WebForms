
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="AddBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
          
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style4 {
            width: 200px;
        }
        .auto-style5 {
            width: 272px;
            text-align: right;
        }
        .auto-style6 {
            width: 272px;
            text-align: left;
        }
        .auto-style8 {
            text-align: left;
        }
        .auto-style9 {
            width: 100%;
            text-align: left;
        }
        .auto-style10 {
            width: 180px;
            text-align: left;
        }
        .auto-style11 {
            width: 180px;
        }
        .auto-style12 {
            width: 200px;
            text-align: left;
        }
    </style>
</asp:Content>








<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
        <table class="style1">
            <tr>
                <td class="auto-style10">Book Title</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Book_TITLE" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Book_TITLE" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Description</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Description" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Description" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Author</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Author" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Author" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">ISBN Number</td>
                <td class="auto-style6">
                    <asp:TextBox ID="ISBN_NUMBER" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ISBN_Number" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">Volume Number</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Volume_Number" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td id="Price" class="auto-style10">Price </td>
                <td class="auto-style8">
                    <asp:TextBox ID="Price" runat="server" Width="241px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style9">
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Bidding End Date</td>
                <td class="auto-style6">
                    <asp:TextBox ID="Bidding_End_Date" runat="server" Width="178px"></asp:TextBox>
                    <%--<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Calendar2.jpg" OnClick="ImageButton2_Click" Width="18px" />
                    --%><br />
                   <%-- <asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
                  --%>  <br />
                </td>
                <td class="auto-style8">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">Department</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Department" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Department" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">User&nbsp; ID</td>
                <td class="auto-style5">
                    <asp:TextBox ID="Userid" runat="server" Width="241px"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Userid" ErrorMessage="Field should not be empty" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style11"></td>
                <td class="auto-style6">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="149px" />
                    <input id="Reset1" type="reset" value="reset" /></td>
                <td class="auto-style4">
                    <asp:Label ID="LblErrorAddBooks" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</asp:Content>