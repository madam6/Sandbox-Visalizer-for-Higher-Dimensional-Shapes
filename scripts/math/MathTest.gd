extends Node

func _ready():
	print("Test1 ================================ Test1")
	testIdentity()
	print("Test2 ================================ Test2")
	testMultiplicationByVector()

func testIdentity():
	var matrix1 = [[1.00,2.00,3.00],[3.00,2.00,1.00]]
	var result = MatrixOperator.multiply(matrix1, MatrixOperator.identity(3))
	assert(matrix1 == result)
	MatrixOperator.print_matrix(result)
	
func testMultiplicationByVector():
	var matrix = [[1.00, -1.00, 2.00], [0.00, -3.00, 1.00]]
	var vector3 = Vector3(2, 1, 0)
	var result = MatrixOperator.multiply_matrix_vector(matrix, VectorHelper.convertVec3toArray(vector3))
	assert([1.00, -3.00] == result)
	MatrixOperator.print_matrix(result)
	
	
