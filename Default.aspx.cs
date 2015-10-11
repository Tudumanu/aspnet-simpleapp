using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{

    double dolarReal = 3.94;
    double dolarEuro = 0.89;

    double realDolar = 0.25;
    double realEuro = 0.23;

    double euroDolar = 1.12;
    double euroReal = 4.42;

    protected void Page_Load(object sender, EventArgs e)
    {
        //## Conversão de Moedas ##
        DolarReal.Text = dolarReal.ToString();
        DolarEuro.Text = dolarEuro.ToString();

        RealDolar.Text = realDolar.ToString();
        RealEuro.Text = realEuro.ToString();

        EuroDolar.Text = euroDolar.ToString();
        EuroReal.Text = euroReal.ToString();

        string prefixoTxt = "ValorConversao: ";
        ValorConversao.Text = prefixoTxt + FromInput.Text;

        switch (FromList.SelectedValue)
        {
            case "dolar":
                switch (ToList.SelectedValue)
                {
                    case "real":
                        setConvertedValue(dolarReal);
                        break;
                    case "euro":
                        setConvertedValue(dolarEuro);
                        break;
                }
                break;

            case "real":
                switch (ToList.SelectedValue)
                {
                    case "dolar":
                        setConvertedValue(realDolar);
                        break;
                    case "euro":
                        setConvertedValue(realEuro);
                        break;
                }
                break;
            case "euro":
                switch (ToList.SelectedValue)
                {
                    case "dolar":
                        setConvertedValue(euroDolar);
                        break;
                    case "real":
                        setConvertedValue(euroReal);
                        break;
                }
                break;
        }


        //## Pitágoras ##
        HipotenusaValue.Text = "";

        if (isNumericString(CatetoBInput.Text) && isNumericString(CatetoCInput.Text))
            HipotenusaValue.Text = Math.Sqrt(Math.Pow(Convert.ToDouble(CatetoBInput.Text), 2) + Math.Pow(Convert.ToDouble(CatetoCInput.Text), 2)).ToString();
            
    }

    private void setConvertedValue(double val)
    {
        if (isNumericString(FromInput.Text))
            ValorConversao.Text = "ValorConversao: " + (Convert.ToDouble(FromInput.Text) * val);
    }

    private bool isNumericString(string str)
    {
        double n;
        bool isNumeric = double.TryParse(str, out n);

        return isNumeric;
    }
}