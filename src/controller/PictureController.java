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
         * �ϴ�ͼƬ
         */
        //ͼƬ�ϴ��ɹ��󣬽�ͼƬ�ĵ�ַд�����ݿ�
//        String filePath = "D:\\upload";//����ͼƬ��·��
        String filePath = request.getSession().getServletContext().getRealPath("/upload");
        
        
        //��ȡԭʼͼƬ����չ��
        String originalFilename = file.getOriginalFilename();
        String namesuffix  = originalFilename.substring(originalFilename.lastIndexOf("."));
        //�µ��ļ�����
        
        String uuid = UUID.randomUUID().toString();
        String newFileName = uuid +namesuffix;
        File targetFile = new File(filePath,newFileName);  //��װ�ϴ��ļ�λ�õ�ȫ·��
        file.transferTo(targetFile);//�ѱ����ļ��ϴ�����װ�ϴ��ļ�λ�õ�ȫ·��
        return newFileName; 
    }
	
	
	
	
	
	
	@RequestMapping("/imgList")
	public String imgList(Model model , PictureExample example) {
		List<Picture> imgList= houselistService.selectByExample(example);
		model.addAttribute("imgList", imgList);
		return "allimg";
		
	}
}
