??
??
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

?
DepthwiseConv2dNative

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
:
Less
x"T
y"T
z
"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
=
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	?
@
ReadVariableOp
resource
value"dtype"
dtypetype?
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
?
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
9
VarIsInitializedOp
resource
is_initialized
?"serve*2.4.12v2.4.1-0-g85c8b2a817f??
?
input_photoPlaceholder*8
_output_shapes&
$:"??????????????????*
dtype0*-
shape$:"??????????????????
?
7generator/Conv/weights/Initializer/random_uniform/shapeConst*)
_class
loc:@generator/Conv/weights*
_output_shapes
:*
dtype0*%
valueB"             
?
5generator/Conv/weights/Initializer/random_uniform/minConst*)
_class
loc:@generator/Conv/weights*
_output_shapes
: *
dtype0*
valueB
 *?Er?
?
5generator/Conv/weights/Initializer/random_uniform/maxConst*)
_class
loc:@generator/Conv/weights*
_output_shapes
: *
dtype0*
valueB
 *?Er=
?
?generator/Conv/weights/Initializer/random_uniform/RandomUniformRandomUniform7generator/Conv/weights/Initializer/random_uniform/shape*
T0*)
_class
loc:@generator/Conv/weights*&
_output_shapes
: *
dtype0*

seed *
seed2 
?
5generator/Conv/weights/Initializer/random_uniform/subSub5generator/Conv/weights/Initializer/random_uniform/max5generator/Conv/weights/Initializer/random_uniform/min*
T0*)
_class
loc:@generator/Conv/weights*
_output_shapes
: 
?
5generator/Conv/weights/Initializer/random_uniform/mulMul?generator/Conv/weights/Initializer/random_uniform/RandomUniform5generator/Conv/weights/Initializer/random_uniform/sub*
T0*)
_class
loc:@generator/Conv/weights*&
_output_shapes
: 
?
1generator/Conv/weights/Initializer/random_uniformAdd5generator/Conv/weights/Initializer/random_uniform/mul5generator/Conv/weights/Initializer/random_uniform/min*
T0*)
_class
loc:@generator/Conv/weights*&
_output_shapes
: 
?
generator/Conv/weightsVarHandleOp*)
_class
loc:@generator/Conv/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *'
shared_namegenerator/Conv/weights
}
7generator/Conv/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv/weights*
_output_shapes
: 
?
generator/Conv/weights/AssignAssignVariableOpgenerator/Conv/weights1generator/Conv/weights/Initializer/random_uniform*
dtype0
?
*generator/Conv/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv/weights*&
_output_shapes
: *
dtype0
?
'generator/Conv/biases/Initializer/zerosConst*(
_class
loc:@generator/Conv/biases*
_output_shapes
: *
dtype0*
valueB *    
?
generator/Conv/biasesVarHandleOp*(
_class
loc:@generator/Conv/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *&
shared_namegenerator/Conv/biases
{
6generator/Conv/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv/biases*
_output_shapes
: 
}
generator/Conv/biases/AssignAssignVariableOpgenerator/Conv/biases'generator/Conv/biases/Initializer/zeros*
dtype0
{
)generator/Conv/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv/biases*
_output_shapes
: *
dtype0
?
$generator/Conv/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv/weights*&
_output_shapes
: *
dtype0
?
generator/Conv/Conv2DConv2Dinput_photo$generator/Conv/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
w
%generator/Conv/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv/biases*
_output_shapes
: *
dtype0
?
generator/Conv/BiasAddBiasAddgenerator/Conv/Conv2D%generator/Conv/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC
?
generator/LeakyRelu	LeakyRelugenerator/Conv/BiasAdd*
T0*8
_output_shapes&
$:"?????????????????? *
alpha%??L>
?
9generator/Conv_1/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_1/weights*
_output_shapes
:*
dtype0*%
valueB"              
?
7generator/Conv_1/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_1/weights*
_output_shapes
: *
dtype0*
valueB
 *?ѽ
?
7generator/Conv_1/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_1/weights*
_output_shapes
: *
dtype0*
valueB
 *??=
?
Agenerator/Conv_1/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_1/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_1/weights*&
_output_shapes
:  *
dtype0*

seed *
seed2 
?
7generator/Conv_1/weights/Initializer/random_uniform/subSub7generator/Conv_1/weights/Initializer/random_uniform/max7generator/Conv_1/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_1/weights*
_output_shapes
: 
?
7generator/Conv_1/weights/Initializer/random_uniform/mulMulAgenerator/Conv_1/weights/Initializer/random_uniform/RandomUniform7generator/Conv_1/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_1/weights*&
_output_shapes
:  
?
3generator/Conv_1/weights/Initializer/random_uniformAdd7generator/Conv_1/weights/Initializer/random_uniform/mul7generator/Conv_1/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_1/weights*&
_output_shapes
:  
?
generator/Conv_1/weightsVarHandleOp*+
_class!
loc:@generator/Conv_1/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:  *)
shared_namegenerator/Conv_1/weights
?
9generator/Conv_1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_1/weights*
_output_shapes
: 
?
generator/Conv_1/weights/AssignAssignVariableOpgenerator/Conv_1/weights3generator/Conv_1/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_1/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_1/weights*&
_output_shapes
:  *
dtype0
?
)generator/Conv_1/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_1/biases*
_output_shapes
: *
dtype0*
valueB *    
?
generator/Conv_1/biasesVarHandleOp**
_class 
loc:@generator/Conv_1/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *(
shared_namegenerator/Conv_1/biases

8generator/Conv_1/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_1/biases*
_output_shapes
: 
?
generator/Conv_1/biases/AssignAssignVariableOpgenerator/Conv_1/biases)generator/Conv_1/biases/Initializer/zeros*
dtype0

+generator/Conv_1/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_1/biases*
_output_shapes
: *
dtype0
?
&generator/Conv_1/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_1/weights*&
_output_shapes
:  *
dtype0
?
generator/Conv_1/Conv2DConv2Dgenerator/LeakyRelu&generator/Conv_1/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_1/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_1/biases*
_output_shapes
: *
dtype0
?
generator/Conv_1/BiasAddBiasAddgenerator/Conv_1/Conv2D'generator/Conv_1/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC
?
generator/LeakyRelu_1	LeakyRelugenerator/Conv_1/BiasAdd*
T0*8
_output_shapes&
$:"?????????????????? *
alpha%??L>
?
9generator/Conv_2/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_2/weights*
_output_shapes
:*
dtype0*%
valueB"          @   
?
7generator/Conv_2/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_2/weights*
_output_shapes
: *
dtype0*
valueB
 *????
?
7generator/Conv_2/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_2/weights*
_output_shapes
: *
dtype0*
valueB
 *???=
?
Agenerator/Conv_2/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_2/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_2/weights*&
_output_shapes
: @*
dtype0*

seed *
seed2 
?
7generator/Conv_2/weights/Initializer/random_uniform/subSub7generator/Conv_2/weights/Initializer/random_uniform/max7generator/Conv_2/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_2/weights*
_output_shapes
: 
?
7generator/Conv_2/weights/Initializer/random_uniform/mulMulAgenerator/Conv_2/weights/Initializer/random_uniform/RandomUniform7generator/Conv_2/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_2/weights*&
_output_shapes
: @
?
3generator/Conv_2/weights/Initializer/random_uniformAdd7generator/Conv_2/weights/Initializer/random_uniform/mul7generator/Conv_2/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_2/weights*&
_output_shapes
: @
?
generator/Conv_2/weightsVarHandleOp*+
_class!
loc:@generator/Conv_2/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: @*)
shared_namegenerator/Conv_2/weights
?
9generator/Conv_2/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_2/weights*
_output_shapes
: 
?
generator/Conv_2/weights/AssignAssignVariableOpgenerator/Conv_2/weights3generator/Conv_2/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_2/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_2/weights*&
_output_shapes
: @*
dtype0
?
)generator/Conv_2/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_2/biases*
_output_shapes
:@*
dtype0*
valueB@*    
?
generator/Conv_2/biasesVarHandleOp**
_class 
loc:@generator/Conv_2/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*(
shared_namegenerator/Conv_2/biases

8generator/Conv_2/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_2/biases*
_output_shapes
: 
?
generator/Conv_2/biases/AssignAssignVariableOpgenerator/Conv_2/biases)generator/Conv_2/biases/Initializer/zeros*
dtype0

+generator/Conv_2/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_2/biases*
_output_shapes
:@*
dtype0
?
&generator/Conv_2/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_2/weights*&
_output_shapes
: @*
dtype0
?
generator/Conv_2/Conv2DConv2Dgenerator/LeakyRelu_1&generator/Conv_2/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_2/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_2/biases*
_output_shapes
:@*
dtype0
?
generator/Conv_2/BiasAddBiasAddgenerator/Conv_2/Conv2D'generator/Conv_2/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC
?
generator/LeakyRelu_2	LeakyRelugenerator/Conv_2/BiasAdd*
T0*8
_output_shapes&
$:"??????????????????@*
alpha%??L>
?
9generator/Conv_3/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_3/weights*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
7generator/Conv_3/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_3/weights*
_output_shapes
: *
dtype0*
valueB
 *:͓?
?
7generator/Conv_3/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_3/weights*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
Agenerator/Conv_3/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_3/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_3/weights*&
_output_shapes
:@@*
dtype0*

seed *
seed2 
?
7generator/Conv_3/weights/Initializer/random_uniform/subSub7generator/Conv_3/weights/Initializer/random_uniform/max7generator/Conv_3/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_3/weights*
_output_shapes
: 
?
7generator/Conv_3/weights/Initializer/random_uniform/mulMulAgenerator/Conv_3/weights/Initializer/random_uniform/RandomUniform7generator/Conv_3/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_3/weights*&
_output_shapes
:@@
?
3generator/Conv_3/weights/Initializer/random_uniformAdd7generator/Conv_3/weights/Initializer/random_uniform/mul7generator/Conv_3/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_3/weights*&
_output_shapes
:@@
?
generator/Conv_3/weightsVarHandleOp*+
_class!
loc:@generator/Conv_3/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*)
shared_namegenerator/Conv_3/weights
?
9generator/Conv_3/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_3/weights*
_output_shapes
: 
?
generator/Conv_3/weights/AssignAssignVariableOpgenerator/Conv_3/weights3generator/Conv_3/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_3/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_3/weights*&
_output_shapes
:@@*
dtype0
?
)generator/Conv_3/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_3/biases*
_output_shapes
:@*
dtype0*
valueB@*    
?
generator/Conv_3/biasesVarHandleOp**
_class 
loc:@generator/Conv_3/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*(
shared_namegenerator/Conv_3/biases

8generator/Conv_3/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_3/biases*
_output_shapes
: 
?
generator/Conv_3/biases/AssignAssignVariableOpgenerator/Conv_3/biases)generator/Conv_3/biases/Initializer/zeros*
dtype0

+generator/Conv_3/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_3/biases*
_output_shapes
:@*
dtype0
?
&generator/Conv_3/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_3/weights*&
_output_shapes
:@@*
dtype0
?
generator/Conv_3/Conv2DConv2Dgenerator/LeakyRelu_2&generator/Conv_3/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_3/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_3/biases*
_output_shapes
:@*
dtype0
?
generator/Conv_3/BiasAddBiasAddgenerator/Conv_3/Conv2D'generator/Conv_3/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC
?
generator/LeakyRelu_3	LeakyRelugenerator/Conv_3/BiasAdd*
T0*8
_output_shapes&
$:"??????????????????@*
alpha%??L>
?
9generator/Conv_4/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_4/weights*
_output_shapes
:*
dtype0*%
valueB"      @   ?   
?
7generator/Conv_4/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_4/weights*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
7generator/Conv_4/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_4/weights*
_output_shapes
: *
dtype0*
valueB
 *?[q=
?
Agenerator/Conv_4/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_4/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_4/weights*'
_output_shapes
:@?*
dtype0*

seed *
seed2 
?
7generator/Conv_4/weights/Initializer/random_uniform/subSub7generator/Conv_4/weights/Initializer/random_uniform/max7generator/Conv_4/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_4/weights*
_output_shapes
: 
?
7generator/Conv_4/weights/Initializer/random_uniform/mulMulAgenerator/Conv_4/weights/Initializer/random_uniform/RandomUniform7generator/Conv_4/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_4/weights*'
_output_shapes
:@?
?
3generator/Conv_4/weights/Initializer/random_uniformAdd7generator/Conv_4/weights/Initializer/random_uniform/mul7generator/Conv_4/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_4/weights*'
_output_shapes
:@?
?
generator/Conv_4/weightsVarHandleOp*+
_class!
loc:@generator/Conv_4/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@?*)
shared_namegenerator/Conv_4/weights
?
9generator/Conv_4/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_4/weights*
_output_shapes
: 
?
generator/Conv_4/weights/AssignAssignVariableOpgenerator/Conv_4/weights3generator/Conv_4/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_4/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_4/weights*'
_output_shapes
:@?*
dtype0
?
)generator/Conv_4/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_4/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/Conv_4/biasesVarHandleOp**
_class 
loc:@generator/Conv_4/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*(
shared_namegenerator/Conv_4/biases

8generator/Conv_4/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_4/biases*
_output_shapes
: 
?
generator/Conv_4/biases/AssignAssignVariableOpgenerator/Conv_4/biases)generator/Conv_4/biases/Initializer/zeros*
dtype0
?
+generator/Conv_4/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_4/biases*
_output_shapes	
:?*
dtype0
?
&generator/Conv_4/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_4/weights*'
_output_shapes
:@?*
dtype0
?
generator/Conv_4/Conv2DConv2Dgenerator/LeakyRelu_3&generator/Conv_4/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
|
'generator/Conv_4/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_4/biases*
_output_shapes	
:?*
dtype0
?
generator/Conv_4/BiasAddBiasAddgenerator/Conv_4/Conv2D'generator/Conv_4/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/LeakyRelu_4	LeakyRelugenerator/Conv_4/BiasAdd*
T0*9
_output_shapes'
%:#???????????????????*
alpha%??L>
?
@generator/block_0/conv1/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_0/conv1/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_0/conv1/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_0/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_0/conv1/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_0/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_0/conv1/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_0/conv1/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_0/conv1/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_0/conv1/weights/Initializer/random_uniform/subSub>generator/block_0/conv1/weights/Initializer/random_uniform/max>generator/block_0/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_0/conv1/weights*
_output_shapes
: 
?
>generator/block_0/conv1/weights/Initializer/random_uniform/mulMulHgenerator/block_0/conv1/weights/Initializer/random_uniform/RandomUniform>generator/block_0/conv1/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_0/conv1/weights*(
_output_shapes
:??
?
:generator/block_0/conv1/weights/Initializer/random_uniformAdd>generator/block_0/conv1/weights/Initializer/random_uniform/mul>generator/block_0/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_0/conv1/weights*(
_output_shapes
:??
?
generator/block_0/conv1/weightsVarHandleOp*2
_class(
&$loc:@generator/block_0/conv1/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_0/conv1/weights
?
@generator/block_0/conv1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_0/conv1/weights*
_output_shapes
: 
?
&generator/block_0/conv1/weights/AssignAssignVariableOpgenerator/block_0/conv1/weights:generator/block_0/conv1/weights/Initializer/random_uniform*
dtype0
?
3generator/block_0/conv1/weights/Read/ReadVariableOpReadVariableOpgenerator/block_0/conv1/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_0/conv1/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_0/conv1/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_0/conv1/biasesVarHandleOp*1
_class'
%#loc:@generator/block_0/conv1/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_0/conv1/biases
?
?generator/block_0/conv1/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_0/conv1/biases*
_output_shapes
: 
?
%generator/block_0/conv1/biases/AssignAssignVariableOpgenerator/block_0/conv1/biases0generator/block_0/conv1/biases/Initializer/zeros*
dtype0
?
2generator/block_0/conv1/biases/Read/ReadVariableOpReadVariableOpgenerator/block_0/conv1/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_0/conv1/Conv2D/ReadVariableOpReadVariableOpgenerator/block_0/conv1/weights*(
_output_shapes
:??*
dtype0
?
generator/block_0/conv1/Conv2DConv2Dgenerator/LeakyRelu_4-generator/block_0/conv1/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_0/conv1/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_0/conv1/biases*
_output_shapes	
:?*
dtype0
?
generator/block_0/conv1/BiasAddBiasAddgenerator/block_0/conv1/Conv2D.generator/block_0/conv1/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_0/LeakyRelu	LeakyRelugenerator/block_0/conv1/BiasAdd*
T0*9
_output_shapes'
%:#???????????????????*
alpha%??L>
?
@generator/block_0/conv2/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_0/conv2/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_0/conv2/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_0/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_0/conv2/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_0/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_0/conv2/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_0/conv2/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_0/conv2/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_0/conv2/weights/Initializer/random_uniform/subSub>generator/block_0/conv2/weights/Initializer/random_uniform/max>generator/block_0/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_0/conv2/weights*
_output_shapes
: 
?
>generator/block_0/conv2/weights/Initializer/random_uniform/mulMulHgenerator/block_0/conv2/weights/Initializer/random_uniform/RandomUniform>generator/block_0/conv2/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_0/conv2/weights*(
_output_shapes
:??
?
:generator/block_0/conv2/weights/Initializer/random_uniformAdd>generator/block_0/conv2/weights/Initializer/random_uniform/mul>generator/block_0/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_0/conv2/weights*(
_output_shapes
:??
?
generator/block_0/conv2/weightsVarHandleOp*2
_class(
&$loc:@generator/block_0/conv2/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_0/conv2/weights
?
@generator/block_0/conv2/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_0/conv2/weights*
_output_shapes
: 
?
&generator/block_0/conv2/weights/AssignAssignVariableOpgenerator/block_0/conv2/weights:generator/block_0/conv2/weights/Initializer/random_uniform*
dtype0
?
3generator/block_0/conv2/weights/Read/ReadVariableOpReadVariableOpgenerator/block_0/conv2/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_0/conv2/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_0/conv2/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_0/conv2/biasesVarHandleOp*1
_class'
%#loc:@generator/block_0/conv2/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_0/conv2/biases
?
?generator/block_0/conv2/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_0/conv2/biases*
_output_shapes
: 
?
%generator/block_0/conv2/biases/AssignAssignVariableOpgenerator/block_0/conv2/biases0generator/block_0/conv2/biases/Initializer/zeros*
dtype0
?
2generator/block_0/conv2/biases/Read/ReadVariableOpReadVariableOpgenerator/block_0/conv2/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_0/conv2/Conv2D/ReadVariableOpReadVariableOpgenerator/block_0/conv2/weights*(
_output_shapes
:??*
dtype0
?
generator/block_0/conv2/Conv2DConv2Dgenerator/block_0/LeakyRelu-generator/block_0/conv2/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_0/conv2/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_0/conv2/biases*
_output_shapes	
:?*
dtype0
?
generator/block_0/conv2/BiasAddBiasAddgenerator/block_0/conv2/Conv2D.generator/block_0/conv2/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_0/addAddV2generator/block_0/conv2/BiasAddgenerator/LeakyRelu_4*
T0*9
_output_shapes'
%:#???????????????????
?
@generator/block_1/conv1/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_1/conv1/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_1/conv1/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_1/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_1/conv1/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_1/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_1/conv1/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_1/conv1/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_1/conv1/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_1/conv1/weights/Initializer/random_uniform/subSub>generator/block_1/conv1/weights/Initializer/random_uniform/max>generator/block_1/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_1/conv1/weights*
_output_shapes
: 
?
>generator/block_1/conv1/weights/Initializer/random_uniform/mulMulHgenerator/block_1/conv1/weights/Initializer/random_uniform/RandomUniform>generator/block_1/conv1/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_1/conv1/weights*(
_output_shapes
:??
?
:generator/block_1/conv1/weights/Initializer/random_uniformAdd>generator/block_1/conv1/weights/Initializer/random_uniform/mul>generator/block_1/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_1/conv1/weights*(
_output_shapes
:??
?
generator/block_1/conv1/weightsVarHandleOp*2
_class(
&$loc:@generator/block_1/conv1/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_1/conv1/weights
?
@generator/block_1/conv1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_1/conv1/weights*
_output_shapes
: 
?
&generator/block_1/conv1/weights/AssignAssignVariableOpgenerator/block_1/conv1/weights:generator/block_1/conv1/weights/Initializer/random_uniform*
dtype0
?
3generator/block_1/conv1/weights/Read/ReadVariableOpReadVariableOpgenerator/block_1/conv1/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_1/conv1/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_1/conv1/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_1/conv1/biasesVarHandleOp*1
_class'
%#loc:@generator/block_1/conv1/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_1/conv1/biases
?
?generator/block_1/conv1/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_1/conv1/biases*
_output_shapes
: 
?
%generator/block_1/conv1/biases/AssignAssignVariableOpgenerator/block_1/conv1/biases0generator/block_1/conv1/biases/Initializer/zeros*
dtype0
?
2generator/block_1/conv1/biases/Read/ReadVariableOpReadVariableOpgenerator/block_1/conv1/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_1/conv1/Conv2D/ReadVariableOpReadVariableOpgenerator/block_1/conv1/weights*(
_output_shapes
:??*
dtype0
?
generator/block_1/conv1/Conv2DConv2Dgenerator/block_0/add-generator/block_1/conv1/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_1/conv1/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_1/conv1/biases*
_output_shapes	
:?*
dtype0
?
generator/block_1/conv1/BiasAddBiasAddgenerator/block_1/conv1/Conv2D.generator/block_1/conv1/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_1/LeakyRelu	LeakyRelugenerator/block_1/conv1/BiasAdd*
T0*9
_output_shapes'
%:#???????????????????*
alpha%??L>
?
@generator/block_1/conv2/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_1/conv2/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_1/conv2/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_1/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_1/conv2/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_1/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_1/conv2/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_1/conv2/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_1/conv2/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_1/conv2/weights/Initializer/random_uniform/subSub>generator/block_1/conv2/weights/Initializer/random_uniform/max>generator/block_1/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_1/conv2/weights*
_output_shapes
: 
?
>generator/block_1/conv2/weights/Initializer/random_uniform/mulMulHgenerator/block_1/conv2/weights/Initializer/random_uniform/RandomUniform>generator/block_1/conv2/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_1/conv2/weights*(
_output_shapes
:??
?
:generator/block_1/conv2/weights/Initializer/random_uniformAdd>generator/block_1/conv2/weights/Initializer/random_uniform/mul>generator/block_1/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_1/conv2/weights*(
_output_shapes
:??
?
generator/block_1/conv2/weightsVarHandleOp*2
_class(
&$loc:@generator/block_1/conv2/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_1/conv2/weights
?
@generator/block_1/conv2/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_1/conv2/weights*
_output_shapes
: 
?
&generator/block_1/conv2/weights/AssignAssignVariableOpgenerator/block_1/conv2/weights:generator/block_1/conv2/weights/Initializer/random_uniform*
dtype0
?
3generator/block_1/conv2/weights/Read/ReadVariableOpReadVariableOpgenerator/block_1/conv2/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_1/conv2/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_1/conv2/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_1/conv2/biasesVarHandleOp*1
_class'
%#loc:@generator/block_1/conv2/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_1/conv2/biases
?
?generator/block_1/conv2/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_1/conv2/biases*
_output_shapes
: 
?
%generator/block_1/conv2/biases/AssignAssignVariableOpgenerator/block_1/conv2/biases0generator/block_1/conv2/biases/Initializer/zeros*
dtype0
?
2generator/block_1/conv2/biases/Read/ReadVariableOpReadVariableOpgenerator/block_1/conv2/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_1/conv2/Conv2D/ReadVariableOpReadVariableOpgenerator/block_1/conv2/weights*(
_output_shapes
:??*
dtype0
?
generator/block_1/conv2/Conv2DConv2Dgenerator/block_1/LeakyRelu-generator/block_1/conv2/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_1/conv2/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_1/conv2/biases*
_output_shapes	
:?*
dtype0
?
generator/block_1/conv2/BiasAddBiasAddgenerator/block_1/conv2/Conv2D.generator/block_1/conv2/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_1/addAddV2generator/block_1/conv2/BiasAddgenerator/block_0/add*
T0*9
_output_shapes'
%:#???????????????????
?
@generator/block_2/conv1/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_2/conv1/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_2/conv1/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_2/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_2/conv1/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_2/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_2/conv1/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_2/conv1/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_2/conv1/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_2/conv1/weights/Initializer/random_uniform/subSub>generator/block_2/conv1/weights/Initializer/random_uniform/max>generator/block_2/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_2/conv1/weights*
_output_shapes
: 
?
>generator/block_2/conv1/weights/Initializer/random_uniform/mulMulHgenerator/block_2/conv1/weights/Initializer/random_uniform/RandomUniform>generator/block_2/conv1/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_2/conv1/weights*(
_output_shapes
:??
?
:generator/block_2/conv1/weights/Initializer/random_uniformAdd>generator/block_2/conv1/weights/Initializer/random_uniform/mul>generator/block_2/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_2/conv1/weights*(
_output_shapes
:??
?
generator/block_2/conv1/weightsVarHandleOp*2
_class(
&$loc:@generator/block_2/conv1/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_2/conv1/weights
?
@generator/block_2/conv1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_2/conv1/weights*
_output_shapes
: 
?
&generator/block_2/conv1/weights/AssignAssignVariableOpgenerator/block_2/conv1/weights:generator/block_2/conv1/weights/Initializer/random_uniform*
dtype0
?
3generator/block_2/conv1/weights/Read/ReadVariableOpReadVariableOpgenerator/block_2/conv1/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_2/conv1/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_2/conv1/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_2/conv1/biasesVarHandleOp*1
_class'
%#loc:@generator/block_2/conv1/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_2/conv1/biases
?
?generator/block_2/conv1/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_2/conv1/biases*
_output_shapes
: 
?
%generator/block_2/conv1/biases/AssignAssignVariableOpgenerator/block_2/conv1/biases0generator/block_2/conv1/biases/Initializer/zeros*
dtype0
?
2generator/block_2/conv1/biases/Read/ReadVariableOpReadVariableOpgenerator/block_2/conv1/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_2/conv1/Conv2D/ReadVariableOpReadVariableOpgenerator/block_2/conv1/weights*(
_output_shapes
:??*
dtype0
?
generator/block_2/conv1/Conv2DConv2Dgenerator/block_1/add-generator/block_2/conv1/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_2/conv1/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_2/conv1/biases*
_output_shapes	
:?*
dtype0
?
generator/block_2/conv1/BiasAddBiasAddgenerator/block_2/conv1/Conv2D.generator/block_2/conv1/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_2/LeakyRelu	LeakyRelugenerator/block_2/conv1/BiasAdd*
T0*9
_output_shapes'
%:#???????????????????*
alpha%??L>
?
@generator/block_2/conv2/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_2/conv2/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_2/conv2/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_2/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_2/conv2/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_2/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_2/conv2/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_2/conv2/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_2/conv2/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_2/conv2/weights/Initializer/random_uniform/subSub>generator/block_2/conv2/weights/Initializer/random_uniform/max>generator/block_2/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_2/conv2/weights*
_output_shapes
: 
?
>generator/block_2/conv2/weights/Initializer/random_uniform/mulMulHgenerator/block_2/conv2/weights/Initializer/random_uniform/RandomUniform>generator/block_2/conv2/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_2/conv2/weights*(
_output_shapes
:??
?
:generator/block_2/conv2/weights/Initializer/random_uniformAdd>generator/block_2/conv2/weights/Initializer/random_uniform/mul>generator/block_2/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_2/conv2/weights*(
_output_shapes
:??
?
generator/block_2/conv2/weightsVarHandleOp*2
_class(
&$loc:@generator/block_2/conv2/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_2/conv2/weights
?
@generator/block_2/conv2/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_2/conv2/weights*
_output_shapes
: 
?
&generator/block_2/conv2/weights/AssignAssignVariableOpgenerator/block_2/conv2/weights:generator/block_2/conv2/weights/Initializer/random_uniform*
dtype0
?
3generator/block_2/conv2/weights/Read/ReadVariableOpReadVariableOpgenerator/block_2/conv2/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_2/conv2/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_2/conv2/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_2/conv2/biasesVarHandleOp*1
_class'
%#loc:@generator/block_2/conv2/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_2/conv2/biases
?
?generator/block_2/conv2/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_2/conv2/biases*
_output_shapes
: 
?
%generator/block_2/conv2/biases/AssignAssignVariableOpgenerator/block_2/conv2/biases0generator/block_2/conv2/biases/Initializer/zeros*
dtype0
?
2generator/block_2/conv2/biases/Read/ReadVariableOpReadVariableOpgenerator/block_2/conv2/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_2/conv2/Conv2D/ReadVariableOpReadVariableOpgenerator/block_2/conv2/weights*(
_output_shapes
:??*
dtype0
?
generator/block_2/conv2/Conv2DConv2Dgenerator/block_2/LeakyRelu-generator/block_2/conv2/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_2/conv2/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_2/conv2/biases*
_output_shapes	
:?*
dtype0
?
generator/block_2/conv2/BiasAddBiasAddgenerator/block_2/conv2/Conv2D.generator/block_2/conv2/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_2/addAddV2generator/block_2/conv2/BiasAddgenerator/block_1/add*
T0*9
_output_shapes'
%:#???????????????????
?
@generator/block_3/conv1/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_3/conv1/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_3/conv1/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_3/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_3/conv1/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_3/conv1/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_3/conv1/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_3/conv1/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_3/conv1/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_3/conv1/weights/Initializer/random_uniform/subSub>generator/block_3/conv1/weights/Initializer/random_uniform/max>generator/block_3/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_3/conv1/weights*
_output_shapes
: 
?
>generator/block_3/conv1/weights/Initializer/random_uniform/mulMulHgenerator/block_3/conv1/weights/Initializer/random_uniform/RandomUniform>generator/block_3/conv1/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_3/conv1/weights*(
_output_shapes
:??
?
:generator/block_3/conv1/weights/Initializer/random_uniformAdd>generator/block_3/conv1/weights/Initializer/random_uniform/mul>generator/block_3/conv1/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_3/conv1/weights*(
_output_shapes
:??
?
generator/block_3/conv1/weightsVarHandleOp*2
_class(
&$loc:@generator/block_3/conv1/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_3/conv1/weights
?
@generator/block_3/conv1/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_3/conv1/weights*
_output_shapes
: 
?
&generator/block_3/conv1/weights/AssignAssignVariableOpgenerator/block_3/conv1/weights:generator/block_3/conv1/weights/Initializer/random_uniform*
dtype0
?
3generator/block_3/conv1/weights/Read/ReadVariableOpReadVariableOpgenerator/block_3/conv1/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_3/conv1/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_3/conv1/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_3/conv1/biasesVarHandleOp*1
_class'
%#loc:@generator/block_3/conv1/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_3/conv1/biases
?
?generator/block_3/conv1/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_3/conv1/biases*
_output_shapes
: 
?
%generator/block_3/conv1/biases/AssignAssignVariableOpgenerator/block_3/conv1/biases0generator/block_3/conv1/biases/Initializer/zeros*
dtype0
?
2generator/block_3/conv1/biases/Read/ReadVariableOpReadVariableOpgenerator/block_3/conv1/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_3/conv1/Conv2D/ReadVariableOpReadVariableOpgenerator/block_3/conv1/weights*(
_output_shapes
:??*
dtype0
?
generator/block_3/conv1/Conv2DConv2Dgenerator/block_2/add-generator/block_3/conv1/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_3/conv1/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_3/conv1/biases*
_output_shapes	
:?*
dtype0
?
generator/block_3/conv1/BiasAddBiasAddgenerator/block_3/conv1/Conv2D.generator/block_3/conv1/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_3/LeakyRelu	LeakyRelugenerator/block_3/conv1/BiasAdd*
T0*9
_output_shapes'
%:#???????????????????*
alpha%??L>
?
@generator/block_3/conv2/weights/Initializer/random_uniform/shapeConst*2
_class(
&$loc:@generator/block_3/conv2/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   ?   
?
>generator/block_3/conv2/weights/Initializer/random_uniform/minConst*2
_class(
&$loc:@generator/block_3/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q?
?
>generator/block_3/conv2/weights/Initializer/random_uniform/maxConst*2
_class(
&$loc:@generator/block_3/conv2/weights*
_output_shapes
: *
dtype0*
valueB
 *?Q=
?
Hgenerator/block_3/conv2/weights/Initializer/random_uniform/RandomUniformRandomUniform@generator/block_3/conv2/weights/Initializer/random_uniform/shape*
T0*2
_class(
&$loc:@generator/block_3/conv2/weights*(
_output_shapes
:??*
dtype0*

seed *
seed2 
?
>generator/block_3/conv2/weights/Initializer/random_uniform/subSub>generator/block_3/conv2/weights/Initializer/random_uniform/max>generator/block_3/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_3/conv2/weights*
_output_shapes
: 
?
>generator/block_3/conv2/weights/Initializer/random_uniform/mulMulHgenerator/block_3/conv2/weights/Initializer/random_uniform/RandomUniform>generator/block_3/conv2/weights/Initializer/random_uniform/sub*
T0*2
_class(
&$loc:@generator/block_3/conv2/weights*(
_output_shapes
:??
?
:generator/block_3/conv2/weights/Initializer/random_uniformAdd>generator/block_3/conv2/weights/Initializer/random_uniform/mul>generator/block_3/conv2/weights/Initializer/random_uniform/min*
T0*2
_class(
&$loc:@generator/block_3/conv2/weights*(
_output_shapes
:??
?
generator/block_3/conv2/weightsVarHandleOp*2
_class(
&$loc:@generator/block_3/conv2/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:??*0
shared_name!generator/block_3/conv2/weights
?
@generator/block_3/conv2/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_3/conv2/weights*
_output_shapes
: 
?
&generator/block_3/conv2/weights/AssignAssignVariableOpgenerator/block_3/conv2/weights:generator/block_3/conv2/weights/Initializer/random_uniform*
dtype0
?
3generator/block_3/conv2/weights/Read/ReadVariableOpReadVariableOpgenerator/block_3/conv2/weights*(
_output_shapes
:??*
dtype0
?
0generator/block_3/conv2/biases/Initializer/zerosConst*1
_class'
%#loc:@generator/block_3/conv2/biases*
_output_shapes	
:?*
dtype0*
valueB?*    
?
generator/block_3/conv2/biasesVarHandleOp*1
_class'
%#loc:@generator/block_3/conv2/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?*/
shared_name generator/block_3/conv2/biases
?
?generator/block_3/conv2/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/block_3/conv2/biases*
_output_shapes
: 
?
%generator/block_3/conv2/biases/AssignAssignVariableOpgenerator/block_3/conv2/biases0generator/block_3/conv2/biases/Initializer/zeros*
dtype0
?
2generator/block_3/conv2/biases/Read/ReadVariableOpReadVariableOpgenerator/block_3/conv2/biases*
_output_shapes	
:?*
dtype0
?
-generator/block_3/conv2/Conv2D/ReadVariableOpReadVariableOpgenerator/block_3/conv2/weights*(
_output_shapes
:??*
dtype0
?
generator/block_3/conv2/Conv2DConv2Dgenerator/block_3/LeakyRelu-generator/block_3/conv2/Conv2D/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
?
.generator/block_3/conv2/BiasAdd/ReadVariableOpReadVariableOpgenerator/block_3/conv2/biases*
_output_shapes	
:?*
dtype0
?
generator/block_3/conv2/BiasAddBiasAddgenerator/block_3/conv2/Conv2D.generator/block_3/conv2/BiasAdd/ReadVariableOp*
T0*9
_output_shapes'
%:#???????????????????*
data_formatNHWC
?
generator/block_3/addAddV2generator/block_3/conv2/BiasAddgenerator/block_2/add*
T0*9
_output_shapes'
%:#???????????????????
?
9generator/Conv_5/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_5/weights*
_output_shapes
:*
dtype0*%
valueB"      ?   @   
?
7generator/Conv_5/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_5/weights*
_output_shapes
: *
dtype0*
valueB
 *?[q?
?
7generator/Conv_5/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_5/weights*
_output_shapes
: *
dtype0*
valueB
 *?[q=
?
Agenerator/Conv_5/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_5/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_5/weights*'
_output_shapes
:?@*
dtype0*

seed *
seed2 
?
7generator/Conv_5/weights/Initializer/random_uniform/subSub7generator/Conv_5/weights/Initializer/random_uniform/max7generator/Conv_5/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_5/weights*
_output_shapes
: 
?
7generator/Conv_5/weights/Initializer/random_uniform/mulMulAgenerator/Conv_5/weights/Initializer/random_uniform/RandomUniform7generator/Conv_5/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_5/weights*'
_output_shapes
:?@
?
3generator/Conv_5/weights/Initializer/random_uniformAdd7generator/Conv_5/weights/Initializer/random_uniform/mul7generator/Conv_5/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_5/weights*'
_output_shapes
:?@
?
generator/Conv_5/weightsVarHandleOp*+
_class!
loc:@generator/Conv_5/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:?@*)
shared_namegenerator/Conv_5/weights
?
9generator/Conv_5/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_5/weights*
_output_shapes
: 
?
generator/Conv_5/weights/AssignAssignVariableOpgenerator/Conv_5/weights3generator/Conv_5/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_5/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_5/weights*'
_output_shapes
:?@*
dtype0
?
)generator/Conv_5/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_5/biases*
_output_shapes
:@*
dtype0*
valueB@*    
?
generator/Conv_5/biasesVarHandleOp**
_class 
loc:@generator/Conv_5/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*(
shared_namegenerator/Conv_5/biases

8generator/Conv_5/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_5/biases*
_output_shapes
: 
?
generator/Conv_5/biases/AssignAssignVariableOpgenerator/Conv_5/biases)generator/Conv_5/biases/Initializer/zeros*
dtype0

+generator/Conv_5/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_5/biases*
_output_shapes
:@*
dtype0
?
&generator/Conv_5/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_5/weights*'
_output_shapes
:?@*
dtype0
?
generator/Conv_5/Conv2DConv2Dgenerator/block_3/add&generator/Conv_5/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_5/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_5/biases*
_output_shapes
:@*
dtype0
?
generator/Conv_5/BiasAddBiasAddgenerator/Conv_5/Conv2D'generator/Conv_5/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC
?
generator/LeakyRelu_5	LeakyRelugenerator/Conv_5/BiasAdd*
T0*8
_output_shapes&
$:"??????????????????@*
alpha%??L>
d
generator/ShapeShapegenerator/LeakyRelu_5*
T0*
_output_shapes
:*
out_type0
g
generator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
i
generator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
i
generator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
generator/strided_sliceStridedSlicegenerator/Shapegenerator/strided_slice/stackgenerator/strided_slice/stack_1generator/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
generator/Shape_1Shapegenerator/LeakyRelu_5*
T0*
_output_shapes
:*
out_type0
i
generator/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
generator/strided_slice_1StridedSlicegenerator/Shape_1generator/strided_slice_1/stack!generator/strided_slice_1/stack_1!generator/strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
Q
generator/mul/yConst*
_output_shapes
: *
dtype0*
value	B :
_
generator/mulMulgenerator/strided_slicegenerator/mul/y*
T0*
_output_shapes
: 
S
generator/mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :
e
generator/mul_1Mulgenerator/strided_slice_1generator/mul_1/y*
T0*
_output_shapes
: 

generator/ResizeBilinear/sizePackgenerator/mulgenerator/mul_1*
N*
T0*
_output_shapes
:*

axis 
?
generator/ResizeBilinearResizeBilineargenerator/LeakyRelu_5generator/ResizeBilinear/size*
T0*8
_output_shapes&
$:"??????????????????@*
align_corners( *
half_pixel_centers( 
?
generator/addAddV2generator/ResizeBilineargenerator/LeakyRelu_2*
T0*8
_output_shapes&
$:"??????????????????@
?
9generator/Conv_6/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_6/weights*
_output_shapes
:*
dtype0*%
valueB"      @   @   
?
7generator/Conv_6/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_6/weights*
_output_shapes
: *
dtype0*
valueB
 *:͓?
?
7generator/Conv_6/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_6/weights*
_output_shapes
: *
dtype0*
valueB
 *:͓=
?
Agenerator/Conv_6/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_6/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_6/weights*&
_output_shapes
:@@*
dtype0*

seed *
seed2 
?
7generator/Conv_6/weights/Initializer/random_uniform/subSub7generator/Conv_6/weights/Initializer/random_uniform/max7generator/Conv_6/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_6/weights*
_output_shapes
: 
?
7generator/Conv_6/weights/Initializer/random_uniform/mulMulAgenerator/Conv_6/weights/Initializer/random_uniform/RandomUniform7generator/Conv_6/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_6/weights*&
_output_shapes
:@@
?
3generator/Conv_6/weights/Initializer/random_uniformAdd7generator/Conv_6/weights/Initializer/random_uniform/mul7generator/Conv_6/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_6/weights*&
_output_shapes
:@@
?
generator/Conv_6/weightsVarHandleOp*+
_class!
loc:@generator/Conv_6/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@@*)
shared_namegenerator/Conv_6/weights
?
9generator/Conv_6/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_6/weights*
_output_shapes
: 
?
generator/Conv_6/weights/AssignAssignVariableOpgenerator/Conv_6/weights3generator/Conv_6/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_6/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_6/weights*&
_output_shapes
:@@*
dtype0
?
)generator/Conv_6/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_6/biases*
_output_shapes
:@*
dtype0*
valueB@*    
?
generator/Conv_6/biasesVarHandleOp**
_class 
loc:@generator/Conv_6/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@*(
shared_namegenerator/Conv_6/biases

8generator/Conv_6/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_6/biases*
_output_shapes
: 
?
generator/Conv_6/biases/AssignAssignVariableOpgenerator/Conv_6/biases)generator/Conv_6/biases/Initializer/zeros*
dtype0

+generator/Conv_6/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_6/biases*
_output_shapes
:@*
dtype0
?
&generator/Conv_6/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_6/weights*&
_output_shapes
:@@*
dtype0
?
generator/Conv_6/Conv2DConv2Dgenerator/add&generator/Conv_6/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_6/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_6/biases*
_output_shapes
:@*
dtype0
?
generator/Conv_6/BiasAddBiasAddgenerator/Conv_6/Conv2D'generator/Conv_6/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????@*
data_formatNHWC
?
generator/LeakyRelu_6	LeakyRelugenerator/Conv_6/BiasAdd*
T0*8
_output_shapes&
$:"??????????????????@*
alpha%??L>
?
9generator/Conv_7/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_7/weights*
_output_shapes
:*
dtype0*%
valueB"      @       
?
7generator/Conv_7/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_7/weights*
_output_shapes
: *
dtype0*
valueB
 *????
?
7generator/Conv_7/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_7/weights*
_output_shapes
: *
dtype0*
valueB
 *???=
?
Agenerator/Conv_7/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_7/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_7/weights*&
_output_shapes
:@ *
dtype0*

seed *
seed2 
?
7generator/Conv_7/weights/Initializer/random_uniform/subSub7generator/Conv_7/weights/Initializer/random_uniform/max7generator/Conv_7/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_7/weights*
_output_shapes
: 
?
7generator/Conv_7/weights/Initializer/random_uniform/mulMulAgenerator/Conv_7/weights/Initializer/random_uniform/RandomUniform7generator/Conv_7/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_7/weights*&
_output_shapes
:@ 
?
3generator/Conv_7/weights/Initializer/random_uniformAdd7generator/Conv_7/weights/Initializer/random_uniform/mul7generator/Conv_7/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_7/weights*&
_output_shapes
:@ 
?
generator/Conv_7/weightsVarHandleOp*+
_class!
loc:@generator/Conv_7/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:@ *)
shared_namegenerator/Conv_7/weights
?
9generator/Conv_7/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_7/weights*
_output_shapes
: 
?
generator/Conv_7/weights/AssignAssignVariableOpgenerator/Conv_7/weights3generator/Conv_7/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_7/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_7/weights*&
_output_shapes
:@ *
dtype0
?
)generator/Conv_7/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_7/biases*
_output_shapes
: *
dtype0*
valueB *    
?
generator/Conv_7/biasesVarHandleOp**
_class 
loc:@generator/Conv_7/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *(
shared_namegenerator/Conv_7/biases

8generator/Conv_7/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_7/biases*
_output_shapes
: 
?
generator/Conv_7/biases/AssignAssignVariableOpgenerator/Conv_7/biases)generator/Conv_7/biases/Initializer/zeros*
dtype0

+generator/Conv_7/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_7/biases*
_output_shapes
: *
dtype0
?
&generator/Conv_7/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_7/weights*&
_output_shapes
:@ *
dtype0
?
generator/Conv_7/Conv2DConv2Dgenerator/LeakyRelu_6&generator/Conv_7/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_7/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_7/biases*
_output_shapes
: *
dtype0
?
generator/Conv_7/BiasAddBiasAddgenerator/Conv_7/Conv2D'generator/Conv_7/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC
?
generator/LeakyRelu_7	LeakyRelugenerator/Conv_7/BiasAdd*
T0*8
_output_shapes&
$:"?????????????????? *
alpha%??L>
f
generator/Shape_2Shapegenerator/LeakyRelu_7*
T0*
_output_shapes
:*
out_type0
i
generator/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
generator/strided_slice_2StridedSlicegenerator/Shape_2generator/strided_slice_2/stack!generator/strided_slice_2/stack_1!generator/strided_slice_2/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
f
generator/Shape_3Shapegenerator/LeakyRelu_7*
T0*
_output_shapes
:*
out_type0
i
generator/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
k
!generator/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
generator/strided_slice_3StridedSlicegenerator/Shape_3generator/strided_slice_3/stack!generator/strided_slice_3/stack_1!generator/strided_slice_3/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
S
generator/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
e
generator/mul_2Mulgenerator/strided_slice_2generator/mul_2/y*
T0*
_output_shapes
: 
S
generator/mul_3/yConst*
_output_shapes
: *
dtype0*
value	B :
e
generator/mul_3Mulgenerator/strided_slice_3generator/mul_3/y*
T0*
_output_shapes
: 
?
generator/ResizeBilinear_1/sizePackgenerator/mul_2generator/mul_3*
N*
T0*
_output_shapes
:*

axis 
?
generator/ResizeBilinear_1ResizeBilineargenerator/LeakyRelu_7generator/ResizeBilinear_1/size*
T0*8
_output_shapes&
$:"?????????????????? *
align_corners( *
half_pixel_centers( 
?
generator/add_1AddV2generator/ResizeBilinear_1generator/LeakyRelu*
T0*8
_output_shapes&
$:"?????????????????? 
?
9generator/Conv_8/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_8/weights*
_output_shapes
:*
dtype0*%
valueB"              
?
7generator/Conv_8/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_8/weights*
_output_shapes
: *
dtype0*
valueB
 *?ѽ
?
7generator/Conv_8/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_8/weights*
_output_shapes
: *
dtype0*
valueB
 *??=
?
Agenerator/Conv_8/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_8/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_8/weights*&
_output_shapes
:  *
dtype0*

seed *
seed2 
?
7generator/Conv_8/weights/Initializer/random_uniform/subSub7generator/Conv_8/weights/Initializer/random_uniform/max7generator/Conv_8/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_8/weights*
_output_shapes
: 
?
7generator/Conv_8/weights/Initializer/random_uniform/mulMulAgenerator/Conv_8/weights/Initializer/random_uniform/RandomUniform7generator/Conv_8/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_8/weights*&
_output_shapes
:  
?
3generator/Conv_8/weights/Initializer/random_uniformAdd7generator/Conv_8/weights/Initializer/random_uniform/mul7generator/Conv_8/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_8/weights*&
_output_shapes
:  
?
generator/Conv_8/weightsVarHandleOp*+
_class!
loc:@generator/Conv_8/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:  *)
shared_namegenerator/Conv_8/weights
?
9generator/Conv_8/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_8/weights*
_output_shapes
: 
?
generator/Conv_8/weights/AssignAssignVariableOpgenerator/Conv_8/weights3generator/Conv_8/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_8/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_8/weights*&
_output_shapes
:  *
dtype0
?
)generator/Conv_8/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_8/biases*
_output_shapes
: *
dtype0*
valueB *    
?
generator/Conv_8/biasesVarHandleOp**
_class 
loc:@generator/Conv_8/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *(
shared_namegenerator/Conv_8/biases

8generator/Conv_8/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_8/biases*
_output_shapes
: 
?
generator/Conv_8/biases/AssignAssignVariableOpgenerator/Conv_8/biases)generator/Conv_8/biases/Initializer/zeros*
dtype0

+generator/Conv_8/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_8/biases*
_output_shapes
: *
dtype0
?
&generator/Conv_8/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_8/weights*&
_output_shapes
:  *
dtype0
?
generator/Conv_8/Conv2DConv2Dgenerator/add_1&generator/Conv_8/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_8/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_8/biases*
_output_shapes
: *
dtype0
?
generator/Conv_8/BiasAddBiasAddgenerator/Conv_8/Conv2D'generator/Conv_8/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"?????????????????? *
data_formatNHWC
?
generator/LeakyRelu_8	LeakyRelugenerator/Conv_8/BiasAdd*
T0*8
_output_shapes&
$:"?????????????????? *
alpha%??L>
?
9generator/Conv_9/weights/Initializer/random_uniform/shapeConst*+
_class!
loc:@generator/Conv_9/weights*
_output_shapes
:*
dtype0*%
valueB"             
?
7generator/Conv_9/weights/Initializer/random_uniform/minConst*+
_class!
loc:@generator/Conv_9/weights*
_output_shapes
: *
dtype0*
valueB
 *?Er?
?
7generator/Conv_9/weights/Initializer/random_uniform/maxConst*+
_class!
loc:@generator/Conv_9/weights*
_output_shapes
: *
dtype0*
valueB
 *?Er=
?
Agenerator/Conv_9/weights/Initializer/random_uniform/RandomUniformRandomUniform9generator/Conv_9/weights/Initializer/random_uniform/shape*
T0*+
_class!
loc:@generator/Conv_9/weights*&
_output_shapes
: *
dtype0*

seed *
seed2 
?
7generator/Conv_9/weights/Initializer/random_uniform/subSub7generator/Conv_9/weights/Initializer/random_uniform/max7generator/Conv_9/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_9/weights*
_output_shapes
: 
?
7generator/Conv_9/weights/Initializer/random_uniform/mulMulAgenerator/Conv_9/weights/Initializer/random_uniform/RandomUniform7generator/Conv_9/weights/Initializer/random_uniform/sub*
T0*+
_class!
loc:@generator/Conv_9/weights*&
_output_shapes
: 
?
3generator/Conv_9/weights/Initializer/random_uniformAdd7generator/Conv_9/weights/Initializer/random_uniform/mul7generator/Conv_9/weights/Initializer/random_uniform/min*
T0*+
_class!
loc:@generator/Conv_9/weights*&
_output_shapes
: 
?
generator/Conv_9/weightsVarHandleOp*+
_class!
loc:@generator/Conv_9/weights*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape: *)
shared_namegenerator/Conv_9/weights
?
9generator/Conv_9/weights/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_9/weights*
_output_shapes
: 
?
generator/Conv_9/weights/AssignAssignVariableOpgenerator/Conv_9/weights3generator/Conv_9/weights/Initializer/random_uniform*
dtype0
?
,generator/Conv_9/weights/Read/ReadVariableOpReadVariableOpgenerator/Conv_9/weights*&
_output_shapes
: *
dtype0
?
)generator/Conv_9/biases/Initializer/zerosConst**
_class 
loc:@generator/Conv_9/biases*
_output_shapes
:*
dtype0*
valueB*    
?
generator/Conv_9/biasesVarHandleOp**
_class 
loc:@generator/Conv_9/biases*
_output_shapes
: *
allowed_devices
 *
	container *
dtype0*
shape:*(
shared_namegenerator/Conv_9/biases

8generator/Conv_9/biases/IsInitialized/VarIsInitializedOpVarIsInitializedOpgenerator/Conv_9/biases*
_output_shapes
: 
?
generator/Conv_9/biases/AssignAssignVariableOpgenerator/Conv_9/biases)generator/Conv_9/biases/Initializer/zeros*
dtype0

+generator/Conv_9/biases/Read/ReadVariableOpReadVariableOpgenerator/Conv_9/biases*
_output_shapes
:*
dtype0
?
&generator/Conv_9/Conv2D/ReadVariableOpReadVariableOpgenerator/Conv_9/weights*&
_output_shapes
: *
dtype0
?
generator/Conv_9/Conv2DConv2Dgenerator/LeakyRelu_8&generator/Conv_9/Conv2D/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides
*
use_cudnn_on_gpu(
{
'generator/Conv_9/BiasAdd/ReadVariableOpReadVariableOpgenerator/Conv_9/biases*
_output_shapes
:*
dtype0
?
generator/Conv_9/BiasAddBiasAddgenerator/Conv_9/Conv2D'generator/Conv_9/BiasAdd/ReadVariableOp*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC
P
ShapeShapeinput_photo*
T0*
_output_shapes
:*
out_type0
]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
?
strided_slice_1StridedSliceShapestrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
Index0*
T0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
new_axis_mask *
shrink_axis_mask
L

ones/mul/xConst*
_output_shapes
: *
dtype0*
value	B :
K
ones/mulMul
ones/mul/xstrided_slice*
T0*
_output_shapes
: 
M

ones/mul_1Mulones/mulstrided_slice_1*
T0*
_output_shapes
: 
N
ones/mul_2/yConst*
_output_shapes
: *
dtype0*
value	B :
L

ones/mul_2Mul
ones/mul_1ones/mul_2/y*
T0*
_output_shapes
: 
N
ones/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?
K
	ones/LessLess
ones/mul_2ones/Less/y*
T0*
_output_shapes
: 
O
ones/packed/0Const*
_output_shapes
: *
dtype0*
value	B :
O
ones/packed/3Const*
_output_shapes
: *
dtype0*
value	B :
?
ones/packedPackones/packed/0strided_slicestrided_slice_1ones/packed/3*
N*
T0*
_output_shapes
:*

axis 
O

ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??
z
onesFillones/packed
ones/Const*
T0*8
_output_shapes&
$:"??????????????????*

index_type0
?
depthwise/filter_inConst*&
_output_shapes
:*
dtype0*E
value<B:"$9??=9??=9??=9??=9??=9??=9??=9??=9??=
h
depthwise/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
h
depthwise/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
	depthwiseDepthwiseConv2dNativeonesdepthwise/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

?
depthwise_1/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_1/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_1DepthwiseConv2dNativeinput_photodepthwise_1/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

m
truedivRealDivdepthwise_1	depthwise*
T0*8
_output_shapes&
$:"??????????????????
?
depthwise_2/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_2/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_2/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_2DepthwiseConv2dNativegenerator/Conv_9/BiasAdddepthwise_2/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

o
	truediv_1RealDivdepthwise_2	depthwise*
T0*8
_output_shapes&
$:"??????????????????
t
mulMulinput_photogenerator/Conv_9/BiasAdd*
T0*8
_output_shapes&
$:"??????????????????
?
depthwise_3/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_3/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_3/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_3DepthwiseConv2dNativemuldepthwise_3/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

o
	truediv_2RealDivdepthwise_3	depthwise*
T0*8
_output_shapes&
$:"??????????????????
c
mul_1Multruediv	truediv_1*
T0*8
_output_shapes&
$:"??????????????????
_
subSub	truediv_2mul_1*
T0*8
_output_shapes&
$:"??????????????????
i
mul_2Mulinput_photoinput_photo*
T0*8
_output_shapes&
$:"??????????????????
?
depthwise_4/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_4/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_4/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_4DepthwiseConv2dNativemul_2depthwise_4/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

o
	truediv_3RealDivdepthwise_4	depthwise*
T0*8
_output_shapes&
$:"??????????????????
a
mul_3Multruedivtruediv*
T0*8
_output_shapes&
$:"??????????????????
a
sub_1Sub	truediv_3mul_3*
T0*8
_output_shapes&
$:"??????????????????
J
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף;
]
addAddV2sub_1add/y*
T0*8
_output_shapes&
$:"??????????????????
a
	truediv_4RealDivsubadd*
T0*8
_output_shapes&
$:"??????????????????
c
mul_4Mul	truediv_4truediv*
T0*8
_output_shapes&
$:"??????????????????
a
sub_2Sub	truediv_1mul_4*
T0*8
_output_shapes&
$:"??????????????????
?
depthwise_5/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_5/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_5/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_5DepthwiseConv2dNative	truediv_4depthwise_5/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

o
	truediv_5RealDivdepthwise_5	depthwise*
T0*8
_output_shapes&
$:"??????????????????
?
depthwise_6/filter_inConst*&
_output_shapes
:*
dtype0*?
value?B?"l9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=9??=
j
depthwise_6/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            
j
depthwise_6/dilation_rateConst*
_output_shapes
:*
dtype0*
valueB"      
?
depthwise_6DepthwiseConv2dNativesub_2depthwise_6/filter_in*
T0*8
_output_shapes&
$:"??????????????????*
data_formatNHWC*
	dilations
*
explicit_paddings
 *
paddingSAME*
strides

o
	truediv_6RealDivdepthwise_6	depthwise*
T0*8
_output_shapes&
$:"??????????????????
g
mul_5Mul	truediv_5input_photo*
T0*8
_output_shapes&
$:"??????????????????
c
add_1AddV2mul_5	truediv_6*
T0*8
_output_shapes&
$:"??????????????????
Y
save/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
_output_shapes
: *
dtype0*
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
dtype0*
shape: 
?
save/SaveV2/tensor_namesConst*
_output_shapes
:$*
dtype0*?
value?B?$Bgenerator/Conv/biasesBgenerator/Conv/weightsBgenerator/Conv_1/biasesBgenerator/Conv_1/weightsBgenerator/Conv_2/biasesBgenerator/Conv_2/weightsBgenerator/Conv_3/biasesBgenerator/Conv_3/weightsBgenerator/Conv_4/biasesBgenerator/Conv_4/weightsBgenerator/Conv_5/biasesBgenerator/Conv_5/weightsBgenerator/Conv_6/biasesBgenerator/Conv_6/weightsBgenerator/Conv_7/biasesBgenerator/Conv_7/weightsBgenerator/Conv_8/biasesBgenerator/Conv_8/weightsBgenerator/Conv_9/biasesBgenerator/Conv_9/weightsBgenerator/block_0/conv1/biasesBgenerator/block_0/conv1/weightsBgenerator/block_0/conv2/biasesBgenerator/block_0/conv2/weightsBgenerator/block_1/conv1/biasesBgenerator/block_1/conv1/weightsBgenerator/block_1/conv2/biasesBgenerator/block_1/conv2/weightsBgenerator/block_2/conv1/biasesBgenerator/block_2/conv1/weightsBgenerator/block_2/conv2/biasesBgenerator/block_2/conv2/weightsBgenerator/block_3/conv1/biasesBgenerator/block_3/conv1/weightsBgenerator/block_3/conv2/biasesBgenerator/block_3/conv2/weights
?
save/SaveV2/shape_and_slicesConst*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices)generator/Conv/biases/Read/ReadVariableOp*generator/Conv/weights/Read/ReadVariableOp+generator/Conv_1/biases/Read/ReadVariableOp,generator/Conv_1/weights/Read/ReadVariableOp+generator/Conv_2/biases/Read/ReadVariableOp,generator/Conv_2/weights/Read/ReadVariableOp+generator/Conv_3/biases/Read/ReadVariableOp,generator/Conv_3/weights/Read/ReadVariableOp+generator/Conv_4/biases/Read/ReadVariableOp,generator/Conv_4/weights/Read/ReadVariableOp+generator/Conv_5/biases/Read/ReadVariableOp,generator/Conv_5/weights/Read/ReadVariableOp+generator/Conv_6/biases/Read/ReadVariableOp,generator/Conv_6/weights/Read/ReadVariableOp+generator/Conv_7/biases/Read/ReadVariableOp,generator/Conv_7/weights/Read/ReadVariableOp+generator/Conv_8/biases/Read/ReadVariableOp,generator/Conv_8/weights/Read/ReadVariableOp+generator/Conv_9/biases/Read/ReadVariableOp,generator/Conv_9/weights/Read/ReadVariableOp2generator/block_0/conv1/biases/Read/ReadVariableOp3generator/block_0/conv1/weights/Read/ReadVariableOp2generator/block_0/conv2/biases/Read/ReadVariableOp3generator/block_0/conv2/weights/Read/ReadVariableOp2generator/block_1/conv1/biases/Read/ReadVariableOp3generator/block_1/conv1/weights/Read/ReadVariableOp2generator/block_1/conv2/biases/Read/ReadVariableOp3generator/block_1/conv2/weights/Read/ReadVariableOp2generator/block_2/conv1/biases/Read/ReadVariableOp3generator/block_2/conv1/weights/Read/ReadVariableOp2generator/block_2/conv2/biases/Read/ReadVariableOp3generator/block_2/conv2/weights/Read/ReadVariableOp2generator/block_3/conv1/biases/Read/ReadVariableOp3generator/block_3/conv1/weights/Read/ReadVariableOp2generator/block_3/conv2/biases/Read/ReadVariableOp3generator/block_3/conv2/weights/Read/ReadVariableOp*2
dtypes(
&2$
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
?
save/RestoreV2/tensor_namesConst*
_output_shapes
:$*
dtype0*?
value?B?$Bgenerator/Conv/biasesBgenerator/Conv/weightsBgenerator/Conv_1/biasesBgenerator/Conv_1/weightsBgenerator/Conv_2/biasesBgenerator/Conv_2/weightsBgenerator/Conv_3/biasesBgenerator/Conv_3/weightsBgenerator/Conv_4/biasesBgenerator/Conv_4/weightsBgenerator/Conv_5/biasesBgenerator/Conv_5/weightsBgenerator/Conv_6/biasesBgenerator/Conv_6/weightsBgenerator/Conv_7/biasesBgenerator/Conv_7/weightsBgenerator/Conv_8/biasesBgenerator/Conv_8/weightsBgenerator/Conv_9/biasesBgenerator/Conv_9/weightsBgenerator/block_0/conv1/biasesBgenerator/block_0/conv1/weightsBgenerator/block_0/conv2/biasesBgenerator/block_0/conv2/weightsBgenerator/block_1/conv1/biasesBgenerator/block_1/conv1/weightsBgenerator/block_1/conv2/biasesBgenerator/block_1/conv2/weightsBgenerator/block_2/conv1/biasesBgenerator/block_2/conv1/weightsBgenerator/block_2/conv2/biasesBgenerator/block_2/conv2/weightsBgenerator/block_3/conv1/biasesBgenerator/block_3/conv1/weightsBgenerator/block_3/conv2/biasesBgenerator/block_3/conv2/weights
?
save/RestoreV2/shape_and_slicesConst*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
\
save/AssignVariableOpAssignVariableOpgenerator/Conv/biasessave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
a
save/AssignVariableOp_1AssignVariableOpgenerator/Conv/weightssave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
b
save/AssignVariableOp_2AssignVariableOpgenerator/Conv_1/biasessave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
c
save/AssignVariableOp_3AssignVariableOpgenerator/Conv_1/weightssave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
T0*
_output_shapes
:
b
save/AssignVariableOp_4AssignVariableOpgenerator/Conv_2/biasessave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
T0*
_output_shapes
:
c
save/AssignVariableOp_5AssignVariableOpgenerator/Conv_2/weightssave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
b
save/AssignVariableOp_6AssignVariableOpgenerator/Conv_3/biasessave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
c
save/AssignVariableOp_7AssignVariableOpgenerator/Conv_3/weightssave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
b
save/AssignVariableOp_8AssignVariableOpgenerator/Conv_4/biasessave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
c
save/AssignVariableOp_9AssignVariableOpgenerator/Conv_4/weightssave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
d
save/AssignVariableOp_10AssignVariableOpgenerator/Conv_5/biasessave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
e
save/AssignVariableOp_11AssignVariableOpgenerator/Conv_5/weightssave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
d
save/AssignVariableOp_12AssignVariableOpgenerator/Conv_6/biasessave/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
e
save/AssignVariableOp_13AssignVariableOpgenerator/Conv_6/weightssave/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
d
save/AssignVariableOp_14AssignVariableOpgenerator/Conv_7/biasessave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0*
_output_shapes
:
e
save/AssignVariableOp_15AssignVariableOpgenerator/Conv_7/weightssave/Identity_15*
dtype0
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
d
save/AssignVariableOp_16AssignVariableOpgenerator/Conv_8/biasessave/Identity_16*
dtype0
R
save/Identity_17Identitysave/RestoreV2:17*
T0*
_output_shapes
:
e
save/AssignVariableOp_17AssignVariableOpgenerator/Conv_8/weightssave/Identity_17*
dtype0
R
save/Identity_18Identitysave/RestoreV2:18*
T0*
_output_shapes
:
d
save/AssignVariableOp_18AssignVariableOpgenerator/Conv_9/biasessave/Identity_18*
dtype0
R
save/Identity_19Identitysave/RestoreV2:19*
T0*
_output_shapes
:
e
save/AssignVariableOp_19AssignVariableOpgenerator/Conv_9/weightssave/Identity_19*
dtype0
R
save/Identity_20Identitysave/RestoreV2:20*
T0*
_output_shapes
:
k
save/AssignVariableOp_20AssignVariableOpgenerator/block_0/conv1/biasessave/Identity_20*
dtype0
R
save/Identity_21Identitysave/RestoreV2:21*
T0*
_output_shapes
:
l
save/AssignVariableOp_21AssignVariableOpgenerator/block_0/conv1/weightssave/Identity_21*
dtype0
R
save/Identity_22Identitysave/RestoreV2:22*
T0*
_output_shapes
:
k
save/AssignVariableOp_22AssignVariableOpgenerator/block_0/conv2/biasessave/Identity_22*
dtype0
R
save/Identity_23Identitysave/RestoreV2:23*
T0*
_output_shapes
:
l
save/AssignVariableOp_23AssignVariableOpgenerator/block_0/conv2/weightssave/Identity_23*
dtype0
R
save/Identity_24Identitysave/RestoreV2:24*
T0*
_output_shapes
:
k
save/AssignVariableOp_24AssignVariableOpgenerator/block_1/conv1/biasessave/Identity_24*
dtype0
R
save/Identity_25Identitysave/RestoreV2:25*
T0*
_output_shapes
:
l
save/AssignVariableOp_25AssignVariableOpgenerator/block_1/conv1/weightssave/Identity_25*
dtype0
R
save/Identity_26Identitysave/RestoreV2:26*
T0*
_output_shapes
:
k
save/AssignVariableOp_26AssignVariableOpgenerator/block_1/conv2/biasessave/Identity_26*
dtype0
R
save/Identity_27Identitysave/RestoreV2:27*
T0*
_output_shapes
:
l
save/AssignVariableOp_27AssignVariableOpgenerator/block_1/conv2/weightssave/Identity_27*
dtype0
R
save/Identity_28Identitysave/RestoreV2:28*
T0*
_output_shapes
:
k
save/AssignVariableOp_28AssignVariableOpgenerator/block_2/conv1/biasessave/Identity_28*
dtype0
R
save/Identity_29Identitysave/RestoreV2:29*
T0*
_output_shapes
:
l
save/AssignVariableOp_29AssignVariableOpgenerator/block_2/conv1/weightssave/Identity_29*
dtype0
R
save/Identity_30Identitysave/RestoreV2:30*
T0*
_output_shapes
:
k
save/AssignVariableOp_30AssignVariableOpgenerator/block_2/conv2/biasessave/Identity_30*
dtype0
R
save/Identity_31Identitysave/RestoreV2:31*
T0*
_output_shapes
:
l
save/AssignVariableOp_31AssignVariableOpgenerator/block_2/conv2/weightssave/Identity_31*
dtype0
R
save/Identity_32Identitysave/RestoreV2:32*
T0*
_output_shapes
:
k
save/AssignVariableOp_32AssignVariableOpgenerator/block_3/conv1/biasessave/Identity_32*
dtype0
R
save/Identity_33Identitysave/RestoreV2:33*
T0*
_output_shapes
:
l
save/AssignVariableOp_33AssignVariableOpgenerator/block_3/conv1/weightssave/Identity_33*
dtype0
R
save/Identity_34Identitysave/RestoreV2:34*
T0*
_output_shapes
:
k
save/AssignVariableOp_34AssignVariableOpgenerator/block_3/conv2/biasessave/Identity_34*
dtype0
R
save/Identity_35Identitysave/RestoreV2:35*
T0*
_output_shapes
:
l
save/AssignVariableOp_35AssignVariableOpgenerator/block_3/conv2/weightssave/Identity_35*
dtype0
?
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_17^save/AssignVariableOp_18^save/AssignVariableOp_19^save/AssignVariableOp_2^save/AssignVariableOp_20^save/AssignVariableOp_21^save/AssignVariableOp_22^save/AssignVariableOp_23^save/AssignVariableOp_24^save/AssignVariableOp_25^save/AssignVariableOp_26^save/AssignVariableOp_27^save/AssignVariableOp_28^save/AssignVariableOp_29^save/AssignVariableOp_3^save/AssignVariableOp_30^save/AssignVariableOp_31^save/AssignVariableOp_32^save/AssignVariableOp_33^save/AssignVariableOp_34^save/AssignVariableOp_35^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
?

initNoOp^generator/Conv/biases/Assign^generator/Conv/weights/Assign^generator/Conv_1/biases/Assign ^generator/Conv_1/weights/Assign^generator/Conv_2/biases/Assign ^generator/Conv_2/weights/Assign^generator/Conv_3/biases/Assign ^generator/Conv_3/weights/Assign^generator/Conv_4/biases/Assign ^generator/Conv_4/weights/Assign^generator/Conv_5/biases/Assign ^generator/Conv_5/weights/Assign^generator/Conv_6/biases/Assign ^generator/Conv_6/weights/Assign^generator/Conv_7/biases/Assign ^generator/Conv_7/weights/Assign^generator/Conv_8/biases/Assign ^generator/Conv_8/weights/Assign^generator/Conv_9/biases/Assign ^generator/Conv_9/weights/Assign&^generator/block_0/conv1/biases/Assign'^generator/block_0/conv1/weights/Assign&^generator/block_0/conv2/biases/Assign'^generator/block_0/conv2/weights/Assign&^generator/block_1/conv1/biases/Assign'^generator/block_1/conv1/weights/Assign&^generator/block_1/conv2/biases/Assign'^generator/block_1/conv2/weights/Assign&^generator/block_2/conv1/biases/Assign'^generator/block_2/conv1/weights/Assign&^generator/block_2/conv2/biases/Assign'^generator/block_2/conv2/weights/Assign&^generator/block_3/conv1/biases/Assign'^generator/block_3/conv1/weights/Assign&^generator/block_3/conv2/biases/Assign'^generator/block_3/conv2/weights/Assign
[
save_1/filename/inputConst*
_output_shapes
: *
dtype0*
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
_output_shapes
: *
dtype0*
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
dtype0*
shape: 
p
save_1/StaticRegexFullMatchStaticRegexFullMatchsave_1/Const*
_output_shapes
: *
pattern
^s3://.*
T
save_1/Const_1Const*
_output_shapes
: *
dtype0*
valueB B.part
Y
save_1/Const_2Const*
_output_shapes
: *
dtype0*
valueB B
_temp/part
u
save_1/SelectSelectsave_1/StaticRegexFullMatchsave_1/Const_1save_1/Const_2*
T0*
_output_shapes
: 
n
save_1/StringJoin
StringJoinsave_1/Constsave_1/Select*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
_output_shapes
: *
dtype0*
value	B :
^
save_1/ShardedFilename/shardConst*
_output_shapes
: *
dtype0*
value	B : 
?
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
?
save_1/SaveV2/tensor_namesConst*
_output_shapes
:$*
dtype0*?
value?B?$Bgenerator/Conv/biasesBgenerator/Conv/weightsBgenerator/Conv_1/biasesBgenerator/Conv_1/weightsBgenerator/Conv_2/biasesBgenerator/Conv_2/weightsBgenerator/Conv_3/biasesBgenerator/Conv_3/weightsBgenerator/Conv_4/biasesBgenerator/Conv_4/weightsBgenerator/Conv_5/biasesBgenerator/Conv_5/weightsBgenerator/Conv_6/biasesBgenerator/Conv_6/weightsBgenerator/Conv_7/biasesBgenerator/Conv_7/weightsBgenerator/Conv_8/biasesBgenerator/Conv_8/weightsBgenerator/Conv_9/biasesBgenerator/Conv_9/weightsBgenerator/block_0/conv1/biasesBgenerator/block_0/conv1/weightsBgenerator/block_0/conv2/biasesBgenerator/block_0/conv2/weightsBgenerator/block_1/conv1/biasesBgenerator/block_1/conv1/weightsBgenerator/block_1/conv2/biasesBgenerator/block_1/conv2/weightsBgenerator/block_2/conv1/biasesBgenerator/block_2/conv1/weightsBgenerator/block_2/conv2/biasesBgenerator/block_2/conv2/weightsBgenerator/block_3/conv1/biasesBgenerator/block_3/conv1/weightsBgenerator/block_3/conv2/biasesBgenerator/block_3/conv2/weights
?
save_1/SaveV2/shape_and_slicesConst*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices)generator/Conv/biases/Read/ReadVariableOp*generator/Conv/weights/Read/ReadVariableOp+generator/Conv_1/biases/Read/ReadVariableOp,generator/Conv_1/weights/Read/ReadVariableOp+generator/Conv_2/biases/Read/ReadVariableOp,generator/Conv_2/weights/Read/ReadVariableOp+generator/Conv_3/biases/Read/ReadVariableOp,generator/Conv_3/weights/Read/ReadVariableOp+generator/Conv_4/biases/Read/ReadVariableOp,generator/Conv_4/weights/Read/ReadVariableOp+generator/Conv_5/biases/Read/ReadVariableOp,generator/Conv_5/weights/Read/ReadVariableOp+generator/Conv_6/biases/Read/ReadVariableOp,generator/Conv_6/weights/Read/ReadVariableOp+generator/Conv_7/biases/Read/ReadVariableOp,generator/Conv_7/weights/Read/ReadVariableOp+generator/Conv_8/biases/Read/ReadVariableOp,generator/Conv_8/weights/Read/ReadVariableOp+generator/Conv_9/biases/Read/ReadVariableOp,generator/Conv_9/weights/Read/ReadVariableOp2generator/block_0/conv1/biases/Read/ReadVariableOp3generator/block_0/conv1/weights/Read/ReadVariableOp2generator/block_0/conv2/biases/Read/ReadVariableOp3generator/block_0/conv2/weights/Read/ReadVariableOp2generator/block_1/conv1/biases/Read/ReadVariableOp3generator/block_1/conv1/weights/Read/ReadVariableOp2generator/block_1/conv2/biases/Read/ReadVariableOp3generator/block_1/conv2/weights/Read/ReadVariableOp2generator/block_2/conv1/biases/Read/ReadVariableOp3generator/block_2/conv1/weights/Read/ReadVariableOp2generator/block_2/conv2/biases/Read/ReadVariableOp3generator/block_2/conv2/weights/Read/ReadVariableOp2generator/block_3/conv1/biases/Read/ReadVariableOp3generator/block_3/conv1/weights/Read/ReadVariableOp2generator/block_3/conv2/biases/Read/ReadVariableOp3generator/block_3/conv2/weights/Read/ReadVariableOp*2
dtypes(
&2$
?
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
?
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
T0*
_output_shapes
:*

axis 
?
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
?
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
?
save_1/RestoreV2/tensor_namesConst*
_output_shapes
:$*
dtype0*?
value?B?$Bgenerator/Conv/biasesBgenerator/Conv/weightsBgenerator/Conv_1/biasesBgenerator/Conv_1/weightsBgenerator/Conv_2/biasesBgenerator/Conv_2/weightsBgenerator/Conv_3/biasesBgenerator/Conv_3/weightsBgenerator/Conv_4/biasesBgenerator/Conv_4/weightsBgenerator/Conv_5/biasesBgenerator/Conv_5/weightsBgenerator/Conv_6/biasesBgenerator/Conv_6/weightsBgenerator/Conv_7/biasesBgenerator/Conv_7/weightsBgenerator/Conv_8/biasesBgenerator/Conv_8/weightsBgenerator/Conv_9/biasesBgenerator/Conv_9/weightsBgenerator/block_0/conv1/biasesBgenerator/block_0/conv1/weightsBgenerator/block_0/conv2/biasesBgenerator/block_0/conv2/weightsBgenerator/block_1/conv1/biasesBgenerator/block_1/conv1/weightsBgenerator/block_1/conv2/biasesBgenerator/block_1/conv2/weightsBgenerator/block_2/conv1/biasesBgenerator/block_2/conv1/weightsBgenerator/block_2/conv2/biasesBgenerator/block_2/conv2/weightsBgenerator/block_3/conv1/biasesBgenerator/block_3/conv1/weightsBgenerator/block_3/conv2/biasesBgenerator/block_3/conv2/weights
?
!save_1/RestoreV2/shape_and_slicesConst*
_output_shapes
:$*
dtype0*[
valueRBP$B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
?
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::*2
dtypes(
&2$
R
save_1/Identity_1Identitysave_1/RestoreV2*
T0*
_output_shapes
:
b
save_1/AssignVariableOpAssignVariableOpgenerator/Conv/biasessave_1/Identity_1*
dtype0
T
save_1/Identity_2Identitysave_1/RestoreV2:1*
T0*
_output_shapes
:
e
save_1/AssignVariableOp_1AssignVariableOpgenerator/Conv/weightssave_1/Identity_2*
dtype0
T
save_1/Identity_3Identitysave_1/RestoreV2:2*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_2AssignVariableOpgenerator/Conv_1/biasessave_1/Identity_3*
dtype0
T
save_1/Identity_4Identitysave_1/RestoreV2:3*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_3AssignVariableOpgenerator/Conv_1/weightssave_1/Identity_4*
dtype0
T
save_1/Identity_5Identitysave_1/RestoreV2:4*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_4AssignVariableOpgenerator/Conv_2/biasessave_1/Identity_5*
dtype0
T
save_1/Identity_6Identitysave_1/RestoreV2:5*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_5AssignVariableOpgenerator/Conv_2/weightssave_1/Identity_6*
dtype0
T
save_1/Identity_7Identitysave_1/RestoreV2:6*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_6AssignVariableOpgenerator/Conv_3/biasessave_1/Identity_7*
dtype0
T
save_1/Identity_8Identitysave_1/RestoreV2:7*
T0*
_output_shapes
:
g
save_1/AssignVariableOp_7AssignVariableOpgenerator/Conv_3/weightssave_1/Identity_8*
dtype0
T
save_1/Identity_9Identitysave_1/RestoreV2:8*
T0*
_output_shapes
:
f
save_1/AssignVariableOp_8AssignVariableOpgenerator/Conv_4/biasessave_1/Identity_9*
dtype0
U
save_1/Identity_10Identitysave_1/RestoreV2:9*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_9AssignVariableOpgenerator/Conv_4/weightssave_1/Identity_10*
dtype0
V
save_1/Identity_11Identitysave_1/RestoreV2:10*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_10AssignVariableOpgenerator/Conv_5/biasessave_1/Identity_11*
dtype0
V
save_1/Identity_12Identitysave_1/RestoreV2:11*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_11AssignVariableOpgenerator/Conv_5/weightssave_1/Identity_12*
dtype0
V
save_1/Identity_13Identitysave_1/RestoreV2:12*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_12AssignVariableOpgenerator/Conv_6/biasessave_1/Identity_13*
dtype0
V
save_1/Identity_14Identitysave_1/RestoreV2:13*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_13AssignVariableOpgenerator/Conv_6/weightssave_1/Identity_14*
dtype0
V
save_1/Identity_15Identitysave_1/RestoreV2:14*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_14AssignVariableOpgenerator/Conv_7/biasessave_1/Identity_15*
dtype0
V
save_1/Identity_16Identitysave_1/RestoreV2:15*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_15AssignVariableOpgenerator/Conv_7/weightssave_1/Identity_16*
dtype0
V
save_1/Identity_17Identitysave_1/RestoreV2:16*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_16AssignVariableOpgenerator/Conv_8/biasessave_1/Identity_17*
dtype0
V
save_1/Identity_18Identitysave_1/RestoreV2:17*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_17AssignVariableOpgenerator/Conv_8/weightssave_1/Identity_18*
dtype0
V
save_1/Identity_19Identitysave_1/RestoreV2:18*
T0*
_output_shapes
:
h
save_1/AssignVariableOp_18AssignVariableOpgenerator/Conv_9/biasessave_1/Identity_19*
dtype0
V
save_1/Identity_20Identitysave_1/RestoreV2:19*
T0*
_output_shapes
:
i
save_1/AssignVariableOp_19AssignVariableOpgenerator/Conv_9/weightssave_1/Identity_20*
dtype0
V
save_1/Identity_21Identitysave_1/RestoreV2:20*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_20AssignVariableOpgenerator/block_0/conv1/biasessave_1/Identity_21*
dtype0
V
save_1/Identity_22Identitysave_1/RestoreV2:21*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_21AssignVariableOpgenerator/block_0/conv1/weightssave_1/Identity_22*
dtype0
V
save_1/Identity_23Identitysave_1/RestoreV2:22*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_22AssignVariableOpgenerator/block_0/conv2/biasessave_1/Identity_23*
dtype0
V
save_1/Identity_24Identitysave_1/RestoreV2:23*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_23AssignVariableOpgenerator/block_0/conv2/weightssave_1/Identity_24*
dtype0
V
save_1/Identity_25Identitysave_1/RestoreV2:24*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_24AssignVariableOpgenerator/block_1/conv1/biasessave_1/Identity_25*
dtype0
V
save_1/Identity_26Identitysave_1/RestoreV2:25*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_25AssignVariableOpgenerator/block_1/conv1/weightssave_1/Identity_26*
dtype0
V
save_1/Identity_27Identitysave_1/RestoreV2:26*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_26AssignVariableOpgenerator/block_1/conv2/biasessave_1/Identity_27*
dtype0
V
save_1/Identity_28Identitysave_1/RestoreV2:27*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_27AssignVariableOpgenerator/block_1/conv2/weightssave_1/Identity_28*
dtype0
V
save_1/Identity_29Identitysave_1/RestoreV2:28*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_28AssignVariableOpgenerator/block_2/conv1/biasessave_1/Identity_29*
dtype0
V
save_1/Identity_30Identitysave_1/RestoreV2:29*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_29AssignVariableOpgenerator/block_2/conv1/weightssave_1/Identity_30*
dtype0
V
save_1/Identity_31Identitysave_1/RestoreV2:30*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_30AssignVariableOpgenerator/block_2/conv2/biasessave_1/Identity_31*
dtype0
V
save_1/Identity_32Identitysave_1/RestoreV2:31*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_31AssignVariableOpgenerator/block_2/conv2/weightssave_1/Identity_32*
dtype0
V
save_1/Identity_33Identitysave_1/RestoreV2:32*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_32AssignVariableOpgenerator/block_3/conv1/biasessave_1/Identity_33*
dtype0
V
save_1/Identity_34Identitysave_1/RestoreV2:33*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_33AssignVariableOpgenerator/block_3/conv1/weightssave_1/Identity_34*
dtype0
V
save_1/Identity_35Identitysave_1/RestoreV2:34*
T0*
_output_shapes
:
o
save_1/AssignVariableOp_34AssignVariableOpgenerator/block_3/conv2/biasessave_1/Identity_35*
dtype0
V
save_1/Identity_36Identitysave_1/RestoreV2:35*
T0*
_output_shapes
:
p
save_1/AssignVariableOp_35AssignVariableOpgenerator/block_3/conv2/weightssave_1/Identity_36*
dtype0
?
save_1/restore_shardNoOp^save_1/AssignVariableOp^save_1/AssignVariableOp_1^save_1/AssignVariableOp_10^save_1/AssignVariableOp_11^save_1/AssignVariableOp_12^save_1/AssignVariableOp_13^save_1/AssignVariableOp_14^save_1/AssignVariableOp_15^save_1/AssignVariableOp_16^save_1/AssignVariableOp_17^save_1/AssignVariableOp_18^save_1/AssignVariableOp_19^save_1/AssignVariableOp_2^save_1/AssignVariableOp_20^save_1/AssignVariableOp_21^save_1/AssignVariableOp_22^save_1/AssignVariableOp_23^save_1/AssignVariableOp_24^save_1/AssignVariableOp_25^save_1/AssignVariableOp_26^save_1/AssignVariableOp_27^save_1/AssignVariableOp_28^save_1/AssignVariableOp_29^save_1/AssignVariableOp_3^save_1/AssignVariableOp_30^save_1/AssignVariableOp_31^save_1/AssignVariableOp_32^save_1/AssignVariableOp_33^save_1/AssignVariableOp_34^save_1/AssignVariableOp_35^save_1/AssignVariableOp_4^save_1/AssignVariableOp_5^save_1/AssignVariableOp_6^save_1/AssignVariableOp_7^save_1/AssignVariableOp_8^save_1/AssignVariableOp_9
1
save_1/restore_allNoOp^save_1/restore_shard "?B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"?1
model_variables?1?1
?
generator/Conv/weights:0generator/Conv/weights/Assign,generator/Conv/weights/Read/ReadVariableOp:0(23generator/Conv/weights/Initializer/random_uniform:08
?
generator/Conv/biases:0generator/Conv/biases/Assign+generator/Conv/biases/Read/ReadVariableOp:0(2)generator/Conv/biases/Initializer/zeros:08
?
generator/Conv_1/weights:0generator/Conv_1/weights/Assign.generator/Conv_1/weights/Read/ReadVariableOp:0(25generator/Conv_1/weights/Initializer/random_uniform:08
?
generator/Conv_1/biases:0generator/Conv_1/biases/Assign-generator/Conv_1/biases/Read/ReadVariableOp:0(2+generator/Conv_1/biases/Initializer/zeros:08
?
generator/Conv_2/weights:0generator/Conv_2/weights/Assign.generator/Conv_2/weights/Read/ReadVariableOp:0(25generator/Conv_2/weights/Initializer/random_uniform:08
?
generator/Conv_2/biases:0generator/Conv_2/biases/Assign-generator/Conv_2/biases/Read/ReadVariableOp:0(2+generator/Conv_2/biases/Initializer/zeros:08
?
generator/Conv_3/weights:0generator/Conv_3/weights/Assign.generator/Conv_3/weights/Read/ReadVariableOp:0(25generator/Conv_3/weights/Initializer/random_uniform:08
?
generator/Conv_3/biases:0generator/Conv_3/biases/Assign-generator/Conv_3/biases/Read/ReadVariableOp:0(2+generator/Conv_3/biases/Initializer/zeros:08
?
generator/Conv_4/weights:0generator/Conv_4/weights/Assign.generator/Conv_4/weights/Read/ReadVariableOp:0(25generator/Conv_4/weights/Initializer/random_uniform:08
?
generator/Conv_4/biases:0generator/Conv_4/biases/Assign-generator/Conv_4/biases/Read/ReadVariableOp:0(2+generator/Conv_4/biases/Initializer/zeros:08
?
!generator/block_0/conv1/weights:0&generator/block_0/conv1/weights/Assign5generator/block_0/conv1/weights/Read/ReadVariableOp:0(2<generator/block_0/conv1/weights/Initializer/random_uniform:08
?
 generator/block_0/conv1/biases:0%generator/block_0/conv1/biases/Assign4generator/block_0/conv1/biases/Read/ReadVariableOp:0(22generator/block_0/conv1/biases/Initializer/zeros:08
?
!generator/block_0/conv2/weights:0&generator/block_0/conv2/weights/Assign5generator/block_0/conv2/weights/Read/ReadVariableOp:0(2<generator/block_0/conv2/weights/Initializer/random_uniform:08
?
 generator/block_0/conv2/biases:0%generator/block_0/conv2/biases/Assign4generator/block_0/conv2/biases/Read/ReadVariableOp:0(22generator/block_0/conv2/biases/Initializer/zeros:08
?
!generator/block_1/conv1/weights:0&generator/block_1/conv1/weights/Assign5generator/block_1/conv1/weights/Read/ReadVariableOp:0(2<generator/block_1/conv1/weights/Initializer/random_uniform:08
?
 generator/block_1/conv1/biases:0%generator/block_1/conv1/biases/Assign4generator/block_1/conv1/biases/Read/ReadVariableOp:0(22generator/block_1/conv1/biases/Initializer/zeros:08
?
!generator/block_1/conv2/weights:0&generator/block_1/conv2/weights/Assign5generator/block_1/conv2/weights/Read/ReadVariableOp:0(2<generator/block_1/conv2/weights/Initializer/random_uniform:08
?
 generator/block_1/conv2/biases:0%generator/block_1/conv2/biases/Assign4generator/block_1/conv2/biases/Read/ReadVariableOp:0(22generator/block_1/conv2/biases/Initializer/zeros:08
?
!generator/block_2/conv1/weights:0&generator/block_2/conv1/weights/Assign5generator/block_2/conv1/weights/Read/ReadVariableOp:0(2<generator/block_2/conv1/weights/Initializer/random_uniform:08
?
 generator/block_2/conv1/biases:0%generator/block_2/conv1/biases/Assign4generator/block_2/conv1/biases/Read/ReadVariableOp:0(22generator/block_2/conv1/biases/Initializer/zeros:08
?
!generator/block_2/conv2/weights:0&generator/block_2/conv2/weights/Assign5generator/block_2/conv2/weights/Read/ReadVariableOp:0(2<generator/block_2/conv2/weights/Initializer/random_uniform:08
?
 generator/block_2/conv2/biases:0%generator/block_2/conv2/biases/Assign4generator/block_2/conv2/biases/Read/ReadVariableOp:0(22generator/block_2/conv2/biases/Initializer/zeros:08
?
!generator/block_3/conv1/weights:0&generator/block_3/conv1/weights/Assign5generator/block_3/conv1/weights/Read/ReadVariableOp:0(2<generator/block_3/conv1/weights/Initializer/random_uniform:08
?
 generator/block_3/conv1/biases:0%generator/block_3/conv1/biases/Assign4generator/block_3/conv1/biases/Read/ReadVariableOp:0(22generator/block_3/conv1/biases/Initializer/zeros:08
?
!generator/block_3/conv2/weights:0&generator/block_3/conv2/weights/Assign5generator/block_3/conv2/weights/Read/ReadVariableOp:0(2<generator/block_3/conv2/weights/Initializer/random_uniform:08
?
 generator/block_3/conv2/biases:0%generator/block_3/conv2/biases/Assign4generator/block_3/conv2/biases/Read/ReadVariableOp:0(22generator/block_3/conv2/biases/Initializer/zeros:08
?
generator/Conv_5/weights:0generator/Conv_5/weights/Assign.generator/Conv_5/weights/Read/ReadVariableOp:0(25generator/Conv_5/weights/Initializer/random_uniform:08
?
generator/Conv_5/biases:0generator/Conv_5/biases/Assign-generator/Conv_5/biases/Read/ReadVariableOp:0(2+generator/Conv_5/biases/Initializer/zeros:08
?
generator/Conv_6/weights:0generator/Conv_6/weights/Assign.generator/Conv_6/weights/Read/ReadVariableOp:0(25generator/Conv_6/weights/Initializer/random_uniform:08
?
generator/Conv_6/biases:0generator/Conv_6/biases/Assign-generator/Conv_6/biases/Read/ReadVariableOp:0(2+generator/Conv_6/biases/Initializer/zeros:08
?
generator/Conv_7/weights:0generator/Conv_7/weights/Assign.generator/Conv_7/weights/Read/ReadVariableOp:0(25generator/Conv_7/weights/Initializer/random_uniform:08
?
generator/Conv_7/biases:0generator/Conv_7/biases/Assign-generator/Conv_7/biases/Read/ReadVariableOp:0(2+generator/Conv_7/biases/Initializer/zeros:08
?
generator/Conv_8/weights:0generator/Conv_8/weights/Assign.generator/Conv_8/weights/Read/ReadVariableOp:0(25generator/Conv_8/weights/Initializer/random_uniform:08
?
generator/Conv_8/biases:0generator/Conv_8/biases/Assign-generator/Conv_8/biases/Read/ReadVariableOp:0(2+generator/Conv_8/biases/Initializer/zeros:08
?
generator/Conv_9/weights:0generator/Conv_9/weights/Assign.generator/Conv_9/weights/Read/ReadVariableOp:0(25generator/Conv_9/weights/Initializer/random_uniform:08
?
generator/Conv_9/biases:0generator/Conv_9/biases/Assign-generator/Conv_9/biases/Read/ReadVariableOp:0(2+generator/Conv_9/biases/Initializer/zeros:08"?1
trainable_variables?1?1
?
generator/Conv/weights:0generator/Conv/weights/Assign,generator/Conv/weights/Read/ReadVariableOp:0(23generator/Conv/weights/Initializer/random_uniform:08
?
generator/Conv/biases:0generator/Conv/biases/Assign+generator/Conv/biases/Read/ReadVariableOp:0(2)generator/Conv/biases/Initializer/zeros:08
?
generator/Conv_1/weights:0generator/Conv_1/weights/Assign.generator/Conv_1/weights/Read/ReadVariableOp:0(25generator/Conv_1/weights/Initializer/random_uniform:08
?
generator/Conv_1/biases:0generator/Conv_1/biases/Assign-generator/Conv_1/biases/Read/ReadVariableOp:0(2+generator/Conv_1/biases/Initializer/zeros:08
?
generator/Conv_2/weights:0generator/Conv_2/weights/Assign.generator/Conv_2/weights/Read/ReadVariableOp:0(25generator/Conv_2/weights/Initializer/random_uniform:08
?
generator/Conv_2/biases:0generator/Conv_2/biases/Assign-generator/Conv_2/biases/Read/ReadVariableOp:0(2+generator/Conv_2/biases/Initializer/zeros:08
?
generator/Conv_3/weights:0generator/Conv_3/weights/Assign.generator/Conv_3/weights/Read/ReadVariableOp:0(25generator/Conv_3/weights/Initializer/random_uniform:08
?
generator/Conv_3/biases:0generator/Conv_3/biases/Assign-generator/Conv_3/biases/Read/ReadVariableOp:0(2+generator/Conv_3/biases/Initializer/zeros:08
?
generator/Conv_4/weights:0generator/Conv_4/weights/Assign.generator/Conv_4/weights/Read/ReadVariableOp:0(25generator/Conv_4/weights/Initializer/random_uniform:08
?
generator/Conv_4/biases:0generator/Conv_4/biases/Assign-generator/Conv_4/biases/Read/ReadVariableOp:0(2+generator/Conv_4/biases/Initializer/zeros:08
?
!generator/block_0/conv1/weights:0&generator/block_0/conv1/weights/Assign5generator/block_0/conv1/weights/Read/ReadVariableOp:0(2<generator/block_0/conv1/weights/Initializer/random_uniform:08
?
 generator/block_0/conv1/biases:0%generator/block_0/conv1/biases/Assign4generator/block_0/conv1/biases/Read/ReadVariableOp:0(22generator/block_0/conv1/biases/Initializer/zeros:08
?
!generator/block_0/conv2/weights:0&generator/block_0/conv2/weights/Assign5generator/block_0/conv2/weights/Read/ReadVariableOp:0(2<generator/block_0/conv2/weights/Initializer/random_uniform:08
?
 generator/block_0/conv2/biases:0%generator/block_0/conv2/biases/Assign4generator/block_0/conv2/biases/Read/ReadVariableOp:0(22generator/block_0/conv2/biases/Initializer/zeros:08
?
!generator/block_1/conv1/weights:0&generator/block_1/conv1/weights/Assign5generator/block_1/conv1/weights/Read/ReadVariableOp:0(2<generator/block_1/conv1/weights/Initializer/random_uniform:08
?
 generator/block_1/conv1/biases:0%generator/block_1/conv1/biases/Assign4generator/block_1/conv1/biases/Read/ReadVariableOp:0(22generator/block_1/conv1/biases/Initializer/zeros:08
?
!generator/block_1/conv2/weights:0&generator/block_1/conv2/weights/Assign5generator/block_1/conv2/weights/Read/ReadVariableOp:0(2<generator/block_1/conv2/weights/Initializer/random_uniform:08
?
 generator/block_1/conv2/biases:0%generator/block_1/conv2/biases/Assign4generator/block_1/conv2/biases/Read/ReadVariableOp:0(22generator/block_1/conv2/biases/Initializer/zeros:08
?
!generator/block_2/conv1/weights:0&generator/block_2/conv1/weights/Assign5generator/block_2/conv1/weights/Read/ReadVariableOp:0(2<generator/block_2/conv1/weights/Initializer/random_uniform:08
?
 generator/block_2/conv1/biases:0%generator/block_2/conv1/biases/Assign4generator/block_2/conv1/biases/Read/ReadVariableOp:0(22generator/block_2/conv1/biases/Initializer/zeros:08
?
!generator/block_2/conv2/weights:0&generator/block_2/conv2/weights/Assign5generator/block_2/conv2/weights/Read/ReadVariableOp:0(2<generator/block_2/conv2/weights/Initializer/random_uniform:08
?
 generator/block_2/conv2/biases:0%generator/block_2/conv2/biases/Assign4generator/block_2/conv2/biases/Read/ReadVariableOp:0(22generator/block_2/conv2/biases/Initializer/zeros:08
?
!generator/block_3/conv1/weights:0&generator/block_3/conv1/weights/Assign5generator/block_3/conv1/weights/Read/ReadVariableOp:0(2<generator/block_3/conv1/weights/Initializer/random_uniform:08
?
 generator/block_3/conv1/biases:0%generator/block_3/conv1/biases/Assign4generator/block_3/conv1/biases/Read/ReadVariableOp:0(22generator/block_3/conv1/biases/Initializer/zeros:08
?
!generator/block_3/conv2/weights:0&generator/block_3/conv2/weights/Assign5generator/block_3/conv2/weights/Read/ReadVariableOp:0(2<generator/block_3/conv2/weights/Initializer/random_uniform:08
?
 generator/block_3/conv2/biases:0%generator/block_3/conv2/biases/Assign4generator/block_3/conv2/biases/Read/ReadVariableOp:0(22generator/block_3/conv2/biases/Initializer/zeros:08
?
generator/Conv_5/weights:0generator/Conv_5/weights/Assign.generator/Conv_5/weights/Read/ReadVariableOp:0(25generator/Conv_5/weights/Initializer/random_uniform:08
?
generator/Conv_5/biases:0generator/Conv_5/biases/Assign-generator/Conv_5/biases/Read/ReadVariableOp:0(2+generator/Conv_5/biases/Initializer/zeros:08
?
generator/Conv_6/weights:0generator/Conv_6/weights/Assign.generator/Conv_6/weights/Read/ReadVariableOp:0(25generator/Conv_6/weights/Initializer/random_uniform:08
?
generator/Conv_6/biases:0generator/Conv_6/biases/Assign-generator/Conv_6/biases/Read/ReadVariableOp:0(2+generator/Conv_6/biases/Initializer/zeros:08
?
generator/Conv_7/weights:0generator/Conv_7/weights/Assign.generator/Conv_7/weights/Read/ReadVariableOp:0(25generator/Conv_7/weights/Initializer/random_uniform:08
?
generator/Conv_7/biases:0generator/Conv_7/biases/Assign-generator/Conv_7/biases/Read/ReadVariableOp:0(2+generator/Conv_7/biases/Initializer/zeros:08
?
generator/Conv_8/weights:0generator/Conv_8/weights/Assign.generator/Conv_8/weights/Read/ReadVariableOp:0(25generator/Conv_8/weights/Initializer/random_uniform:08
?
generator/Conv_8/biases:0generator/Conv_8/biases/Assign-generator/Conv_8/biases/Read/ReadVariableOp:0(2+generator/Conv_8/biases/Initializer/zeros:08
?
generator/Conv_9/weights:0generator/Conv_9/weights/Assign.generator/Conv_9/weights/Read/ReadVariableOp:0(25generator/Conv_9/weights/Initializer/random_uniform:08
?
generator/Conv_9/biases:0generator/Conv_9/biases/Assign-generator/Conv_9/biases/Read/ReadVariableOp:0(2+generator/Conv_9/biases/Initializer/zeros:08"?1
	variables?1?1
?
generator/Conv/weights:0generator/Conv/weights/Assign,generator/Conv/weights/Read/ReadVariableOp:0(23generator/Conv/weights/Initializer/random_uniform:08
?
generator/Conv/biases:0generator/Conv/biases/Assign+generator/Conv/biases/Read/ReadVariableOp:0(2)generator/Conv/biases/Initializer/zeros:08
?
generator/Conv_1/weights:0generator/Conv_1/weights/Assign.generator/Conv_1/weights/Read/ReadVariableOp:0(25generator/Conv_1/weights/Initializer/random_uniform:08
?
generator/Conv_1/biases:0generator/Conv_1/biases/Assign-generator/Conv_1/biases/Read/ReadVariableOp:0(2+generator/Conv_1/biases/Initializer/zeros:08
?
generator/Conv_2/weights:0generator/Conv_2/weights/Assign.generator/Conv_2/weights/Read/ReadVariableOp:0(25generator/Conv_2/weights/Initializer/random_uniform:08
?
generator/Conv_2/biases:0generator/Conv_2/biases/Assign-generator/Conv_2/biases/Read/ReadVariableOp:0(2+generator/Conv_2/biases/Initializer/zeros:08
?
generator/Conv_3/weights:0generator/Conv_3/weights/Assign.generator/Conv_3/weights/Read/ReadVariableOp:0(25generator/Conv_3/weights/Initializer/random_uniform:08
?
generator/Conv_3/biases:0generator/Conv_3/biases/Assign-generator/Conv_3/biases/Read/ReadVariableOp:0(2+generator/Conv_3/biases/Initializer/zeros:08
?
generator/Conv_4/weights:0generator/Conv_4/weights/Assign.generator/Conv_4/weights/Read/ReadVariableOp:0(25generator/Conv_4/weights/Initializer/random_uniform:08
?
generator/Conv_4/biases:0generator/Conv_4/biases/Assign-generator/Conv_4/biases/Read/ReadVariableOp:0(2+generator/Conv_4/biases/Initializer/zeros:08
?
!generator/block_0/conv1/weights:0&generator/block_0/conv1/weights/Assign5generator/block_0/conv1/weights/Read/ReadVariableOp:0(2<generator/block_0/conv1/weights/Initializer/random_uniform:08
?
 generator/block_0/conv1/biases:0%generator/block_0/conv1/biases/Assign4generator/block_0/conv1/biases/Read/ReadVariableOp:0(22generator/block_0/conv1/biases/Initializer/zeros:08
?
!generator/block_0/conv2/weights:0&generator/block_0/conv2/weights/Assign5generator/block_0/conv2/weights/Read/ReadVariableOp:0(2<generator/block_0/conv2/weights/Initializer/random_uniform:08
?
 generator/block_0/conv2/biases:0%generator/block_0/conv2/biases/Assign4generator/block_0/conv2/biases/Read/ReadVariableOp:0(22generator/block_0/conv2/biases/Initializer/zeros:08
?
!generator/block_1/conv1/weights:0&generator/block_1/conv1/weights/Assign5generator/block_1/conv1/weights/Read/ReadVariableOp:0(2<generator/block_1/conv1/weights/Initializer/random_uniform:08
?
 generator/block_1/conv1/biases:0%generator/block_1/conv1/biases/Assign4generator/block_1/conv1/biases/Read/ReadVariableOp:0(22generator/block_1/conv1/biases/Initializer/zeros:08
?
!generator/block_1/conv2/weights:0&generator/block_1/conv2/weights/Assign5generator/block_1/conv2/weights/Read/ReadVariableOp:0(2<generator/block_1/conv2/weights/Initializer/random_uniform:08
?
 generator/block_1/conv2/biases:0%generator/block_1/conv2/biases/Assign4generator/block_1/conv2/biases/Read/ReadVariableOp:0(22generator/block_1/conv2/biases/Initializer/zeros:08
?
!generator/block_2/conv1/weights:0&generator/block_2/conv1/weights/Assign5generator/block_2/conv1/weights/Read/ReadVariableOp:0(2<generator/block_2/conv1/weights/Initializer/random_uniform:08
?
 generator/block_2/conv1/biases:0%generator/block_2/conv1/biases/Assign4generator/block_2/conv1/biases/Read/ReadVariableOp:0(22generator/block_2/conv1/biases/Initializer/zeros:08
?
!generator/block_2/conv2/weights:0&generator/block_2/conv2/weights/Assign5generator/block_2/conv2/weights/Read/ReadVariableOp:0(2<generator/block_2/conv2/weights/Initializer/random_uniform:08
?
 generator/block_2/conv2/biases:0%generator/block_2/conv2/biases/Assign4generator/block_2/conv2/biases/Read/ReadVariableOp:0(22generator/block_2/conv2/biases/Initializer/zeros:08
?
!generator/block_3/conv1/weights:0&generator/block_3/conv1/weights/Assign5generator/block_3/conv1/weights/Read/ReadVariableOp:0(2<generator/block_3/conv1/weights/Initializer/random_uniform:08
?
 generator/block_3/conv1/biases:0%generator/block_3/conv1/biases/Assign4generator/block_3/conv1/biases/Read/ReadVariableOp:0(22generator/block_3/conv1/biases/Initializer/zeros:08
?
!generator/block_3/conv2/weights:0&generator/block_3/conv2/weights/Assign5generator/block_3/conv2/weights/Read/ReadVariableOp:0(2<generator/block_3/conv2/weights/Initializer/random_uniform:08
?
 generator/block_3/conv2/biases:0%generator/block_3/conv2/biases/Assign4generator/block_3/conv2/biases/Read/ReadVariableOp:0(22generator/block_3/conv2/biases/Initializer/zeros:08
?
generator/Conv_5/weights:0generator/Conv_5/weights/Assign.generator/Conv_5/weights/Read/ReadVariableOp:0(25generator/Conv_5/weights/Initializer/random_uniform:08
?
generator/Conv_5/biases:0generator/Conv_5/biases/Assign-generator/Conv_5/biases/Read/ReadVariableOp:0(2+generator/Conv_5/biases/Initializer/zeros:08
?
generator/Conv_6/weights:0generator/Conv_6/weights/Assign.generator/Conv_6/weights/Read/ReadVariableOp:0(25generator/Conv_6/weights/Initializer/random_uniform:08
?
generator/Conv_6/biases:0generator/Conv_6/biases/Assign-generator/Conv_6/biases/Read/ReadVariableOp:0(2+generator/Conv_6/biases/Initializer/zeros:08
?
generator/Conv_7/weights:0generator/Conv_7/weights/Assign.generator/Conv_7/weights/Read/ReadVariableOp:0(25generator/Conv_7/weights/Initializer/random_uniform:08
?
generator/Conv_7/biases:0generator/Conv_7/biases/Assign-generator/Conv_7/biases/Read/ReadVariableOp:0(2+generator/Conv_7/biases/Initializer/zeros:08
?
generator/Conv_8/weights:0generator/Conv_8/weights/Assign.generator/Conv_8/weights/Read/ReadVariableOp:0(25generator/Conv_8/weights/Initializer/random_uniform:08
?
generator/Conv_8/biases:0generator/Conv_8/biases/Assign-generator/Conv_8/biases/Read/ReadVariableOp:0(2+generator/Conv_8/biases/Initializer/zeros:08
?
generator/Conv_9/weights:0generator/Conv_9/weights/Assign.generator/Conv_9/weights/Read/ReadVariableOp:0(25generator/Conv_9/weights/Initializer/random_uniform:08
?
generator/Conv_9/biases:0generator/Conv_9/biases/Assign-generator/Conv_9/biases/Read/ReadVariableOp:0(2+generator/Conv_9/biases/Initializer/zeros:08*?
serving_default?
F
input_photo:05
input_photo:0"??????????????????:
add_1:0/
add_1:0"??????????????????tensorflow/serving/predict