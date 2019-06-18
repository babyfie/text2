package dao;

import java.util.List;

import Pojo.Houselist;
import Pojo.QueryVo;

public interface HouselistMapper {
	List<Houselist> selectAll();
	List<Houselist> selectAllCondition(Houselist houselist);
	List<Houselist> selectcondition(String status,String type,int bedroom,int bashroom,String city);
	public Integer findhouselistByVoCount(QueryVo vo);
	Houselist findhouseid(String houseid);
	void inserthouse(Houselist houselist);
	void deletehouse(int id);
	Houselist findid(int id);
	Houselist findhouseidupdate(Houselist houselist);
	void updatehouse(Houselist houselist);
	void updatehousestatus(Houselist houselist);
	public void deletehousebyhouseid(String house_id);
	public void updatestatus(Houselist houselist);
}
