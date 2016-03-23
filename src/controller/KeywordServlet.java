package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import imageOperating.Play;
import serviceImp.KeywordServImp;

public class KeywordServlet extends HttpServlet{
	static String keywordname = " ";//实际关键词
	static int result = 0;
	public KeywordServlet() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request,response);
	
	}
	
	private void processRequest(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		HttpSession session = request.getSession();
		String keyword = request.getParameter("keyword");//获取用户所输入关键词
		String kwcname = " ";//记录用户输入的实际中文关键词
		System.out.println("已输入关键词为=" + keyword);
		kwcname = keyword; //先把用户输入的关键词传给实际关键词keywordname		
		KeywordServImp k = new KeywordServImp();
		//简易分词
		if(keyword.equals("男装")||keyword.equals("nanzhuang")||keyword.equals("男装的")||keyword.equals("男装啊")||keyword.equals("男装噢")||keyword.equals("男 装"))
			{
				keywordname = "NanZhuang";
				kwcname = "男装";
				result = 1;
			}
		if(keyword.equals("女装")||keyword.equals("nvzhuang")||keyword.equals("女装的")||keyword.equals("女装啊")||keyword.equals("女装噢")||keyword.equals("女 装"))
			{
				keywordname="NvZhuang";
				kwcname = "女装";
				result = 1;
			}
		if(keyword.equals("欧美美女")||keyword.equals("欧美性感美女")||keyword.equals("性感美女")||keyword.equals("欧美 美女"))
		{
			keywordname="OuMeiXingGanMeiNv";
			kwcname = "欧美性感美女";
			result = 1;
		}
		if(keyword.equals("街拍")||keyword.equals("时尚街拍"))
		{
			keywordname="ShiShangJiePai";
			kwcname = "时尚街拍";
			result = 1;
		}
		if(keyword.equals("欧美街拍")||keyword.equals("街拍 欧美"))
		{
			keywordname="OuMeiJiePai";
			kwcname = "欧美街拍";
			result = 1;
		}
		if(keyword.equals("日韩街拍")||keyword.equals("街拍 日韩"))
		{
			keywordname="RiHanJiePai";
			kwcname = "日韩街拍";
			result = 1;
		}
		if(keyword.equals("帅哥"))
		{
			keywordname="ShuaiGe";
			kwcname = "帅哥";
			result = 1;
		}
		if(keyword.equals("美女"))
		{
			keywordname="MeiNv";
			kwcname = "美女";
			result = 1;
		}
		if(keyword.equals("时装周")||keyword.equals("欧美时装周"))
		{
			keywordname="OuMeiShiZhuangZhou";
			kwcname = "欧美时装周";
			result = 1;
		}
		if(keyword.equals("古驰")||keyword.equals("gucci")||keyword.equals("Gucci"))
		{
			keywordname="Gucci";
			kwcname = "古驰";
			result = 1;
		}
		if(keyword.equals("香奈儿")||keyword.equals("channel")||keyword.equals("Channel"))
		{
			keywordname="XiangNaiEr";
			kwcname = "香奈儿";
			result = 1;
		}
		if(keyword.equals("设计师")||keyword.equals("服装设计师"))
		{
			keywordname="FuZhuangSheJiShi";
			kwcname = "服装设计师";
			result = 1;
		}
		if(keyword.equals("包包")||keyword.equals("包")||keyword.equals("奢侈品包包"))
		{
			keywordname="SheChiBaoBao";
			kwcname = "服装设计师";
			result = 1;
		}
		if(keyword.equals("时尚logo")||keyword.equals("logo")||keyword.equals("奢侈品牌logo"))
		{
			keywordname="SheChiPingLogo";
			kwcname = "奢侈logo";
			result = 1;
		}
		if(keyword.equals("牛仔裤")||keyword.equals("裤子")||keyword.equals("裤"))
		{
			keywordname="NiuZaiKu";
			kwcname = "牛仔裤";
			result = 1;
		}
		if(keyword.equals("短裙")||keyword.equals("超短裙")||keyword.equals("裙子"))
		{
			keywordname="DuanQun";
			kwcname = "短裙";
			result = 1;
		}
		if(keyword.equals("卫衣")||keyword.equals("衣服")||keyword.equals("服装"))
		{
			keywordname="WeiYi";
			kwcname = "卫衣";
			result = 1;
		}
		
	
		
		/**
		Play playImage = new Play();
		playImage.init(keywordname);
		**/
		int vresult = k.verifyKeyword(kwcname);
		
		if(result == 1 && vresult == 1)
			request.getRequestDispatcher("/SearchResult.jsp?keywordname=" + keywordname).forward(request, response);
		else
			request.getRequestDispatcher("/errorPage.jsp").forward(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		processRequest(request,response);	
	}

	
	public void init() throws ServletException {
	}
	

}
