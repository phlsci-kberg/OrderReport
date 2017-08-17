using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Data;

namespace OrderReport
{
    public partial class OrderReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToShortDateString();
            Label2.Text = DateTime.Now.ToLongTimeString();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime time = Convert.ToDateTime(e.Row.Cells[5].Text);
                TimeZoneInfo estZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
                DateTime estTime = TimeZoneInfo.ConvertTimeFromUtc(time, estZone);
                string finalTime = estTime.ToString("h:mm tt");
                e.Row.Cells[5].Text = finalTime;
                if (e.Row.Cells[8].Text == "P")
                {
                    e.Row.Cells[8].ForeColor = Color.SeaGreen;
                }
                else if (e.Row.Cells[8].Text == "L")
                {
                    e.Row.Cells[8].ForeColor = Color.Red;
                }
                else
                {
                    e.Row.Cells[8].ForeColor = Color.Black;
                }
            }


        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime time = Convert.ToDateTime(e.Row.Cells[5].Text);
                TimeZoneInfo estZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
                DateTime estTime = TimeZoneInfo.ConvertTimeFromUtc(time, estZone);
                string finalTime = estTime.ToString("h:mm tt");
                e.Row.Cells[5].Text = finalTime;

                if (e.Row.Cells[8].Text == "P")
                {
                    e.Row.Cells[8].ForeColor = Color.SeaGreen;
                }
                else if (e.Row.Cells[8].Text == "L")
                {
                    e.Row.Cells[8].ForeColor = Color.Red;
                }
                else
                {
                    e.Row.Cells[8].ForeColor = Color.Black;
                }
            }
        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime time = Convert.ToDateTime(e.Row.Cells[5].Text);
                TimeZoneInfo estZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
                DateTime estTime = TimeZoneInfo.ConvertTimeFromUtc(time, estZone);
                string finalTime = estTime.ToString("h:mm tt");
                e.Row.Cells[5].Text = finalTime;

                if (e.Row.Cells[8].Text == "P")
                {
                    e.Row.Cells[8].ForeColor = Color.SeaGreen;
                }
                else if (e.Row.Cells[8].Text == "L")
                {
                    e.Row.Cells[8].ForeColor = Color.Red;
                }
                else
                {
                    e.Row.Cells[8].ForeColor = Color.Black;
                }
            }
        }
        
        int shipmentCounts = 0;
        int fdcounts = 0;
        decimal perc = 0;
        protected void GridView4_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DateTime time = Convert.ToDateTime(e.Row.Cells[5].Text);
                TimeZoneInfo estZone = TimeZoneInfo.FindSystemTimeZoneById("Eastern Standard Time");
                DateTime estTime = TimeZoneInfo.ConvertTimeFromUtc(time, estZone);
                string finalTime = estTime.ToString("h:mm tt");
                e.Row.Cells[5].Text = finalTime;
                shipmentCounts += 1;
                if (e.Row.Cells[11].Text == "0")
                {
                    e.Row.Cells[0].ForeColor = Color.SeaGreen;
                    fdcounts += 1;
                }
                else if (e.Row.Cells[11].Text == "1")
                {
                    e.Row.Cells[0].ForeColor = Color.Red;
                }
                else
                {
                    e.Row.Cells[0].ForeColor = Color.Black;
                }
                
            }
            else if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells.Clear();
                TableCell tableCell = new TableCell();
                tableCell.Font.Bold = true;
                tableCell.HorizontalAlign = HorizontalAlign.Center;
                if (fdcounts == 0)
                {
                    perc = 0;

                }
                else
                {
                    perc = Math.Round((decimal.Divide(fdcounts, shipmentCounts)*100),1);

                }
                tableCell.Text = fdcounts.ToString() + " First Day Shipments out of " + shipmentCounts.ToString() + " Orders Shipped " + perc.ToString() + "% orders shipped First Day";
                tableCell.ColumnSpan = 12;
                e.Row.Cells.Add(tableCell);
            }

            FirstDayCounts.Text = fdcounts.ToString() + " First Day Shipments";
            Counts.Text = shipmentCounts.ToString() + " Orders Shipped";
            if (fdcounts == 0)
            {
                Percent.Text = "0%" + " of orders shipped First Day";
            }
            else
            {
                Percent.Text = perc.ToString() + "% of orders shipped First Day";
            }
        }

        // New methods for timers. Adjust as needed.
        protected void GridViewOneTimer_Tick(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }
        protected void GridViewTwoTimer_Tick(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }
        protected void GridViewThreeTimer_Tick(object sender, EventArgs e)
        {
            GridView3.DataBind();
        }

        protected void GridViewFourTimer_Tick(object sender, EventArgs e)
        {
            GridView4.DataBind();
        }
    }
}