package service;

import java.util.ArrayList;
import java.util.HashMap;

import entity.Keyword;


public interface KeywordService{
	int verifyKeyword(String kwcname);
	int addUnpassKeyword(String name);
	boolean deleteUnpassKeyword(String name) ;
	boolean findKeyword(Keyword keyword) ;
	int editKeyword(Keyword keyeord);
	HashMap getKeywordList();
	HashMap getsearchKeywordList(String name);		
}
