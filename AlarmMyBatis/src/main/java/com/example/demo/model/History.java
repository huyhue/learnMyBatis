package com.example.demo.model;

import java.util.Date;

public class History {
    
    public History(Integer id, String action, Date saveDay, Integer alarmId) {
		super();
		this.id = id;
		this.action = action;
		this.saveDay = saveDay;
		this.alarmId = alarmId;
	}

	public History(String action, Date saveDay, Integer alarmId) {
		super();
		this.action = action;
		this.saveDay = saveDay;
		this.alarmId = alarmId;
	}

	private Integer id;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column history.action
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    private String action;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column history.save_day
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    private Date saveDay;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column history.alarm_id
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    private Integer alarmId;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column history.id
     *
     * @return the value of history.id
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column history.id
     *
     * @param id the value for history.id
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column history.action
     *
     * @return the value of history.action
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public String getAction() {
        return action;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column history.action
     *
     * @param action the value for history.action
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public void setAction(String action) {
        this.action = action;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column history.save_day
     *
     * @return the value of history.save_day
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public Date getSaveDay() {
        return saveDay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column history.save_day
     *
     * @param saveDay the value for history.save_day
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public void setSaveDay(Date saveDay) {
        this.saveDay = saveDay;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column history.alarm_id
     *
     * @return the value of history.alarm_id
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public Integer getAlarmId() {
        return alarmId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column history.alarm_id
     *
     * @param alarmId the value for history.alarm_id
     *
     * @mbg.generated Fri Jun 04 20:56:48 ICT 2021
     */
    public void setAlarmId(Integer alarmId) {
        this.alarmId = alarmId;
    }
}