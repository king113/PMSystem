package com.iflytek.demo.model;

public class mapdate {
	private String name;
	private int value;

	public mapdate() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getValue() {
		return value;
	}

	public void setValue(int value) {
		this.value = value;
	}

	@Override
	public String toString() {
		return "mapdate{" +
				"name='" + name + '\'' +
				", value=" + value +
				'}';
	}

	public mapdate(String name, int value) {
		this.name = name;
		this.value = value;
	}

}
