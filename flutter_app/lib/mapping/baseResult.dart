// 返回结果基类
class BaseResult {
  int status;
  String msg;

  BaseResult({this.status, this.msg});

  factory BaseResult.fromJson(Map<String, dynamic> json) {
    return BaseResult(status: json['status'], msg: json['msg']);
  }
}
