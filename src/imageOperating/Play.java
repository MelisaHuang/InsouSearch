package imageOperating;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



class FileName implements FilenameFilter 
{  
	public  boolean accept(File dir,String name)
   {  boolean boo=false;
      if(name.endsWith(".jpg")||name.endsWith(".JPG"))
         boo=true;
      return boo;
   }              
}
public class Play 
{   
	int imageNumber=0,max;//imageNumber:循环数组的下标   max:图片数量：max个.jpg文件
	String pictureName[],playImage,playBigImage;
	static String imagePath=" ";  //实际路径 
	static String keywordname = " ";//实际关键词
	static int result = 0;
	
	public void init(String keyword)
	{  		
		if(keyword == "nanzhuang")
		{
			imagePath = "/Users/thinkpad/Downloads/Myeclipse/WorkSpace/.metadata/.me_tcat7/webapps/insou/images/nanzhuang";
			keywordname = "nanzhuang";
			
		}
		if(keyword == "nvzhuang")
		{
			imagePath= "/Users/thinkpad/Downloads/Myeclipse/WorkSpace/.metadata/.me_tcat7/webapps/insou/images/nvzhuang";
			keywordname = "nanzhuang";
		}
		
		File dir=new File(imagePath);
		pictureName=dir.list(new FileName());
		max=pictureName.length;//图片数量：max个.jpg文件
	}
	
	public void setImageNumber(int n)//设置循环数组的下标imageNumber  取值范围：0~max-1
	{  
		if(n<0)
			n=max-1;
		if(n==max)
			n=0; 
		imageNumber=n;
	}
	
	public int getImageNumber()
	{  
		return imageNumber;
	}
	public int getMax()
	{  
		return max;
	}

	public String getPlayImage()
	{  
		playImage=new String("<img class=lazy"+" "+"thumb_photo"+" width=225"+" title="+imageNumber+" src=images/pixel.gif"+" data-original=images/"+keywordname+"/"+pictureName[imageNumber]+" "+" ></img>");
		return playImage; 
	}

	/**
	public String getPlayBigImage()
	{  
		playBigImage=new String("<img class=img src=images/nanzhuang/"+pictureName[imageNumber]+" "+" ></img>");
		return playImage; 
	}  
	**/
	
}
