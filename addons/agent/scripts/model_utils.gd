@tool
class_name AgentModelUtils
extends RefCounted

class ToolCallsInfo:
	var id: String = ""
	var function: ToolCallsInfoFunc = ToolCallsInfoFunc.new()
	var type: String = "function"
	# Gemini 工具调用要求在后续回传 functionCall 时携带 thought_signature
	var thought_signature: String = ""
	func to_dict():
		return {
			"id": id,
			"type": type,
			"thought_signature": thought_signature,
			"function": function.to_dict()
		}

class ToolCallsInfoFunc:
	var name: String = ""
	var arguments: String = ""

	func to_dict():
		return {
			"name": name,
			"arguments": arguments
		}
