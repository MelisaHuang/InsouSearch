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
	static String keywordname = " ";//ʵ�ʹؼ���
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
		String keyword = request.getParameter("keyword");//��ȡ�û�������ؼ���
		String kwcname = " ";//��¼�û������ʵ�����Ĺؼ���
		System.out.println("������ؼ���Ϊ=" + keyword);
		kwcname = keyword; //�Ȱ��û�����Ĺؼ��ʴ���ʵ�ʹؼ���keywordname		
		KeywordServImp k = new KeywordServImp();
		//���׷ִ�
		if(keyword.equals("��װ")||keyword.equals("nanzhuang")||keyword.equals("��װ��")||keyword.equals("��װ��")||keyword.equals("��װ��")||keyword.equals("�� װ"))
			{
				keywordname = "NanZhuang";
				kwcname = "��װ";
				result = 1;
			}
		if(keyword.equals("Ůװ")||keyword.equals("nvzhuang")||keyword.equals("Ůװ��")||keyword.equals("Ůװ��")||keyword.equals("Ůװ��")||keyword.equals("Ů װ"))
			{
				keywordname="NvZhuang";
				kwcname = "Ůװ";
				result = 1;
			}
		if(keyword.equals("ŷ����Ů")||keyword.equals("ŷ���Ը���Ů")||keyword.equals("�Ը���Ů")||keyword.equals("ŷ�� ��Ů"))
		{
			keywordname="OuMeiXingGanMeiNv";
			kwcname = "ŷ���Ը���Ů";
			result = 1;
		}
		if(keyword.equals("����")||keyword.equals("ʱ�н���"))
		{
			keywordname="ShiShangJiePai";
			kwcname = "ʱ�н���";
			result = 1;
		}
		if(keyword.equals("ŷ������")||keyword.equals("���� ŷ��"))
		{
			keywordname="OuMeiJiePai";
			kwcname = "ŷ������";
			result = 1;
		}
		if(keyword.equals("�պ�����")||keyword.equals("���� �պ�"))
		{
			keywordname="RiHanJiePai";
			kwcname = "�պ�����";
			result = 1;
		}
		if(keyword.equals("˧��"))
		{
			keywordname="ShuaiGe";
			kwcname = "˧��";
			result = 1;
		}
		if(keyword.equals("��Ů"))
		{
			keywordname="MeiNv";
			kwcname = "��Ů";
			result = 1;
		}
		if(keyword.equals("ʱװ��")||keyword.equals("ŷ��ʱװ��"))
		{
			keywordname="OuMeiShiZhuangZhou";
			kwcname = "ŷ��ʱװ��";
			result = 1;
		}
		if(keyword.equals("�ų�")||keyword.equals("gucci")||keyword.equals("Gucci"))
		{
			keywordname="Gucci";
			kwcname = "�ų�";
			result = 1;
		}
		if(keyword.equals("���ζ�")||keyword.equals("channel")||keyword.equals("Channel"))
		{
			keywordname="XiangNaiEr";
			kwcname = "���ζ�";
			result = 1;
		}
		if(keyword.equals("���ʦ")||keyword.equals("��װ���ʦ"))
		{
			keywordname="FuZhuangSheJiShi";
			kwcname = "��װ���ʦ";
			result = 1;
		}
		if(keyword.equals("����")||keyword.equals("��")||keyword.equals("�ݳ�Ʒ����"))
		{
			keywordname="SheChiBaoBao";
			kwcname = "��װ���ʦ";
			result = 1;
		}
		if(keyword.equals("ʱ��logo")||keyword.equals("logo")||keyword.equals("�ݳ�Ʒ��logo"))
		{
			keywordname="SheChiPingLogo";
			kwcname = "�ݳ�logo";
			result = 1;
		}
		if(keyword.equals("ţ�п�")||keyword.equals("����")||keyword.equals("��"))
		{
			keywordname="NiuZaiKu";
			kwcname = "ţ�п�";
			result = 1;
		}
		if(keyword.equals("��ȹ")||keyword.equals("����ȹ")||keyword.equals("ȹ��"))
		{
			keywordname="DuanQun";
			kwcname = "��ȹ";
			result = 1;
		}
		if(keyword.equals("����")||keyword.equals("�·�")||keyword.equals("��װ"))
		{
			keywordname="WeiYi";
			kwcname = "����";
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
