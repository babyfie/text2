package service;

import java.util.List;

import Pojo.Picture;


public interface PictureService {
	public  boolean insertPicture(Picture picture);
	public  List<Picture> findPictureByHouseid(String houseId);
}
