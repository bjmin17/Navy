package com.biz.navy.domain;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class SizeVO {
	
	private long s_code ;// number PRIMARY KEY,
	private String s_p_code; // VARCHAR(6) ,
	private String s_size; // VARCHAR(255),

}
