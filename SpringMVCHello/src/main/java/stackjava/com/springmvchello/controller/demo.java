package stackjava.com.springmvchello.controller;

public class demo {
public static void main(String[] args) {
	student st = new student(1, "huy");
	String hello = sayHello(st);
	System.out.println(hello);
}

public static String sayHello(student st) {
	// TODO Auto-generated method stub
	return "hello "+st.getName();
}
public static void check(Integer id) {
	if (id != null) {
		System.out.println("ok");
	} else {
		System.out.println("no ok");
	}
}
}
class student{
	int id;
	String name;
	public student(int id, String name) {
		super();
		this.id = id;
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}