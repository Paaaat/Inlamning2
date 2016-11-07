using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleInalmning2
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            string selected = "";
            Console.WriteLine("1: Insert cutsomer \n2: Insert product \n3: Update product price \n(Select with nummbers)");
            try
            {
                int selection = int.Parse(Console.ReadLine());

                if (selection > 3)
                {
                    Console.WriteLine("Select a number between 1-3");
                }

                if (selection == 1)
                {
                    Console.WriteLine("CustomerID: ");
                    string ID = Console.ReadLine();
                    Console.WriteLine("Company name: ");
                    string companyName = Console.ReadLine();
                    Console.WriteLine("Contact name: ");
                    string contactName = Console.ReadLine();
                    Console.WriteLine("Phonenumber");
                    string phone = Console.ReadLine();
                    try
                    {
                        string cns = @"Server=(localdb)\MSSQLLocalDB;Database=NORTHWND;Trusted_Connection=Yes";
                        SqlConnection cn = new SqlConnection(cns);
                        cn.Open();
                        SqlCommand cmd = cn.CreateCommand();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "InsertCustomers";
                        cmd.Parameters.AddWithValue("@CustomerID", ID);
                        cmd.Parameters.AddWithValue("@CompanyName", companyName);
                        cmd.Parameters.AddWithValue("@ContactName", contactName);
                        cmd.Parameters.AddWithValue("@Phone", phone);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        Console.WriteLine("Customer " + contactName + " was added");
                    }
                    catch
                    {
                        Console.WriteLine("Customer with that ID already exists");
                    }
                }
                else if (selection == 2)
                {
                    Console.WriteLine("Product name: ");
                    string productName = Console.ReadLine();
                    Console.WriteLine("Unit price: ");
                    string unitPrice = Console.ReadLine();

                    try
                    {
                        string cns = @"Server=(localdb)\MSSQLLocalDB;Database=NORTHWND;Trusted_Connection=Yes";
                        SqlConnection cn = new SqlConnection(cns);
                        cn.Open();
                        SqlCommand cmd = cn.CreateCommand();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "InsertProducts";
                        cmd.Parameters.AddWithValue("@ProductName", productName);
                        cmd.Parameters.AddWithValue("@UnitPrice", unitPrice);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        Console.WriteLine("Product: " + productName + " was added");
                    }
                    catch
                    {
                        Console.WriteLine("Something went wrong");
                    }
                }
                else if (selection == 3)
                {
                    try
                    {
                        using (SqlConnection connection = new SqlConnection(@"Server=(localdb)\MSSQLLocalDB;Database=NORTHWND;Trusted_Connection=Yes"))
                        using (SqlCommand command = connection.CreateCommand())
                        {
                            command.CommandText = "select ProductID, ProductName from Products";
                            connection.Open();
                            using (var reader = command.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    Console.WriteLine(reader.GetInt32(0) + ": " + (reader.GetString(1)));
                                }
                            }
                        }

                        Console.WriteLine("Select the ID of the product you want to edit");
                        selected = Console.ReadLine();
                        Console.WriteLine("Select the new Price for the product: ");
                        string newPrice = Console.ReadLine();

                        string cns = @"Server=(localdb)\MSSQLLocalDB;Database=NORTHWND;Trusted_Connection=Yes";
                        SqlConnection cn = new SqlConnection(cns);
                        cn.Open();
                        SqlCommand cmd = cn.CreateCommand();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.CommandText = "ProductsUpdate";
                        cmd.Parameters.AddWithValue("@ProductID", selected);
                        cmd.Parameters.AddWithValue("@UnitPrice", newPrice);
                        cmd.ExecuteNonQuery();
                        cn.Close();
                        Console.WriteLine("Price changed to:" + newPrice);
                    }
                    catch
                    {
                        Console.WriteLine("Something went wrong");
                    }
                }
            }
            catch
            {
                Console.WriteLine("Select a valid number");
            }
            Console.ReadLine();
        }
    }
}