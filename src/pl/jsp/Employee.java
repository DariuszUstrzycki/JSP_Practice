package pl.jsp;


public class Employee implements Person {

	private String name;
	private int id;
	private Address address;
	private String rank;

	public Employee() {
	}
	
	public Employee(String name, int id, String rank) {
		this.name = name;
		this.id = id;
		this.rank = rank;
	}

	@Override
	public String getName() {
		return this.name;
	}

	@Override
	public void setName(String nm) {
		this.name = nm;
	}
	
	public String getRank() {
		return rank;
	}

	public void setRank(String rank) {
		this.rank = rank;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Address getAddress() {
		return address;
	}

	public void setAddress(Address address) {
		this.address = address;
	}
	
	@Override
	public String toString(){
		return "ID="+id+",Name="+name+",Address="+address;
	}
}
