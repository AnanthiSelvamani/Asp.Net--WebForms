using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BusinessLayer
/// </summary>
public class BusinessLayer : IBusiness
{
    IData id = new DataLayer();
    public BusinessLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public int addBidValue(int bidValueEntered, string userID, int price)
    {
        int rows = 0;
        try
        {
            rows = id.addBidValue(bidValueEntered, userID, price);
        }
        catch (Exception)
        {
            throw;

        }
        return rows;
    }

    public int addbooks(string btitle, string bDesc, string author, string isbn, string volume, string pricevalue, string department, string userID, string BidEndDate)
    {
        int rows = 0;
        try
        {
            rows = id.addbooks(btitle, bDesc, author, isbn, volume, pricevalue, department, userID, BidEndDate);
        }
        catch (Exception)
        {
            throw;

        }
        return rows;
    }
    public int adduser(string fn, string mn, string ln, string sex, string address, string number, string email, string userid, string pwd, string cpwd)
    {
        int rows = 0;
        try
        {
            rows = id.adduser(fn, mn, ln, sex, address, number, email, userid, pwd, cpwd);
        }
        catch (Exception)
        {
            throw;

        }
        return rows;
    }
    public DataSet GetDataSet(int deptNo)
    {
        DataSet ds = new DataSet();
        try
        {
            ds = id.GetDataSet(deptNo);
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
            ds = id.GetDataSet(bookid, bookprice);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return ds;
    }

    //public DataSet GetDataSet(int bID, int price)
    //{
    //    DataSet ds = new DataSet();
    //    try
    //    {
    //        ds = id.GetDataSet(bID,price);
    //    }
    //    catch (Exception ex)
    //    {
    //        throw ex;
    //    }
    //    return ds;
    //}

    public string IsValidUser(string uname, string pwd)
    {
        string res = "";
        try
        {
            //res = idau.IsValidUser(uname, pwd);
            res = id.IsValidUser(uname, pwd);
        }
        catch (Exception)
        {
            throw;
        }
        return res;
    }



}
