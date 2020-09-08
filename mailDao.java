package com.pst.mc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import com.iu.utils.DB;
import com.pst.mc.dto.mailDto;
public class mailDao {
	private static final String mail_query = "select * from imgdetails where email=?";
	public List<mailDto> getDataByEmail(String Email) {
		Connection con = DB.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		mailDto dto=null;
		List<mailDto> list = new ArrayList<mailDto>();
		try{
			ps=con.prepareStatement(mail_query);
			ps.setString(1, Email);
			rs=ps.executeQuery();
			while(rs.next()){
				dto = new mailDto();
				dto.setId(rs.getInt(1));
				dto.setPlace(rs.getString(2));
				dto.setArea(rs.getString(3));
				dto.setEmail(rs.getString(4));
				dto.setImage(Base64.getEncoder().encodeToString(rs.getBytes(5)));
				list.add(dto);
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}
}
