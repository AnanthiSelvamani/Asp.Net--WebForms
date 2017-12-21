using System;

public partial class Default2 : System.Web.UI.Page
{
    IBusiness iba = new BusinessLayer();

    //string userid = null;
    //string password = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string username = TextBox1.Text;
            string password = TextBox2.Text;

            string uservalue = iba.IsValidUser((TextBox1.Text), (TextBox2.Text));

            if (uservalue == "")
            {
                LblErrorMessage.Text = "Invalid user";
            }
            else
            {
                //    Response.Redirect("Display Books.aspx")/*;*/

                Response.Redirect("Display Books.aspx");
            }

            //if (uservalue != null || uservalue != "")
            //{
            //    Response.Redirect("Display Books.aspx");
            //}

            //if (uservalue == null || uservalue == "")
            //{
            //    LblErrorMessage.Text = "Invalid user";
            //}
        }
        catch (Exception ex)
        {
            LblErrorMessage.Text = ex.Message;
        }

    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}