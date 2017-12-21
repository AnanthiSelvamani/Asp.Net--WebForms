using System;

/// <summary>
/// Summary description for IDBAccess
/// </summary>
public interface IDBAccess
{
    System.Data.DataSet GetDataSet(String sql);
    //object GetScalar(string sql);
    int InsertUpdateDelete(string sql);
    object GetSingleAnswer(string sql);

}