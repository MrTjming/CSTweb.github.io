﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_exchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            databind();
            //initDDL();
        }

    }

    protected void databind()
    {
        using (var db = new CstwebEntities())
        {
            var se = from it in db.exchange
                     select it;
            Repeater1.DataSource = se.ToList();
            Repeater1.DataBind();
        }
    }

    //protected void initDDL()
    //{
    //    using (var db = new CstwebEntities())
    //    {
    //        var d1 = (from it in db.title
    //                  select it).ToList();
    //        var d2 = (from it in db.teachlevel
    //                  select it).ToList();
    //        int i = 0;
    //        for (i = 0; i < d1.Count; i++)
    //        {
    //            DDLTitle.Items.Add(new ListItem(d1[i].name, d1[i].id.ToString()));
    //        }
    //        for (i = 0; i < d2.Count; i++)
    //        {
    //            DDLLevel.Items.Add(new ListItem(d2[i].name, d2[i].id.ToString()));
    //        }
    //    }
    //}
    protected void BtnADD_Click(object sender, EventArgs e)
    {
        Response.Redirect("exchangeeditor.aspx");
    }
    protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "del")
        {
            using (var db = new CstwebEntities())
            {
                int id = Convert.ToInt32(e.CommandArgument);
                exchange tea = db.exchange.FirstOrDefault(a => a.id == id);
                
                db.exchange.Remove(tea);
                
                db.SaveChanges();
                Response.Write("<script>alert('删除成功');window.location = 'exchangelist.aspx';</script>");
            }
        }
    }
}