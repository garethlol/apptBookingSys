using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace ABS_1.DbConnect
{
    public class DbConnect
    {
    }

    public class Users
    {
        /* FOR LOCALHOST */
        const string conString = "Data Source=localhost;Initial Catalog=s3252820_wdt;Integrated Security=True";

        public static SqlDataReader GetUser()
        {
            SqlConnection con = new SqlConnection(conString);
            string selectString = "SELECT * FROM [USER]";
            SqlCommand cmd = new SqlCommand(selectString, con);
            con.Open();
            SqlDataReader dtr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dtr;
        }

        public static SqlDataReader GetBookings()
        {
            SqlConnection con = new SqlConnection(conString);
            string selectString = "SELECT * INTO TEMPTABLE FROM [BookingObj] ALTER TABLE TEMPTABLE DROP COLUMN ID SELECT * FROM TEMPTABLE DROP TABLE TEMPTABLE";
            SqlCommand cmd = new SqlCommand(selectString, con);
            con.Open();
            SqlDataReader dtr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dtr;
        }

        public void insertUser(string txtName, string txtUsername, string txtEmail, string txtPassword)
        {
            SqlConnection conn = new SqlConnection(conString);
            SqlCommand cmd = new SqlCommand("InsertUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@UserRealName", txtName);
            cmd.Parameters.AddWithValue("@UserName", txtUsername);
            cmd.Parameters.AddWithValue("@UserEmailAddress", txtEmail);
            cmd.Parameters.AddWithValue("@UserPassword", txtPassword);

            conn.Open();

            cmd.ExecuteNonQuery();

            conn.Close();
        }

        public static SqlDataReader getRoomBooking(DateTime startDate)
        {
            SqlConnection con = new SqlConnection(conString);
            string start = startDate.ToString("yyyy-MM-dd");
            // string selectString = "SELECT * FROM [BookingObj] WHERE [BookingObj].[Date]='" + start + "'";

            string selectString = "SELECT * INTO TEMPTABLE FROM [BookingObj] WHERE [BookingObj].[Date]='" + start + "' ALTER TABLE TEMPTABLE DROP COLUMN Date SELECT * FROM TEMPTABLE DROP TABLE TEMPTABLE";
            SqlCommand cmd = new SqlCommand(selectString, con);
            con.Open();
            SqlDataReader dtr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            return dtr;
        }
    }
}