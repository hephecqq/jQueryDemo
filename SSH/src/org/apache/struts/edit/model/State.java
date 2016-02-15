package org.apache.struts.edit.model;

public class State {

	private String stateAbbr;
	private String stateName;
	public String getStateAbbr() {
		return stateAbbr;
	}
	public State (String stateAbbr, String stateName) {
		this.stateAbbr = stateAbbr;
		this.stateName = stateName;
	}
	public State() {
		super();
	}
	public void setStateAbbr(String stateAbbr) {
		this.stateAbbr = stateAbbr;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	@Override
	public String toString() {
		return "State [stateAbbr=" + stateAbbr + ", stateName=" + stateName + "]";
	}
}
