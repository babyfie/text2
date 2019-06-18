package controller;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.collections.map.HashedMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Houselist;
import Pojo.Picture;
import service.HouselistService;
import service.PictureService;
@Controller

public class HoustlistController {
	@Autowired
	private HouselistService houselistService;
	@Autowired
	private PictureService pictureService;
	
	
	@RequestMapping("/houselist")
	public String houselist(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="2") Integer pageSize){
		
		 PageHelper.startPage(page, pageSize);
		List<Houselist> houselist=houselistService.selectAll();
	PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
		
				
		model.addAttribute("p", p);
		model.addAttribute("houselist",houselist);
		model.addAttribute("mainPage","houselist.jsp");
		return "zuke/main";
	}
	
	
	//显示具体房源
	@RequestMapping("/hdetail")
	public String house(Model model,String houseid){
		
		Houselist findhouseid = houselistService.findhouseid(houseid);
		List<Houselist> all = houselistService.selectAll();
		HashedMap map = new HashedMap();
		HashedMap map1 = new HashedMap();
		
		for (Houselist houselist : all) {
			List<Picture> housePic = pictureService.findPictureByHouseid(houselist.getHouseid());
			if(housePic != null && housePic.size()!=0) {
				map1.put(houselist.getHouseid(),"/text2/upload/"+housePic.get(0).getPicurl());
				}
		}
		
		List<Picture> housePicture = pictureService.findPictureByHouseid(houseid);
		if(housePicture != null && housePicture.size()!=0) {
			map.put(houseid, "/text2/upload/"+housePicture.get(0).getPicurl());
		}

		model.addAttribute("picturemap",map);
		model.addAttribute("picmap",map1);
		model.addAttribute("findhouseid",findhouseid);
		model.addAttribute("all",all);
		return "zuke/details";
	}
	
	//后端房源列表
	@RequestMapping("/ahouselist")
	public String ahouselist(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="5") Integer pageSize){

		 PageHelper.startPage(page, pageSize);
		List<Houselist> houselist=houselistService.selectAll();
		PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
			
		model.addAttribute("p", p);
		model.addAttribute("houselist",houselist);

		model.addAttribute("mainPage","ahouselist.jsp");
		return "admin/main1";
	}
	
	//前端房源列表
		@RequestMapping("/house")
		public String house(Model model,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="5") Integer pageSize,HttpServletRequest request){
			String values = request.getParameter("status");
			if(values!=null  && values.equals("房屋状态")) {
				values = null;
			}
			
			String type = request.getParameter("type");
			if(type!=null && type.equals("所有类型")) {
				type = null;
			}
			
			
			String city = request.getParameter("city");
			if(city!=null && city.equals("城市")) {
				city = null;
			}
			
			String bedroom = request.getParameter("bedroom");
			if(bedroom!=null && bedroom.equals("卧室")) {
				bedroom = null;
			}
			
			
			String bashroom = request.getParameter("bashroom");
			if(bashroom!=null && bashroom.equals("浴室")) {
				bashroom = null;
			}
			
			
			Integer bedroomInt =null;
			Integer bashroomInt =null;
			if(bedroom != null) {
				bedroomInt =Integer.parseInt(bedroom);
			}
			if(bashroom != null) {
				bashroomInt =Integer.parseInt(bashroom);
			}
					
			
			List<Houselist> houselist1;
			
			Houselist house2 = new Houselist();
			house2.setStatus(values);
			house2.setType(type);
			house2.setCity(city);
			house2.setBashroom(bedroomInt);
			house2.setBashroom(bashroomInt);
			houselist1 = houselistService.selectAllCondition(house2);
			
			//分页 
			PageHelper.startPage(page, pageSize);
			List<Houselist> houselist = houselistService.selectAll();

			PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
			HashedMap map = new HashedMap();
			
			for (Houselist house : houselist) {
				List<Picture> housePicture = pictureService.findPictureByHouseid(house.getHouseid());
				if(housePicture != null && housePicture.size()!=0) {
					map.put(house.getHouseid(), "/text2/upload/"+housePicture.get(0).getPicurl());
					}
				}
			model.addAttribute("p", p);
			model.addAttribute("houselist",houselist);
			model.addAttribute("picmap",map);
			
			return "properties";
		}
		
		@RequestMapping("/toproperties")
		public String toproperties(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="5") Integer pageSize) {
			PageHelper.startPage(page, pageSize);
			List<Houselist> houselist = houselistService.selectAll();
			
		
			
			PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
			HashedMap map = new HashedMap();
			
			for (Houselist house : houselist) {
				List<Picture> housePicture = pictureService.findPictureByHouseid(house.getHouseid());
				if(housePicture != null && housePicture.size()!=0) {
					map.put(house.getHouseid(), "/text2/upload/"+housePicture.get(0).getPicurl());
					}
				}
			model.addAttribute("p", p);
			model.addAttribute("houselist",houselist);
			model.addAttribute("picmap",map);
			
			return "properties";
		}
		
		
		
		@RequestMapping("/userhouse")
		public String Userhouse(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="5") Integer pageSize){
			
			 PageHelper.startPage(page, pageSize);
			List<Houselist> houselist=houselistService.selectAll();
			//分页 
			PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
			HashedMap map = new HashedMap();
			
			for (Houselist house : houselist) {
				List<Picture> housePicture = pictureService.findPictureByHouseid(house.getHouseid());
				if(housePicture != null && housePicture.size()!=0) {
					map.put(house.getHouseid(), "/text2/upload/"+housePicture.get(0).getPicurl());
				}
				
			}
			model.addAttribute("p", p);
			model.addAttribute("houselist",houselist);
			model.addAttribute("picmap",map);
			return "/zuke/properties";
		}
	
		
		
	
	/*//测试图片回显
	@RequestMapping("/showHouseDetail")
	public String showHouseDetail(HttpServletRequest request ,String houseId ){
					
		
		
		List<Houselist> allHouse = houselistService.selectAll();	
		HashedMap map = new HashedMap();
		
		for (Houselist house : allHouse) {
			List<Picture> pictures= pictureService.findPictureByHouseid(house.getHouseid());
			if(pictures == null || pictures.size() == 0) {
				//没有这个图片
			}else {
				map.put(house.getHouseid(), pictures.get(0).getPicurl());
			}			
		}
		
		request.setAttribute("houses", allHouse);
		request.setAttribute("picMap", map);
		
		return "img/img";
	
	}
	*/
	
	
	//添加新房源的时候,通过houseid进行判断,该房源是否已经存在
	@RequestMapping("/addhouse")
	public String addhouse(Model model ,Houselist houselist){
		
		String houseid=houselist.getHouseid();
		Houselist houselist1=houselistService.findhouseid(houseid);
		if(houselist1!=null){
			model.addAttribute("error","该房屋id已存在");
			model.addAttribute("houselist",houselist);
			model.addAttribute("mainPage","addhouse.jsp");
			return "admin/main1";
		}else{
			model.addAttribute("error","添加成功");
			houselistService.inserthouse(houselist);
			model.addAttribute("houselist",houselist);
			model.addAttribute("mainPage","addhouse.jsp");
		return "admin/main1";
	}
		}
	
	
	//显示添加房源的页面
	@RequestMapping("/toaddhousePage")
	public String ToaddHousePage(Model model) {
		model.addAttribute("mainPage","addhouse.jsp");//放入域对象中  //
		return "admin/main1";
	}
	
	//添加房源
	@RequestMapping("/toaddhouse")
	public String toaddhoust(Model model,Houselist houselist,String picurl){
		houselistService.inserthouse(houselist);
		Picture picture = new Picture();
		picture.setPicurl(picurl);
		picture.setHouseid(houselist.getHouseid());
		pictureService.insertPicture(picture);
		model.addAttribute("mainPage","insertSuccess.jsp");
		return "admin/main1";
		
	}
	//删除房源
	@RequestMapping("/deletehouse")
	public String deletehouse(Integer id){
		houselistService.deletehouse(id);
		//重定向
		return "redirect:ahouselist.action";
	}
	
	
	//查看房源
	@RequestMapping("/toahouselist")
	public String toahouselist(){
		//转发
		return "ahouselist.action";
	}
	//通过房源id查找房源
	@RequestMapping("/findid")
	public String findid(Integer id,Model model){
		Houselist list=houselistService.findid(id);
		model.addAttribute("houselist",list);
		model.addAttribute("mainPage", "changehouse.jsp");
		return "admin/main1";
	}
	
	
	//通过房源id更新房源
	@RequestMapping("/findhouseidupdate")
	public String findhouseidupdate(Houselist houselist,Model model){
		Houselist list=houselistService.findhouseidupdate(houselist);
		if(list!=null){
			model.addAttribute("houselist",houselist);
			model.addAttribute("mainPage", "changehouse.jsp");
			model.addAttribute("error","该房屋id已存在");
			return "admin/main1";
		}
		else{
			houselistService.updatehouse(houselist);
			model.addAttribute("houselist",houselist);
			model.addAttribute("mainPage", "changehouse.jsp");
			model.addAttribute("error","更新成功");
			return "admin/main1";
		}
	}
	
	
	@RequestMapping("/findhouseid")
	public String findhouseid(String houseid,Model model){
		Houselist houselist=houselistService.findhouseid(houseid);
		model.addAttribute("houselist",houselist);
		model.addAttribute("mainPage", "changehouse.jsp");
		return "admin/main1";
	}
	
}
