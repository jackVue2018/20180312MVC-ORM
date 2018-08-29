using SqlSugar;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DAL
{
     public   class BaseDAL
    {
         SqlSugarClient db = new SqlSugarClient(new ConnectionConfig() { 
                     ConnectionString = "", //必填
                     DbType = DbType.MySql, //必填
                     IsAutoCloseConnection = true, //默认false
                     InitKeyType=InitKeyType.SystemTable });
       




    }
}
