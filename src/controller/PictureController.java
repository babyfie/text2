package controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import Pojo.Picture;
import Pojo.PictureExample;
import service.HouselistService;

@Controller
public class PictureController {
	@Autowired
	private HouselistService houselistService ;
	
	
	
	@ResponseBody
	@RequestMapping("/addImg")
    public String fileUpload(MultipartFile file,Picture picture, ModelMap map,HttpServletRequest request) throws IOException {

        /**
         * 上传图片
         */
        //图片上传成功后，将图片的地址写到数据库
//        String filePath = "D:\\upload";//保存图片的路径
        String filePath = request.getSession().getServletContext().getRealPath("/upload");
        
        
        //获取原始图片的拓展名
        String originalFilename = file.getOriginalFilename();
        String namesuffix  = originalFilename.substring(originalFilename.lastIndexOf("."));
        //新的文件名字
        
        String uuid = UUID.randomUUID().toString();
        String newFileName = uuid +namesuffix;
        File targetFile = new File(filePath,newFileName);  //封装上传文件位置的全路径
        file.transferTo(targetFile);//把本地文件上传到封装上传文件位置的全路径
        return newFileName; 
    }
	
	
	
	
	
	
	@RequestMapping("/imgList")
	public String imgList(Model model , PictureExample example) {
		List<Picture> imgList= houselistService.selectByExample(example);
		model.addAttribute("imgList", imgList);
		return "allimg";
		
	}
}
