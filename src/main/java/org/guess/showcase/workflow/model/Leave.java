package org.guess.showcase.workflow.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.guess.core.IdEntity;
import org.guess.sys.model.User;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 请假流程实体
 *
 * @author guess
 */
@Entity
@Table(name = "OA_LEAVE")
public class Leave extends IdEntity{
	
	/**
	 * 流程实例ID
	 */
	private String processInstanceId;
	
	/**
	 * 流程发起人
	 */
	@OneToOne  
    @JoinColumn(name="user_id",insertable=true)
	private User sponsor;

	/**
	 * 开始日期
	 */
	@DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date startTime;

	/**
	 * 截止日期
	 */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date endTime;
    
    /**
     * 请假类型
     */
    private String leaveType;
    
    /**
     * 请假天数
     */
    private Double leaveDays;
    
    /**
     * 请假原因
     */
    private String reason;

	public String getProcessInstanceId() {
		return processInstanceId;
	}

	public void setProcessInstanceId(String processInstanceId) {
		this.processInstanceId = processInstanceId;
	}

	public User getSponsor() {
		return sponsor;
	}

	public void setSponsor(User sponsor) {
		this.sponsor = sponsor;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getLeaveType() {
		return leaveType;
	}

	public void setLeaveType(String leaveType) {
		this.leaveType = leaveType;
	}

	public Double getLeaveDays() {
		return leaveDays;
	}

	public void setLeaveDays(Double leaveDays) {
		this.leaveDays = leaveDays;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}
}
