package com.pst.id.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import com.iu.utils.DB;
import com.pst.id.dto.imgDto;
public class imgDao {
	private static final String data_query = "select * from imgdetails where Place=?";
	public List<imgDto> getDataByPlace(String Place){
		Connection con = DB.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		imgDto dto=null;
		List<imgDto> list = new ArrayList<imgDto>();
		try{
			ps=con.prepareStatement(data_query);
			ps.setString(1, Place);
			rs=ps.executeQuery();
			while(rs.next()){
				dto = new imgDto();
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
