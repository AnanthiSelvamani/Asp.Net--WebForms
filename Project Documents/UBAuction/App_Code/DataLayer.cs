using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DataLayer
/// </summary>
public class DataLayer : IData
{
    IDBAccess idba = new DBLayer();

    public DataLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int addBidValue(int bidValueEntered, string userID, int bookid)
    {
        int rows = 0;
        try
        {
            string bdate = "2016/06/27";
            string sql = "Insert into BIDDING_DETAILS(BidingUser,BidingDate,Price,BookID) values('"
                + userID + "',TO_DATE('" + bdate + "','YYYY/MM/DD'),'" + bidValueEntered + "','"
                + bookid + "')";

            rows = idba.InsertUpdateDelete(sql);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return rows;
    }

    public int addbooks(string btitle, string bDesc, string author, string isbn, string volume, string pricevalue, string department, string userID, string BidEndDate)
    {
        int rows = 0;

        try
        {

            int noofrows = 0;

            object value;

            string sql = "Select count(*) from Books";

            value = idba.GetSingleAnswer(sql);

            noofrows = Convert.ToInt32(value);

            noofrows = noofrows + 1;

            string newvalue = "2015/12/07";



            string sql1 = "Insert into BOOKS(BookID,BookTitle,Description,Author,ISBN ,Volume,Price,DeptID,UserID,DateAdded,BidingEndDate)VALUES ('" + noofrows + "','"
                + btitle + "','" + bDesc + "','" + author + "','" + isbn + "','" + volume + "','" + pricevalue + "','"
                + department + "','" + userID + "',TO_DATE('" + newvalue + "','YYYY/MM/DD'),TO_DATE('" + BidEndDate + "','YYYY/MM/DD'))";


            rows = idba.InsertUpdateDelete(sql1);
        }
        catch (Exception ex)
        {
            throw ex;

        }
        return rows;
    }
    public int adduser(string fn, string mn, string ln, string sex, string address, string number, string email, string userid, string pwd, string cpwd)
    {
        int rows = 0;
        char normaluserflag = 'Y';
        char adminflag = 'N';
        //int phnumber = Convert.ToInt(number);

        try
        {


            string sql = "Insert into USERS VALUES ('" + fn + "','" + mn + "','" + ln + "','" + address + "','" + sex + "','"
                + email + "','" + normaluserflag + "','" + adminflag + "','" + userid + "','" + pwd + "','" + number + "')";



            rows = idba.InsertUpdateDelete(sql);
        }
        catch (Exception ex)
        {
            throw ex;

        }
        return rows;
    }
    public DataSet GetDataSet(int deptNo)
    {

        DataSet ds = new DataSet();
        try
        {
            string sql = "select BookID,BookTitle,Description,Price,DateAdded,BidingEndDate  from BOOKS  where DeptID    = " +
            deptNo;
            ds = idba.GetDataSet(sql);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return ds;
    }
    public DataSet GetDataSet(int bookid, int bookprice)
    {
        DataSet ds = new DataSet();
        try
        {
            string sql = "select BookID,BidingUser,Price,BidingDate from BIDDING_DETAILS where BookID= '" + bookid + "'";
            ds = idba.GetDataSet(sql);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return ds;
    }
    public string IsValidUser(string uname, string pwd)
    {
        string res = "";

        try
        {


            string sql = "Select Fname  from USERS   where UserID    = '" + uname +
                 "' and PassWord = '" + pwd + "'";

            object obj = idba.GetSingleAnswer(sql);
            if (obj != null)
                res = obj.ToString();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return res;

    }
}



