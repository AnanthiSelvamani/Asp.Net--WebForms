using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IBusiness
/// </summary>
public interface IBusiness
{

    DataSet GetDataSet(int deptNo);
    string IsValidUser(string uname, string pwd);
    int adduser(string fn, string mn, string ln, string sex, string address, string number, string email, string userid, string pwd, string cpwd);
    //DataSet GetDataSet(int bID, int price);
    int addbooks(string btitle, string bDesc, string author, string isbn, string volume, string pricevalue, string department, string userID, string BidEndDate);
    DataSet GetDataSet(int bookid, int bookprice);
    int addBidValue(int bidValueEntered, string UserID, int price);
}