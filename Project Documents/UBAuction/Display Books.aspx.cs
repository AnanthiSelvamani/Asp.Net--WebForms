using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Display_Books : System.Web.UI.Page
{
    public static int DeptNo = 0;
    public static int bookid;
    public string BIDValEntered;
    public string BIDPRICE;

    IBusiness ib = new BusinessLayer();
    protected void Page_Load(object sender, EventArgs e)
    {
        txtDeptIDNo.Focus();
        //Label2.Visible = false;
        //BIDValEntered.Visible = false;
        //btnBIDForBook.Visible = false;
        //btn_Clear.Visible = false;
    }
    protected void gv1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        gv1.PageIndex = e.NewPageIndex;
        DataSet ds = (DataSet)Session["EMP_TABLE"];
        gv1.DataSource = ds;
        gv1.DataBind();
        LblError.Text = "Current Page : " + (e.NewPageIndex + 1);
        LblError.Visible = true;


    }
    protected void gv1_Sorting(object sender, GridViewSortEventArgs e)
    {
        DataTable dt = (DataTable)Session["EMP_TABLE"];
        // Create a DataView from the DataTable.
        DataView dv = new DataView(dt);
        // The DataView provides an easy way to sort. Simply set the
        // Sort property with the name of the field to sort by.
        int dir = 0;
        LblError.Text = "Sort by " + e.SortExpression;
        LblError.Visible = true;

        if (ViewState["SORTDIRECTION"] != null)
        {
            dir = (int)ViewState["SORTDIRECTION"];
            if (dir == 0) ViewState["SORTDIRECTION"] = 1;
            else ViewState["SORTDIRECTION"] = 0;
        }
        else
        {
            ViewState["SORTDIRECTION"] = 1;
            dir = 0;
        }
        if (dir == 1)
            dv.Sort = e.SortExpression + " ASC";
        else
            dv.Sort = e.SortExpression + " DESC";
        // Rebind the data source and specify that it should be sorted
        // by the field specified in the SortExpression property.
        gv1.DataSource = dv;
        gv1.DataBind();
    }
    protected void btnShowBooks_Click(object sender, EventArgs e)
    {
        try
        {
            DeptNo = int.Parse(txtDeptIDNo.Text);
            DataSet ds = ib.GetDataSet(DeptNo);
            gv1.DataSource = ds.Tables[0];
            gv1.DataBind();
            Session["EMP_TABLE"] = ds.Tables[0];
        }
        catch (Exception ex)
        {
            LblError.Text = ex.Message;
        }

        //Label2.Visible = true;
        //BIDValEntered.Visible = true;
        //btnBIDForBook.Visible = true;
        //btn_Clear.Visible = true;

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDeptIDNo.Text = "";
        LblError.Text = "";
    }
    protected void gv1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void gv1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        //Label2.Visible = true;
        //BIDValEntered.Visible = true;
        //btnBIDForBook.Visible = true;
        //btn_Clear.Visible = true;
        //RequiredFieldValidator1.Visible = true;
        if (e.CommandName == "Select")
        {
            Int16 num = Convert.ToInt16(e.CommandArgument);


            BIDValEntered = gv1.Rows[num].Cells[1].Text;
            BIDPRICE = gv1.Rows[num].Cells[4].Text;
            string bidprice1 = "1";

            Session["BidValue"] = BIDValEntered;
            Session["BidPrice"] = bidprice1;

            Response.Redirect("BidForBook.aspx");
        }
    }
}
