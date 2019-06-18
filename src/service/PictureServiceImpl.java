package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pojo.Picture;
import Pojo.PictureExample;
import Pojo.PictureExample.Criteria;
import dao.PictureMapper;

@Service
public class PictureServiceImpl implements PictureService{

	@Autowired
	PictureMapper pictureMapper;
	
	
	@Override
	public boolean insertPicture(Picture picture) {
		
		pictureMapper.insert(picture);
		return false;
	}


	@Override
	public List<Picture> findPictureByHouseid(String houseId) {

		PictureExample pictureExample = new PictureExample();
		Criteria houseIdEq = pictureExample.createCriteria();
		houseIdEq.andHouseidEqualTo(houseId);
		List<Picture> pictureList = pictureMapper.selectByExample(pictureExample);
		return pictureList;
	}

}
