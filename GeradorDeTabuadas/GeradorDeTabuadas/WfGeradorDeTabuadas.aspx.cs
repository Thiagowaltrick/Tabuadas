using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GeradorDeTabuadas
{
    public partial class WfGeradorDeTabuadas : System.Web.UI.Page
    {
        Random random = new Random();

        protected void BtnGerarTabuadas_Click(object sender, EventArgs e)
        {
            if (TbGerarTabuadas.Text != "")
            {
                MakeTables(Convert.ToInt32(TbGerarTabuadas.Text));
            }
            else
            {
                TbGerarTabuadas.Focus();
                RVTbGerarTabuadas.IsValid = false;
                //ErrorBeep();
            }
        }

        protected void BtGerarTabuadasAleatorio_Click(object sender, EventArgs e)
        {
            TbGerarTabuadas.Text = random.Next(
                Convert.ToInt32(RVTbGerarTabuadas.MinimumValue),
                Convert.ToInt32(RVTbGerarTabuadas.MaximumValue))
                .ToString();
            TbGerarTabuadas.Focus();
            MakeTables(Convert.ToInt32(TbGerarTabuadas.Text));
        }

        public void MakeTables(int qdtTables)
        {
            for (int h = 1; h <= qdtTables; h++)
            {
                Table table = new Table
                {
                    CssClass = ColorTable(h) + " card"
                };

                for (int i = 1; i <= 10; i++)
                {
                    TableRow tableRow = new TableRow();
                    for (int j = 0; j < 2; j++)
                    {
                        TableCell tableCell = new TableCell();
                        if (j == 0)
                        {
                            tableCell.Text = h.ToString() + " * " + i.ToString() + " = ";
                        }
                        if (j == 1)
                        {
                            tableCell.Text = Convert.ToString(h * i);
                        }
                        tableRow.Cells.Add(tableCell);
                    }
                    table.Rows.Add(tableRow);
                }
                PhTables.Controls.Add(table);
            }
        }

        public void ErrorBeep()
        {
            Console.Beep(650, 90);
            Console.Beep(404, 100);
        }

        public string ColorTable(int numberTable)
        {
            if (numberTable % 2 == 0)
            {
                //par
                return "ColorTable";
            }
            else
            {
                return "NotColorTable";
            }
        }
    }
}