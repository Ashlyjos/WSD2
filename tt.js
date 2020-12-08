angular.module('App', []).controller('CrudCtrl', ['$scope',
    function($scope) {
      $scope.arts = [
          {
            name : "MONA LISA",
            artist : "LEONARDO DA VINCI",
            price : "25700",
            editable : false
          },
          {
            name : "THE SCREAM",
            artist : "EDVARD MUNCH",
            price : "35820",
            editable : false
          }
        ];
     
     $scope.entity = {}
        
     $scope.edit = function(index){
       $scope.entity = $scope.arts[index];
       $scope.entity.index = index;
       $scope.entity.editable = true;
     }
        
     $scope.delete = function(index){
       $scope.arts.splice(index,1);
     }
        
     $scope.save = function(index){
       $scope.arts[index].editable = false;
       
     }
        
     $scope.add = function(){
       $scope.arts.push({
          name : "",
        artist : "",
        price : "",
        editable : true
       })
     }
    }
]);