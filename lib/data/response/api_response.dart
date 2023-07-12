import 'status.dart';

class ApiResponse<Type>{
  Status? status;
  Type? data;
  String? message;

  ApiResponse(this.status,this.data,this.message);

  ApiResponse.loading() : status = Status.LOADING;
  ApiResponse.completed(this.data): status = Status.COMPLETED;
  ApiResponse.error(this.message): status = Status.ERROR;

  @override
  String toString(){
    return "Status : $status \n data : $data \n message : $message";
  }

}