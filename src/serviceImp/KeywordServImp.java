package serviceImp;
import java.util.HashMap;

import service.InsouUserService;
import service.KeywordService;
import dao.*;
import entity.Keyword;
public class KeywordServImp implements KeywordService {
	public KeywordServImp() {
		super();
	}
	private KeywordDAO keywordDao = new KeywordDAO();
	
	/**��֤�ؼ����Ƿ��ǲ��Ϸ��ؼ���result����1Ϊ�Ϸ���2Ϊ�Ƿ���3Ϊ�����쳣**/
	public int verifyKeyword(String kwcname) {
		return keywordDao.verifyKeyword(kwcname);
		
	}

	
	public int addUnpassKeyword(String name) {
		
		return 0;
	}

	
	public boolean deleteUnpassKeyword(String name) {
		
		return false;
	}

	
	public boolean findKeyword(Keyword keyword) {
		
		return false;
	}

	
	public int editKeyword(Keyword keyeord) {
		
		return 0;
	}

	
	public HashMap getKeywordList() {
		
		return null;
	}

	
	public HashMap getsearchKeywordList(String name) {
		
		return null;
	}
	
}
