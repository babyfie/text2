package controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Apply;
import Pojo.Houselist;
import Pojo.User;
import Pojo.Userlist;
import Pojo.Zulist;
import service.ApplyService;
import service.HouselistService;
import service.UserlistService;

@Controller
public class ApplyController {
	@Autowired
	private UserlistService userlistService;
	@Autowired
	private HouselistService houselistService;
	@Autowired
	private ApplyService applyService;
	//申请看房
	@RequestMapping("/applycheckuserlist")
	public String applycheckuserlist(HttpSession httpSession,Model model,Integer id){
		User user1= (User) httpSession.getAttribute("user");
		Integer user_id=user1.getId();
		Userlist list=userlistService.findhasuserlist(user_id);
		if(list==null){
			model.addAttribute("error", "applycheck");
			return "redirect:houselist.action";
		}else{
			Houselist houselist=houselistService.findid(id);
			houselist.setStatus("已被申请");
			houselistService.updatehousestatus(houselist);
			Integer userlist_id=list.getId();
			Apply apply=new Apply();
			apply.setHouse_id(houselist.getHouseid());
			apply.setAddress(houselist.getAddress());
			apply.setPrice(houselist.getPrice());
			apply.setArea(houselist.getArea());
			apply.setStatus("申请中");
			apply.setUserlist_id(userlist_id);
			applyService.insertapply(apply);
			model.addAttribute("error", "applysuccess");
			return "redirect:houselist.action";
			
			
		}
		
	}
	//管理员查看申请看房列表
	@RequestMapping("/findapplylist")
	public String findapplylist(Model model,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="2") Integer pageSize) throws Exception{
		 PageHelper.startPage(page, pageSize);
		List<Apply> applylist=applyService.findapplylist();
				
		PageInfo<Apply> p=new PageInfo<Apply>(applylist);
		model.addAttribute("applylist",applylist);
		model.addAttribute("p", p);
		model.addAttribute("mainPage","applylist.jsp");
		return "admin/main1";
	}
	
	//管理员查看申请看房列表
		@RequestMapping("/myapply")
		public String myapply(Model model,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="2") Integer pageSize) throws Exception{
			 PageHelper.startPage(page, pageSize);
			List<Apply> applylist=applyService.myapply();
					
			PageInfo<Apply> p=new PageInfo<Apply>(applylist);
			model.addAttribute("applylist",applylist);
			model.addAttribute("p", p);
			model.addAttribute("mainPage","applylist.jsp");
			return "zuke/my-properties";
		}
		
		@RequestMapping("/shoucang")
		public String shoucang(Model model,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="2") Integer pageSize) throws Exception{
			 PageHelper.startPage(page, pageSize);
			List<Apply> applylist=applyService.myapply();
					
			PageInfo<Apply> p=new PageInfo<Apply>(applylist);
			model.addAttribute("applylist",applylist);
			model.addAttribute("p", p);
			model.addAttribute("mainPage","applylist.jsp");
			return "zuke/shoucang";
		}
		
	
	
		//申请房源
		@RequestMapping("/findapply")
		public void findapply(Model model,String houseid,Integer id,@RequestParam(required=false,defaultValue="1") Integer page,
	            @RequestParam(required=false,defaultValue="2") Integer pageSize,
	            HttpServletResponse response) throws Exception{
			PageHelper.startPage(page, pageSize);
			//先根据houseid获取房源信息
			Houselist houselist = new Houselist();
			Houselist findhouseid = houselistService.findhouseid(houseid);
			
			//获取房源信息后
			String address = findhouseid.getAddress();
			double area = findhouseid.getArea();
			double price = findhouseid.getPrice();
			String status = findhouseid.getStatus();
			String housename = findhouseid.getHousename();
			//获取user_id
			Userlist userlist = userlistService.findhasuserlist(id);
			Integer user_id = userlist.getUser_id();
			//将上面的数据全部插入数据库
			Apply apply = new Apply();
			apply.setHousename(housename);
			apply.setHouse_id(houseid);
			apply.setAddress(address);
			apply.setArea(area);
			apply.setPrice(price);
			apply.setStatus(status);
			apply.setUserlist_id(user_id);
			applyService.insertapply(apply);
			
			model.addAttribute("apply",apply);
		
			response.sendRedirect("/text2/userhouse.action");
		}

		
		@RequestMapping("/applychangehousestatus")
	public String applychangehousestatus(HttpSession httpSession,Model model,String house_id)throws Exception{
		User user1= (User) httpSession.getAttribute("user");
		Integer user_id=user1.getId();
		Userlist userlist=userlistService.findhasuserlist(user_id);
		Houselist houselist=houselistService.findhouseid(house_id);
		houselist.setStatus("已凭租");
		houselistService.updatehousestatus(houselist);
		Zulist zulist=new Zulist();
		zulist.setHouse_id(house_id);
		zulist.setPrice(houselist.getPrice());
		zulist.setAddress(houselist.getAddress());
		
		return "zuke/properties";
	}
	//管理员拒绝看房申请
	@RequestMapping("/refuseapply")
	public String refuseapply(String house_id,Model model){
		Houselist houselist=new Houselist();
		houselist.setHouseid(house_id);
		houselist.setStatus("未凭租");
		applyService.refuseapply(houselist);
		
		return "redirect:findapplylist.action";
	}
	
	//租客查看自己的 看房申请
	@RequestMapping("/getmyapply")
	public String getmyapply(Model model,HttpSession httpSession,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="2") Integer pageSize){
		User user1= (User) httpSession.getAttribute("user");
		Userlist userlist=userlistService.findhasuserlist(user1.getId());
		PageHelper.startPage(page, pageSize);
		List<Userlist> list=userlistService.getmyapply(userlist.getId());
		PageInfo<Userlist> p=new PageInfo<Userlist>(list);
		model.addAttribute("userlist", list);
		model.addAttribute("p", p);
		model.addAttribute("mainPage", "myapply.jsp");
		return "zuke/main";
	}
	
	@RequestMapping("/deleteapply")
	public String deleteapply(String house_id){
		applyService.deletebyhouse_id(house_id);
		return "zuke/my-properties";
	}
	
	
}
