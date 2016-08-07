﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Services;
using System.Text;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace ITP311
{
    /// <summary>
    /// Summary description for AdvSearch
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class AdvSearch : System.Web.Services.WebService
    {

        [WebMethod]
        public void advanceSearch()
        {
            List<PatientDAL> pList = new List<PatientDAL>();
            PatientBLL pBLL = new PatientBLL();
            pList = pBLL.advancedSearch();
            JavaScriptSerializer js = new JavaScriptSerializer();
            Context.Response.Write(js.Serialize(pList));
        }
    }
}
