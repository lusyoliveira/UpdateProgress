using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    { }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        System.Threading.Thread.Sleep(3000);
       lblData.Text = String.Format("A data selecionada é {0:d}",

Calendar1.SelectedDate);
        
    }
    
}
