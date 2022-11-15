package com.example.demo;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.UniqueConstraint;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor


public class Purchase {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int purchaseid;
	private String username;
	private String productid;
	private String productcategory;
	private String productname;
	private String productprice;
	
	private String orderno;
	@DateTimeFormat(pattern="dd-MM-yyyy")
	private Date dateofpurchase;
	
	
}
