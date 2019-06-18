package Pojo;

public class Houselist {
  private Integer id;
  private String houseid;
  private String address;
  private double area;
  private double price;
  private String status;
  private Integer bedroom ;
  private Integer bashroom;
  private Integer  poast; //” ±‡
  private String detail;
  private int isair =0;
  private String name;
  private String email;
  private String phone;
  private String housename;
  private String type;
  private String city;
  private Integer iswashing =0;
  private Integer iskitchen =0 ;
  

  public Houselist() {
	// TODO Auto-generated constructor stub
}
 
  
  
public Houselist(Integer id, String houseid, String address, double area, double price, String status, Integer bedroom,
		Integer bashroom, Integer poast, String detail, int isair, String name, String email, String phone,
		String housename, String type, String city, Integer iswashing, Integer iskitchen) {
	super();
	this.id = id;
	this.houseid = houseid;
	this.address = address;
	this.area = area;
	this.price = price;
	this.status = status;
	this.bedroom = bedroom;
	this.bashroom = bashroom;
	this.poast = poast;
	this.detail = detail;
	this.isair = isair;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.housename = housename;
	this.type = type;
	this.city = city;
	this.iswashing = iswashing;
	this.iskitchen = iskitchen;
}



public String getType() {
	return type;
}
public void setType(String type) {
	this.type = type;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public Integer getId() {
	return id;
}
public void setId(Integer id) {
	this.id = id;
}
public String getHouseid() {
	return houseid;
}
public void setHouseid(String houseid) {
	this.houseid = houseid;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public double getArea() {
	return area;
}
public void setArea(double area) {
	this.area = area;
}
public double getPrice() {
	return price;
}
public void setPrice(double price) {
	this.price = price;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public Integer getBedroom() {
	return bedroom;
}
public void setBedroom(Integer bedroom) {
	this.bedroom = bedroom;
}
public Integer getBashroom() {
	return bashroom;
}
public void setBashroom(Integer bashroom) {
	this.bashroom = bashroom;
}
public Integer getPoast() {
	return poast;
}
public void setPoast(Integer poast) {
	this.poast = poast;
}
public String getDetail() {
	return detail;
}
public void setDetail(String detail) {
	this.detail = detail;
}
public int getIsair() {
	return isair;
}
public void setIsair(int isair) {
	this.isair = isair;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public Integer getIswashing() {
	return iswashing;
}
public void setIswashing(Integer iswashing) {
	this.iswashing = iswashing;
}
public Integer getIskitchen() {
	return iskitchen;
}
public void setIskitchen(Integer iskitchen) {
	this.iskitchen = iskitchen;
}

public String getHousename() {
	return housename;
}
public void setHousename(String housename) {
	this.housename = housename;
}

@Override
public String toString() {
	return "Houselist [id=" + id + ", houseid=" + houseid + ", address=" + address + ", area=" + area + ", price="
			+ price + ", status=" + status + ", bedroom=" + bedroom + ", bashroom=" + bashroom + ", poast=" + poast
			+ ", detail=" + detail + ", isair=" + isair + ", name=" + name + ", email=" + email + ", phone=" + phone
			+ ", housename=" + housename + ", type=" + type + ", city=" + city + ", iswashing=" + iswashing
			+ ", iskitchen=" + iskitchen + "]";
}

}
