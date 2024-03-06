package com.ssafy.manager;

import java.util.ArrayList;
import java.util.List;

import com.ssafy.dto.Person;

// 메모리에 직접 저장해서 관리할 DB같은 용도로 만든 파일
// 실글턴으로 관리하자
public class PersonManager {
	// 싱글턴 구현
	private List<Person> list = new ArrayList<>();
	private static PersonManager manager = new PersonManager();
	
	private PersonManager() {}
	
	public static PersonManager getInstance() {
		return manager;
	}
	
	// 등록, 반환용 함수
	public void regist(Person p) {
		list.add(p);
	}
	
	public List<Person> getAll(){
		return list;
	}
}
