using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DBLayer
/// </summary>
public class DBLayer : IDBAccess
{
    string connStr = "oracle_ole_conn";
    public DBLayer()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    public System.Data.DataSet GetDataSet(string sql)
    {
        string connstr =
        ConfigurationManager.ConnectionStrings[connStr].ConnectionString;
        OleDbConnection conn = new OleDbConnection(
        ConfigurationManager.ConnectionStrings[connStr].ConnectionString);
        DataSet ds = new DataSet();
        try
        {
            conn.Open();


            OleDbDataAdapter da = new OleDbDataAdapter(sql, conn);
            da.Fill(ds);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }
        return ds;
    }
    public object GetSingleAnswer(string sql)
    {
        OleDbConnection conn = new OleDbConnection(
        ConfigurationManager.ConnectionStrings[connStr].ConnectionString);
        object obj = null;
        try
        {

            OleDbCommand cmd = new OleDbCommand(sql, conn);
            conn.Open();
            obj = cmd.ExecuteScalar();
            conn.Close();

        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            //conn.Close();
        }
        return obj;
    }

    public int InsertUpdateDelete(string sql)
    {
        OleDbConnection conn = new OleDbConnection(
        ConfigurationManager.ConnectionStrings[connStr].ConnectionString);
        int rows = 0;
        try
        {
            conn.Open();
            OleDbCommand cmd = new OleDbCommand(sql, conn);
            rows = cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            conn.Close();
        }
        return rows;
    }


}