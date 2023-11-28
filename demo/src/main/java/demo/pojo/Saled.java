package demo.pojo;
import demo.feld.*;
import java.math.BigDecimal;

import javax.persistence.*;

import com.google.protobuf.Timestamp;
@IdClass(saledID.class)
@Entity
@Table(name = "saled")
public class Saled {
	@Id
	@Column(name="id_product")
	private int productId;
	@Id
	@Column(name="id_customer")
    private int customerId;
	@Column(name="saled_at")
    private Timestamp saledAt;
	@Column(name="name")
    private String name;
	@Column(name="price")
    private BigDecimal price;
	
	
	
	
	
	public Saled() {
		
	}
	public Saled(int productId, int customerId, Timestamp saledAt, String name, BigDecimal price) {
		super();
		this.productId = productId;
		this.customerId = customerId;
		this.saledAt = saledAt;
		this.name = name;
		this.price = price;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public Timestamp getSaledAt() {
		return saledAt;
	}
	public void setSaledAt(Timestamp saledAt) {
		this.saledAt = saledAt;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
   
}