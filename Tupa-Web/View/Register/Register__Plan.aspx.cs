﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tupa_Web.View.Register
{
    public partial class Register__Plan : System.Web.UI.Page
    {
        private string uid { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        { 
            uid = Request.QueryString["uid"];
        }

        protected void btnContinuar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Register/Verify?uid=" + uid);
        }
    }
}