package cn.goodjobs.cms.domain;

public class Users {
	
	private Long id;
	
	private String name;
	
	private String pass;
	
	private Integer age;
	
	private String ymx;
	
	/**
	 * @return the ymx
	 */
	public String getYmx() {
		return ymx;
	}

	/**
	 * @param ymx the ymx to set
	 */
	public void setYmx(String ymx) {
		this.ymx = ymx;
	}

	public Users(){
		
	}
	
	public Users(Long id){
		this.id = id;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}
}
