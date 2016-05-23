var StatusManagerModule = angular.module('StatusManagerApp', ['ngAnimate']);

StatusManagerModule.controller('StatusController', function ($scope,$http) {
	
	var urlBase="http://localhost:8080/StaffManagement";
	$scope.toggle=true;
	$scope.selection = [];
	$http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
	
	
    //Add a new Status
	$scope.addStatus = function addStatus(){		
		if($scope.addStatus==""){
			alert("Insufficient Data! Please enter values for status update");
		}
		else{
		 $http.post(urlBase+'/status/insert/'+$scope.status).success(function(data){
			  $scope.StatusList = data;
			 //console.log(data);
		   }).error(function(data){
			   console.log(data);
		   });
		}
	};	


	$scope.getStatus = function getStatus(){
		   $http.get(urlBase+'/status/data').success(function(data){
			   //alert(3);
	           $scope.StatusList = data;
	           console.log(StatusList); 
	      });
	 };
	 
});