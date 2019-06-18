package service;

import java.util.List;

import Pojo.Houselist;
import Pojo.Picture;
import Pojo.PictureExample;
import Pojo.QueryVo;

public interface HouselistService {
	List<Houselist> selectAll();
	List<Houselist> selectAllCondition(Houselist houselist);
	List<Houselist> search(String status,String type,int bedroom,int bashroom,String city);
	Houselist findhouseid(String houseid);
	void inserthouse(Houselist houselist);
	void deletehouse(int id);
	Houselist findid(int id);
	Houselist findhouseidupdate(Houselist houselist);
	void updatehouse(Houselist houselist);
	void updatehousestatus(Houselist houselist);
	public void deletehousebyhouseid(String house_id);
	void insert(Picture record);
	List<Picture> selectByExample(PictureExample example);
}
