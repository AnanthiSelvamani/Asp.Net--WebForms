using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddBooks : System.Web.UI.Page
{

    IBusiness iba = new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    Calendar1.Visible = false;
        //    Calendar2.Visible = false;
        //}
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Redirect("DetailedBookDescription.aspx");

        try
        {
            string btitle = Book_TITLE.Text;
            string bDesc = Description.Text;
            string author = Author.Text;
            string isbn = ISBN_NUMBER.Text;
            string volume = Volume_Number.Text;
            string pricevalue = Price.Text;
            string department = Department.Text;
            string userID = Userid.Text;
            string BidEndDate = Bidding_End_Date.Text;



            int rows = iba.addbooks(btitle, bDesc, author, isbn, volume, pricevalue, department, userID, BidEndDate);

            if (rows == 0)
            {
                LblErrorAddBooks.Text = "Books Not Added. Please Check the Details Entered";
            }
            else
            {
                LblErrorAddBooks.Text = "Books Added Successfully";
            }
        }
        catch (Exception ex)
        {
            LblErrorAddBooks.Text = ex.Message;
        }
    }




}


//protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
//{
//    if (Calendar1.Visible = false)
//    {
//        Calendar1.Visible = true;
//    }
//    else
//    {
//        Calendar1.Visible = false;
//    }
//}

//protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
//{
//    if (Calendar2.Visible = false)
//    {
//        Calendar2.Visible = true;
//    }
//    else
//    {
//        Calendar2.Visible = false;
//    }
//}
