package hdfc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LoginDao
{
	String account,pwd,email,balance,name,custid;
	Connection con;PreparedStatement st;ResultSet rs;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCustid() {
		return custid;
	}
	public void setCustid(String custid) {
		this.custid = custid;
	}
	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBalance() {
		return balance;
	}

	public void setBalance(String balance) {
		this.balance = balance;
	}
	
	public LoginDao()
	{
		try
		{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/student","student","student123");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	protected boolean login()  
	{
		String log="select * from bank where account=? and pwd=?";
	try 
	{
		
	st= con.prepareStatement(log);
	st.setString(1, account);
	st.setString(2, pwd);
	rs=st.executeQuery();
	if(rs.next()==true)
	{
	account=rs.getString("account");
	name=rs.getString("name");
	return true;
	}
	}
	catch(Exception e) 
	{
		e.printStackTrace();
	}
	return false;
	}
	
	protected boolean register()
	{
		String reg="insert into bank values(?,?,?,?,?,?)";
		try
		{
		st=con.prepareStatement(reg);
		st.setString(1, name);
		st.setString(2, account);
		st.setString(3, balance);
		st.setString(4, custid);
		st.setString(5, pwd);
		st.setString(6, email);
		int s=st.executeUpdate();
		if(s!=0)
		{
			return true;
		}
		}
		catch(Exception e)
		{
			
		}
		return false;
	}
	

    public boolean checkBalance() {
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM bank WHERE ACCOUNT=?");
            pst.setString(1, account);
            ResultSet rst = pst.executeQuery();
            if (rst.next() == true) {
                balance = rst.getString("balance");
                return true;

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean changePassword() {
        try {
            PreparedStatement pst = con.prepareStatement("UPDATE bank SET PWD=? WHERE ACCOUNT=?");
            pst.setString(2, account);
            pst.setString(1, pwd);
            int row = pst.executeUpdate();
            if (row != 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean transfer(String tacc, String tamt) {
        try {
            PreparedStatement pst = con.prepareStatement("UPDATE bank SET BALANCE=BALANCE-? WHERE ACCOUNT=?");
            pst.setString(1, tamt);
            pst.setString(2, account);
            int row = pst.executeUpdate();
            if (row != 0) {
                row = 0;
                PreparedStatement st = con.prepareStatement("UPDATE bank SET BALANCE=BALANCE+? WHERE ACCOUNT=?");
                st.setString(1, tamt);
                st.setString(2, tacc);
                row = st.executeUpdate();
                if (row != 0) {
                    row = 0;
                    PreparedStatement spst = con.prepareStatement("INSERT INTO bankstatement VALUES(?,?)");
                    spst.setString(1, tacc);
                    spst.setString(2, tamt);
                    row = spst.executeUpdate();
                    if (row != 0) {
                        return true;
                    } else {
                        return false;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public ArrayList getStatement() {
        ArrayList al = new ArrayList();
        try {
            PreparedStatement pst = con.prepareStatement("SELECT * FROM bankstatement WHERE ACCOUNT=?");
            pst.setString(1, account);
            ResultSet rst = pst.executeQuery();
            while(rst.next() == true) {
                String temp = rst.getString("AMT");
                al.add(temp);
            }
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return al;
    }
    
}
