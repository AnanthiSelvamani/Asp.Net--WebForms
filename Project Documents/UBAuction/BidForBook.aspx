
<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeFile="BidForBook.aspx.cs" Inherits="BidForBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <%--<style type="text/css">
        .style1
        {
            width: 500px;
        }
    </style>--%>

    <style type="text/css">
        .auto-style1 {
            text-align: left;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 249px;
            text-align: left;
        }
        .auto-style6 {
            width: 215px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style2">
            <%-- <div class="auto-style1">
    
        BOOK BIDDING DETAILS</div>
        <asp:GridView ID="gv2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
            <RowStyle BackColor="White" ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <SortedAscendingCellStyle BackColor="#EDF6F6" />
            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
            <SortedDescendingCellStyle BackColor="#D6DFDF" />
            <SortedDescendingHeaderStyle BackColor="#002876" />
        </asp:GridView>--%>BOOK BIDDING DETAILS<br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style5">BookID :&nbsp;
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style1">BidingEndDate&nbsp; :<asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Book Title :<asp:Label ID="Label2" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style1">DeptID&nbsp; :<asp:Label ID="Label8" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Book Description :<asp:Label ID="Label3" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style1">UserID&nbsp; :<asp:Label ID="Label9" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Author :<asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style1">ISBN&nbsp; :<asp:Label ID="Label10" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Date Added :<asp:Label ID="Label5" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style1">Volume&nbsp; :
                            <asp:Label ID="Label11" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style5">Price :<asp:Label ID="Label6" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">List of Users Bidded For The Book</td>
                        <td class="auto-style1">
                            <asp:Label ID="LblError" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </div>
            <asp:GridView ID="gv2" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView>
        </div>




        <p>
            &nbsp;</p>
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label12" runat="server" Text="Enter the Bidding Amount: "></asp:Label>
&nbsp;</td>
                <td>
                    <asp:TextBox ID="TxtBidAmount" runat="server"></asp:TextBox>
&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    Enter User ID:</td>
                <td>
                    <asp:TextBox ID="txtUserID" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserID" ErrorMessage="* UserID field cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn_Clear" runat="server" Text="Clear" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblBidError" runat="server"></asp:Label>
                </td>
            </tr>
        </table>




     </form>
</asp:Content>
