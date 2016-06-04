package com.song.chat.message;

public class ChatMessage {
	private MessageType messageType;
	private String message;
	private String messageType1;
	
	public void setMessageType(MessageType v) { this.messageType = v; }
	public MessageType getMessageType() { return messageType; }
	public void setMessage(String v) { this.message = v; }
	public String getMessage() { return this.message; }
	public String getMessageType1() {
		return messageType1;
	}
	public void setMessageType1(String messageType1) {
		this.messageType1 = messageType1;
	}
}
