package demo.pojo;

import java.math.BigDecimal;

import javax.persistence.*;

import com.google.protobuf.Timestamp;

@Entity
@Table(name = "bills")
public class Bills {
	 @Id
	 @GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id_bill")
	 private int billId;
	@Column(name="id_customer")
	 private int customerId;
	@Column(name="created_at")
	 private Timestamp createdAt;
	@Column(name="total_price")
	 private BigDecimal totalPrice;
	
	
	
	public Bills() {
		
	}
	public Bills(int billId, int customerId, Timestamp createdAt, BigDecimal totalPrice) {
		super();
		this.billId = billId;
		this.customerId = customerId;
		this.createdAt = createdAt;
		this.totalPrice = totalPrice;
	}
	public int getBillId() {
		return billId;
	}
	public void setBillId(int billId) {
		this.billId = billId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public Timestamp getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	public BigDecimal getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}
   
}