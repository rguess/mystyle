package org.guess.core;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.SequenceGenerator;

@MappedSuperclass
public abstract class IdEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "oracle_id")
	@SequenceGenerator(name = "oracle_id", sequenceName = "oracle_id", allocationSize = 1)
	protected Long id;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
