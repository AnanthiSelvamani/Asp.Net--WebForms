using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class BidForBook : System.Web.UI.Page
{
    IBusiness ib = new BusinessLayer();
    public static int bookid = 0;

    //string BookIDValue = (string)(Session["BidValue"]);
    //string BookIDPrice = (string)(Session["BidPrice"]);
    protected void Page_Load(object sender, EventArgs e)
    {
        string BookIDValue = (string)(Session["BidValue"]);
        string BookIDPrice = (string)(Session["BidPrice"]);

        bookid = Convert.ToInt32(BookIDValue);
        int bookprice = Convert.ToInt32(BookIDPrice);
        DataSet ds = ib.GetDataSet(bookid, bookprice);

        if (ds == null)
        {
            LblError.Text = "No user has bidded for the book so far";
        }
        else
        {
            gv2.DataSource = ds.Tables[0];
            gv2.DataBind();
            Session["EMP_TABLE"] = ds.Tables[0];
            TxtBidAmount.Focus();
        }
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            string bidValueEntered = TxtBidAmount.Text;
            int bookprice = Convert.ToInt32(bidValueEntered);

            string userid = txtUserID.Text;
            int rows = 0;

            rows = ib.addBidValue(bookprice, userid, bookid);

            if (rows == 0)
            {
                LblBidError.Text = "Bid Vaue Not entered in table. Please Recheck your bid amount entered";
            }
            else
            {
                Response.Redirect("BidForBook.aspx");
                LblBidError.Text = "Bid Value Successfully added";

            }

        }
        catch (Exception ex)
        {
            LblBidError.Text = ex.Message;
        }
    }
}


