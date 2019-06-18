package service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pojo.Houselist;
import Pojo.Picture;
import Pojo.PictureExample;
import dao.HouselistMapper;
//import dao.PictureMapper;

@Service
public class HouselistServiceImpl implements HouselistService {
	
	@Autowired
	private HouselistMapper houselistMapper;
	
	//@Autowired
	//private PictureMapper pictureMapper;

	@Override
	public List<Houselist> selectAll() {
		List<Houselist> houselist=houselistMapper.selectAll();
		return houselist;
	}

	@Override
	public Houselist findhouseid(String houseid) {
		Houselist houselist=houselistMapper.findhouseid(houseid);
		return houselist;
	}

	@Override
	public void inserthouse(Houselist houselist) {
		houselistMapper.inserthouse(houselist);
	}

	@Override
	public void deletehouse(int id) {
		houselistMapper.deletehouse(id);
		
	}

	@Override
	public Houselist findid(int id) {
		Houselist list=houselistMapper.findid(id);
		return list;
	}

	@Override
	public Houselist findhouseidupdate(Houselist houselist) {
		Houselist list=houselistMapper.findhouseidupdate(houselist);
		return list;
	}

	@Override
	public void updatehouse(Houselist houselist) {
		houselistMapper.updatehouse(houselist);
		
	}

	@Override
	public void updatehousestatus(Houselist houselist) {
		// TODO Auto-generated method stub
		houselistMapper.updatehousestatus(houselist);
	}

	@Override
	public void deletehousebyhouseid(String house_id) {
		// TODO Auto-generated method stub
		houselistMapper.deletehousebyhouseid(house_id);
	}

	@Override
	public void insert(Picture record) {
		//pictureMapper.insert(record);
	}

	@Override
	public List<Picture> selectByExample(PictureExample example) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Houselist> search(String status, String type, int bedroom, int bashroom, String city) {
		List<Houselist> list = houselistMapper.selectcondition(status, type, bedroom, bashroom, city);
		return list;
	}

	@Override
	public List<Houselist> selectAllCondition(Houselist houselist) {
		List<Houselist> resultList;
		resultList = houselistMapper.selectAllCondition(houselist);
		return resultList;
	}

}
