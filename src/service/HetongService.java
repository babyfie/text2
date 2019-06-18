package service;

import java.util.List;

import Pojo.Hetong;

public interface HetongService {

	public void inserthetong(Hetong hetong);
	public Hetong findhetong(String house_id);
	public List<Hetong> findallhetong();
	public void updatehetong(Hetong hetong);
	public void deletehetong(String house_id);
}
