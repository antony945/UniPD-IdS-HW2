
G
inputPlaceholder*
dtype0*$
shape:?????????
<
targetPlaceholder*
dtype0*
shape:?????????
2
sub/yConst*
valueB
 *  ?B*
dtype0
!
subSubinputsub/y*
T0
6
	truediv/yConst*
dtype0*
valueB
 *  C
+
truedivRealDivsub	truediv/y*
T0
6
is_trainingPlaceholder*
dtype0
*
shape:
S
truncated_normal/shapeConst*
dtype0*%
valueB"             
B
truncated_normal/meanConst*
valueB
 *    *
dtype0
D
truncated_normal/stddevConst*
dtype0*
valueB
 *???=

 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*
T0*
dtype0*
seed2??*
seed???)
_
truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*
T0
M
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0
i
conv1-weights
VariableV2*
dtype0*
	container *
shape: *
shared_name 
?
conv1-weights/AssignAssignconv1-weightstruncated_normal*
use_locking(*
T0* 
_class
loc:@conv1-weights*
validate_shape(
X
conv1-weights/readIdentityconv1-weights*
T0* 
_class
loc:@conv1-weights
?
conv1Conv2Dtruedivconv1-weights/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
C
zeros/shape_as_tensorConst*
valueB: *
dtype0
8
zeros/ConstConst*
dtype0*
valueB
 *    
L
zerosFillzeros/shape_as_tensorzeros/Const*
T0*

index_type0
\
conv1-biases
VariableV2*
shared_name *
dtype0*
	container *
shape: 
?
conv1-biases/AssignAssignconv1-biaseszeros*
T0*
_class
loc:@conv1-biases*
validate_shape(*
use_locking(
U
conv1-biases/readIdentityconv1-biases*
T0*
_class
loc:@conv1-biases
L
BiasAddBiasAddconv1conv1-biases/read*
T0*
data_formatNHWC
$

conv1-reluReluBiasAdd*
T0
w
pool1MaxPool
conv1-relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC
U
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0
D
truncated_normal_1/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_1/stddevConst*
valueB
 *???=*
dtype0
?
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
seed2??*
seed???)*
T0
e
truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0
S
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0
i
conv2-weights
VariableV2*
shape: @*
shared_name *
dtype0*
	container 
?
conv2-weights/AssignAssignconv2-weightstruncated_normal_1*
use_locking(*
T0* 
_class
loc:@conv2-weights*
validate_shape(
X
conv2-weights/readIdentityconv2-weights*
T0* 
_class
loc:@conv2-weights
?
conv2Conv2Dpool1conv2-weights/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
6
ConstConst*
dtype0*
valueB@*???=
\
conv2-biases
VariableV2*
dtype0*
	container *
shape:@*
shared_name 
?
conv2-biases/AssignAssignconv2-biasesConst*
use_locking(*
T0*
_class
loc:@conv2-biases*
validate_shape(
U
conv2-biases/readIdentityconv2-biases*
T0*
_class
loc:@conv2-biases
N
	BiasAdd_1BiasAddconv2conv2-biases/read*
data_formatNHWC*
T0
&

conv2-reluRelu	BiasAdd_1*
T0
w
pool2MaxPool
conv2-relu*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC
.
ShapeShapepool2*
T0*
out_type0
A
strided_slice/stackConst*
valueB: *
dtype0
C
strided_slice/stack_1Const*
valueB:*
dtype0
C
strided_slice/stack_2Const*
dtype0*
valueB:
?
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
end_mask *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
B
reshape/shape/1Const*
valueB :
?????????*
dtype0
S
reshape/shapePackstrided_slicereshape/shape/1*
T0*

axis *
N
?
reshapeReshapepool2reshape/shape*
T0*
Tshape0
M
truncated_normal_2/shapeConst*
dtype0*
valueB"@     
D
truncated_normal_2/meanConst*
valueB
 *    *
dtype0
F
truncated_normal_2/stddevConst*
valueB
 *???=*
dtype0
?
"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*
dtype0*
seed2??*
seed???)*
T0
e
truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0
S
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
T0
a
fc1-weights
VariableV2*
dtype0*
	container *
shape:
??*
shared_name 
?
fc1-weights/AssignAssignfc1-weightstruncated_normal_2*
use_locking(*
T0*
_class
loc:@fc1-weights*
validate_shape(
R
fc1-weights/readIdentityfc1-weights*
T0*
_class
loc:@fc1-weights
9
Const_1Const*
dtype0*
valueB?*???=
[

fc1-biases
VariableV2*
shared_name *
dtype0*
	container *
shape:?
?
fc1-biases/AssignAssign
fc1-biasesConst_1*
use_locking(*
T0*
_class
loc:@fc1-biases*
validate_shape(
O
fc1-biases/readIdentity
fc1-biases*
T0*
_class
loc:@fc1-biases
Z
MatMulMatMulreshapefc1-weights/read*
transpose_b( *
T0*
transpose_a( 
,
addAddMatMulfc1-biases/read*
T0
"
hidden-layerReluadd*
T0
@
dropout-cond/SwitchSwitchis_trainingis_training*
T0

A
dropout-cond/switch_tIdentitydropout-cond/Switch:1*
T0

?
dropout-cond/switch_fIdentitydropout-cond/Switch*
T0

6
dropout-cond/pred_idIdentityis_training*
T0

c
dropout-cond/dropout/keep_probConst^dropout-cond/switch_t*
valueB
 *   ?*
dtype0
a
dropout-cond/dropout/ShapeShape#dropout-cond/dropout/Shape/Switch:1*
T0*
out_type0
y
!dropout-cond/dropout/Shape/SwitchSwitchhidden-layerdropout-cond/pred_id*
T0*
_class
loc:@hidden-layer
l
'dropout-cond/dropout/random_uniform/minConst^dropout-cond/switch_t*
valueB
 *    *
dtype0
l
'dropout-cond/dropout/random_uniform/maxConst^dropout-cond/switch_t*
valueB
 *  ??*
dtype0
?
1dropout-cond/dropout/random_uniform/RandomUniformRandomUniformdropout-cond/dropout/Shape*
dtype0*
seed2??*
seed???)*
T0
?
'dropout-cond/dropout/random_uniform/subSub'dropout-cond/dropout/random_uniform/max'dropout-cond/dropout/random_uniform/min*
T0
?
'dropout-cond/dropout/random_uniform/mulMul1dropout-cond/dropout/random_uniform/RandomUniform'dropout-cond/dropout/random_uniform/sub*
T0
?
#dropout-cond/dropout/random_uniformAdd'dropout-cond/dropout/random_uniform/mul'dropout-cond/dropout/random_uniform/min*
T0
m
dropout-cond/dropout/addAdddropout-cond/dropout/keep_prob#dropout-cond/dropout/random_uniform*
T0
F
dropout-cond/dropout/FloorFloordropout-cond/dropout/add*
T0
q
dropout-cond/dropout/divRealDiv#dropout-cond/dropout/Shape/Switch:1dropout-cond/dropout/keep_prob*
T0
^
dropout-cond/dropout/mulMuldropout-cond/dropout/divdropout-cond/dropout/Floor*
T0
m
dropout-cond/Switch_1Switchhidden-layerdropout-cond/pred_id*
T0*
_class
loc:@hidden-layer
^
dropout-cond/MergeMergedropout-cond/Switch_1dropout-cond/dropout/mul*
N*
T0
M
truncated_normal_3/shapeConst*
valueB"   
   *
dtype0
D
truncated_normal_3/meanConst*
dtype0*
valueB
 *    
F
truncated_normal_3/stddevConst*
valueB
 *???=*
dtype0
?
"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
seed???)*
T0*
dtype0*
seed2??
e
truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0
S
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0
`
fc2-weights
VariableV2*
shared_name *
dtype0*
	container *
shape:	?

?
fc2-weights/AssignAssignfc2-weightstruncated_normal_3*
validate_shape(*
use_locking(*
T0*
_class
loc:@fc2-weights
R
fc2-weights/readIdentityfc2-weights*
T0*
_class
loc:@fc2-weights
8
Const_2Const*
dtype0*
valueB
*???=
Z

fc2-biases
VariableV2*
shape:
*
shared_name *
dtype0*
	container 
?
fc2-biases/AssignAssign
fc2-biasesConst_2*
use_locking(*
T0*
_class
loc:@fc2-biases*
validate_shape(
O
fc2-biases/readIdentity
fc2-biases*
T0*
_class
loc:@fc2-biases
g
MatMul_1MatMuldropout-cond/Mergefc2-weights/read*
T0*
transpose_a( *
transpose_b( 
1
logitsAddMatMul_1fc2-biases/read*
T0
S
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapetarget*
T0*
out_type0
?
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitslogitstarget*
Tlabels0*
T0
5
Const_3Const*
valueB: *
dtype0
?

first-lossMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst_3*
	keep_dims( *

Tidx0*
T0
+
L2LossL2Lossfc1-weights/read*
T0
,
L2Loss_1L2Lossfc1-biases/read*
T0
'
add_1AddL2LossL2Loss_1*
T0
-
L2Loss_2L2Lossfc2-weights/read*
T0
&
add_2Addadd_1L2Loss_2*
T0
,
L2Loss_3L2Lossfc2-biases/read*
T0
&
add_3Addadd_2L2Loss_3*
T0
2
mul/xConst*
valueB
 *o:*
dtype0
!
mulMulmul/xadd_3*
T0
.
training_lossAdd
first-lossmul*
T0
0
epochPlaceholder*
dtype0*
shape:
K
ExponentialDecay/learning_rateConst*
dtype0*
valueB
 *
?#<
<
ExponentialDecay/CastCastepoch*

DstT0*

SrcT0
C
ExponentialDecay/Cast_1/xConst*
value	B :*
dtype0
R
ExponentialDecay/Cast_1CastExponentialDecay/Cast_1/x*

SrcT0*

DstT0
F
ExponentialDecay/Cast_2/xConst*
valueB
 *33s?*
dtype0
\
ExponentialDecay/truedivRealDivExponentialDecay/CastExponentialDecay/Cast_1*
T0
B
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0
W
ExponentialDecay/PowPowExponentialDecay/Cast_2/xExponentialDecay/Floor*
T0
V
ExponentialDecayMulExponentialDecay/learning_rateExponentialDecay/Pow*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ??*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
F
-gradients/training_loss_grad/tuple/group_depsNoOp^gradients/Fill
?
5gradients/training_loss_grad/tuple/control_dependencyIdentitygradients/Fill.^gradients/training_loss_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
?
7gradients/training_loss_grad/tuple/control_dependency_1Identitygradients/Fill.^gradients/training_loss_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
U
'gradients/first-loss_grad/Reshape/shapeConst*
dtype0*
valueB:
?
!gradients/first-loss_grad/ReshapeReshape5gradients/training_loss_grad/tuple/control_dependency'gradients/first-loss_grad/Reshape/shape*
T0*
Tshape0
?
gradients/first-loss_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0
?
gradients/first-loss_grad/TileTile!gradients/first-loss_grad/Reshapegradients/first-loss_grad/Shape*

Tmultiples0*
T0
?
!gradients/first-loss_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0
J
!gradients/first-loss_grad/Shape_2Const*
dtype0*
valueB 
M
gradients/first-loss_grad/ConstConst*
dtype0*
valueB: 
?
gradients/first-loss_grad/ProdProd!gradients/first-loss_grad/Shape_1gradients/first-loss_grad/Const*
T0*
	keep_dims( *

Tidx0
O
!gradients/first-loss_grad/Const_1Const*
dtype0*
valueB: 
?
 gradients/first-loss_grad/Prod_1Prod!gradients/first-loss_grad/Shape_2!gradients/first-loss_grad/Const_1*
	keep_dims( *

Tidx0*
T0
M
#gradients/first-loss_grad/Maximum/yConst*
value	B :*
dtype0
|
!gradients/first-loss_grad/MaximumMaximum gradients/first-loss_grad/Prod_1#gradients/first-loss_grad/Maximum/y*
T0
z
"gradients/first-loss_grad/floordivFloorDivgradients/first-loss_grad/Prod!gradients/first-loss_grad/Maximum*
T0
b
gradients/first-loss_grad/CastCast"gradients/first-loss_grad/floordiv*

SrcT0*

DstT0
u
!gradients/first-loss_grad/truedivRealDivgradients/first-loss_grad/Tilegradients/first-loss_grad/Cast*
T0
f
gradients/mul_grad/MulMul7gradients/training_loss_grad/tuple/control_dependency_1add_3*
T0
h
gradients/mul_grad/Mul_1Mul7gradients/training_loss_grad/tuple/control_dependency_1mul/x*
T0
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
?
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/mul_grad/Mul
?
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
u
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0
?
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*?
message??Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0
?
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
?????????*
dtype0
?
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims!gradients/first-loss_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0
?
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0
]
%gradients/add_3_grad/tuple/group_depsNoOp.^gradients/mul_grad/tuple/control_dependency_1
?
-gradients/add_3_grad/tuple/control_dependencyIdentity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
?
/gradients/add_3_grad/tuple/control_dependency_1Identity-gradients/mul_grad/tuple/control_dependency_1&^gradients/add_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
G
gradients/logits_grad/ShapeShapeMatMul_1*
T0*
out_type0
K
gradients/logits_grad/Shape_1Const*
valueB:
*
dtype0
?
+gradients/logits_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/logits_grad/Shapegradients/logits_grad/Shape_1*
T0
?
gradients/logits_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul+gradients/logits_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
w
gradients/logits_grad/ReshapeReshapegradients/logits_grad/Sumgradients/logits_grad/Shape*
T0*
Tshape0
?
gradients/logits_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul-gradients/logits_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
}
gradients/logits_grad/Reshape_1Reshapegradients/logits_grad/Sum_1gradients/logits_grad/Shape_1*
T0*
Tshape0
p
&gradients/logits_grad/tuple/group_depsNoOp^gradients/logits_grad/Reshape ^gradients/logits_grad/Reshape_1
?
.gradients/logits_grad/tuple/control_dependencyIdentitygradients/logits_grad/Reshape'^gradients/logits_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/logits_grad/Reshape
?
0gradients/logits_grad/tuple/control_dependency_1Identitygradients/logits_grad/Reshape_1'^gradients/logits_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/logits_grad/Reshape_1
]
%gradients/add_2_grad/tuple/group_depsNoOp.^gradients/add_3_grad/tuple/control_dependency
?
-gradients/add_2_grad/tuple/control_dependencyIdentity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
?
/gradients/add_2_grad/tuple/control_dependency_1Identity-gradients/add_3_grad/tuple/control_dependency&^gradients/add_2_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
m
gradients/L2Loss_3_grad/mulMulfc2-biases/read/gradients/add_3_grad/tuple/control_dependency_1*
T0
?
gradients/MatMul_1_grad/MatMulMatMul.gradients/logits_grad/tuple/control_dependencyfc2-weights/read*
transpose_a( *
transpose_b(*
T0
?
 gradients/MatMul_1_grad/MatMul_1MatMuldropout-cond/Merge.gradients/logits_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
?
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
?
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
]
%gradients/add_1_grad/tuple/group_depsNoOp.^gradients/add_2_grad/tuple/control_dependency
?
-gradients/add_1_grad/tuple/control_dependencyIdentity-gradients/add_2_grad/tuple/control_dependency&^gradients/add_1_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
?
/gradients/add_1_grad/tuple/control_dependency_1Identity-gradients/add_2_grad/tuple/control_dependency&^gradients/add_1_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
n
gradients/L2Loss_2_grad/mulMulfc2-weights/read/gradients/add_2_grad/tuple/control_dependency_1*
T0
?
gradients/AddNAddN0gradients/logits_grad/tuple/control_dependency_1gradients/L2Loss_3_grad/mul*
N*
T0*2
_class(
&$loc:@gradients/logits_grad/Reshape_1
?
+gradients/dropout-cond/Merge_grad/cond_gradSwitch0gradients/MatMul_1_grad/tuple/control_dependencydropout-cond/pred_id*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
h
2gradients/dropout-cond/Merge_grad/tuple/group_depsNoOp,^gradients/dropout-cond/Merge_grad/cond_grad
?
:gradients/dropout-cond/Merge_grad/tuple/control_dependencyIdentity+gradients/dropout-cond/Merge_grad/cond_grad3^gradients/dropout-cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
?
<gradients/dropout-cond/Merge_grad/tuple/control_dependency_1Identity-gradients/dropout-cond/Merge_grad/cond_grad:13^gradients/dropout-cond/Merge_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
j
gradients/L2Loss_grad/mulMulfc1-weights/read-gradients/add_1_grad/tuple/control_dependency*
T0
m
gradients/L2Loss_1_grad/mulMulfc1-biases/read/gradients/add_1_grad/tuple/control_dependency_1*
T0
?
gradients/AddN_1AddN2gradients/MatMul_1_grad/tuple/control_dependency_1gradients/L2Loss_2_grad/mul*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
N
G
gradients/SwitchSwitchhidden-layerdropout-cond/pred_id*
T0
G
gradients/Shape_1Shapegradients/Switch:1*
T0*
out_type0
B
gradients/zeros/ConstConst*
valueB
 *    *
dtype0
\
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
T0*

index_type0
?
.gradients/dropout-cond/Switch_1_grad/cond_gradMerge:gradients/dropout-cond/Merge_grad/tuple/control_dependencygradients/zeros*
T0*
N
i
-gradients/dropout-cond/dropout/mul_grad/ShapeShapedropout-cond/dropout/div*
T0*
out_type0
m
/gradients/dropout-cond/dropout/mul_grad/Shape_1Shapedropout-cond/dropout/Floor*
T0*
out_type0
?
=gradients/dropout-cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout-cond/dropout/mul_grad/Shape/gradients/dropout-cond/dropout/mul_grad/Shape_1*
T0
?
+gradients/dropout-cond/dropout/mul_grad/MulMul<gradients/dropout-cond/Merge_grad/tuple/control_dependency_1dropout-cond/dropout/Floor*
T0
?
+gradients/dropout-cond/dropout/mul_grad/SumSum+gradients/dropout-cond/dropout/mul_grad/Mul=gradients/dropout-cond/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
?
/gradients/dropout-cond/dropout/mul_grad/ReshapeReshape+gradients/dropout-cond/dropout/mul_grad/Sum-gradients/dropout-cond/dropout/mul_grad/Shape*
T0*
Tshape0
?
-gradients/dropout-cond/dropout/mul_grad/Mul_1Muldropout-cond/dropout/div<gradients/dropout-cond/Merge_grad/tuple/control_dependency_1*
T0
?
-gradients/dropout-cond/dropout/mul_grad/Sum_1Sum-gradients/dropout-cond/dropout/mul_grad/Mul_1?gradients/dropout-cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
?
1gradients/dropout-cond/dropout/mul_grad/Reshape_1Reshape-gradients/dropout-cond/dropout/mul_grad/Sum_1/gradients/dropout-cond/dropout/mul_grad/Shape_1*
T0*
Tshape0
?
8gradients/dropout-cond/dropout/mul_grad/tuple/group_depsNoOp0^gradients/dropout-cond/dropout/mul_grad/Reshape2^gradients/dropout-cond/dropout/mul_grad/Reshape_1
?
@gradients/dropout-cond/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/dropout-cond/dropout/mul_grad/Reshape9^gradients/dropout-cond/dropout/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/dropout-cond/dropout/mul_grad/Reshape
?
Bgradients/dropout-cond/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/dropout-cond/dropout/mul_grad/Reshape_19^gradients/dropout-cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout-cond/dropout/mul_grad/Reshape_1
t
-gradients/dropout-cond/dropout/div_grad/ShapeShape#dropout-cond/dropout/Shape/Switch:1*
T0*
out_type0
X
/gradients/dropout-cond/dropout/div_grad/Shape_1Const*
valueB *
dtype0
?
=gradients/dropout-cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout-cond/dropout/div_grad/Shape/gradients/dropout-cond/dropout/div_grad/Shape_1*
T0
?
/gradients/dropout-cond/dropout/div_grad/RealDivRealDiv@gradients/dropout-cond/dropout/mul_grad/tuple/control_dependencydropout-cond/dropout/keep_prob*
T0
?
+gradients/dropout-cond/dropout/div_grad/SumSum/gradients/dropout-cond/dropout/div_grad/RealDiv=gradients/dropout-cond/dropout/div_grad/BroadcastGradientArgs*
T0*
	keep_dims( *

Tidx0
?
/gradients/dropout-cond/dropout/div_grad/ReshapeReshape+gradients/dropout-cond/dropout/div_grad/Sum-gradients/dropout-cond/dropout/div_grad/Shape*
T0*
Tshape0
`
+gradients/dropout-cond/dropout/div_grad/NegNeg#dropout-cond/dropout/Shape/Switch:1*
T0
?
1gradients/dropout-cond/dropout/div_grad/RealDiv_1RealDiv+gradients/dropout-cond/dropout/div_grad/Negdropout-cond/dropout/keep_prob*
T0
?
1gradients/dropout-cond/dropout/div_grad/RealDiv_2RealDiv1gradients/dropout-cond/dropout/div_grad/RealDiv_1dropout-cond/dropout/keep_prob*
T0
?
+gradients/dropout-cond/dropout/div_grad/mulMul@gradients/dropout-cond/dropout/mul_grad/tuple/control_dependency1gradients/dropout-cond/dropout/div_grad/RealDiv_2*
T0
?
-gradients/dropout-cond/dropout/div_grad/Sum_1Sum+gradients/dropout-cond/dropout/div_grad/mul?gradients/dropout-cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
	keep_dims( *

Tidx0
?
1gradients/dropout-cond/dropout/div_grad/Reshape_1Reshape-gradients/dropout-cond/dropout/div_grad/Sum_1/gradients/dropout-cond/dropout/div_grad/Shape_1*
T0*
Tshape0
?
8gradients/dropout-cond/dropout/div_grad/tuple/group_depsNoOp0^gradients/dropout-cond/dropout/div_grad/Reshape2^gradients/dropout-cond/dropout/div_grad/Reshape_1
?
@gradients/dropout-cond/dropout/div_grad/tuple/control_dependencyIdentity/gradients/dropout-cond/dropout/div_grad/Reshape9^gradients/dropout-cond/dropout/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/dropout-cond/dropout/div_grad/Reshape
?
Bgradients/dropout-cond/dropout/div_grad/tuple/control_dependency_1Identity1gradients/dropout-cond/dropout/div_grad/Reshape_19^gradients/dropout-cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout-cond/dropout/div_grad/Reshape_1
I
gradients/Switch_1Switchhidden-layerdropout-cond/pred_id*
T0
G
gradients/Shape_2Shapegradients/Switch_1*
T0*
out_type0
D
gradients/zeros_1/ConstConst*
dtype0*
valueB
 *    
`
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*

index_type0
?
:gradients/dropout-cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_1@gradients/dropout-cond/dropout/div_grad/tuple/control_dependency*
T0*
N
?
gradients/AddN_2AddN.gradients/dropout-cond/Switch_1_grad/cond_grad:gradients/dropout-cond/dropout/Shape/Switch_grad/cond_grad*
T0*A
_class7
53loc:@gradients/dropout-cond/Switch_1_grad/cond_grad*
N
Y
$gradients/hidden-layer_grad/ReluGradReluGradgradients/AddN_2hidden-layer*
T0
B
gradients/add_grad/ShapeShapeMatMul*
T0*
out_type0
I
gradients/add_grad/Shape_1Const*
valueB:?*
dtype0
?
(gradients/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/add_grad/Shapegradients/add_grad/Shape_1*
T0
?
gradients/add_grad/SumSum$gradients/hidden-layer_grad/ReluGrad(gradients/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/add_grad/ReshapeReshapegradients/add_grad/Sumgradients/add_grad/Shape*
T0*
Tshape0
?
gradients/add_grad/Sum_1Sum$gradients/hidden-layer_grad/ReluGrad*gradients/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/add_grad/Reshape_1Reshapegradients/add_grad/Sum_1gradients/add_grad/Shape_1*
T0*
Tshape0
g
#gradients/add_grad/tuple/group_depsNoOp^gradients/add_grad/Reshape^gradients/add_grad/Reshape_1
?
+gradients/add_grad/tuple/control_dependencyIdentitygradients/add_grad/Reshape$^gradients/add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/add_grad/Reshape
?
-gradients/add_grad/tuple/control_dependency_1Identitygradients/add_grad/Reshape_1$^gradients/add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/add_grad/Reshape_1
?
gradients/MatMul_grad/MatMulMatMul+gradients/add_grad/tuple/control_dependencyfc1-weights/read*
T0*
transpose_a( *
transpose_b(
?
gradients/MatMul_grad/MatMul_1MatMulreshape+gradients/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
?
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
?
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
?
gradients/AddN_3AddNgradients/L2Loss_1_grad/mul-gradients/add_grad/tuple/control_dependency_1*
T0*.
_class$
" loc:@gradients/L2Loss_1_grad/mul*
N
E
gradients/reshape_grad/ShapeShapepool2*
T0*
out_type0
?
gradients/reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependencygradients/reshape_grad/Shape*
T0*
Tshape0
?
gradients/AddN_4AddNgradients/L2Loss_grad/mul0gradients/MatMul_grad/tuple/control_dependency_1*
N*
T0*,
_class"
 loc:@gradients/L2Loss_grad/mul
?
 gradients/pool2_grad/MaxPoolGradMaxPoolGrad
conv2-relupool2gradients/reshape_grad/Reshape*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC
e
"gradients/conv2-relu_grad/ReluGradReluGrad gradients/pool2_grad/MaxPoolGrad
conv2-relu*
T0
w
$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGrad"gradients/conv2-relu_grad/ReluGrad*
data_formatNHWC*
T0
}
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp#^gradients/conv2-relu_grad/ReluGrad%^gradients/BiasAdd_1_grad/BiasAddGrad
?
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentity"gradients/conv2-relu_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/conv2-relu_grad/ReluGrad
?
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad
b
gradients/conv2_grad/ShapeNShapeNpool1conv2-weights/read*
T0*
out_type0*
N
W
gradients/conv2_grad/ConstConst*%
valueB"          @   *
dtype0
?
(gradients/conv2_grad/Conv2DBackpropInputConv2DBackpropInputgradients/conv2_grad/ShapeNconv2-weights/read1gradients/BiasAdd_1_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
)gradients/conv2_grad/Conv2DBackpropFilterConv2DBackpropFilterpool1gradients/conv2_grad/Const1gradients/BiasAdd_1_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
%gradients/conv2_grad/tuple/group_depsNoOp)^gradients/conv2_grad/Conv2DBackpropInput*^gradients/conv2_grad/Conv2DBackpropFilter
?
-gradients/conv2_grad/tuple/control_dependencyIdentity(gradients/conv2_grad/Conv2DBackpropInput&^gradients/conv2_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv2_grad/Conv2DBackpropInput
?
/gradients/conv2_grad/tuple/control_dependency_1Identity)gradients/conv2_grad/Conv2DBackpropFilter&^gradients/conv2_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2_grad/Conv2DBackpropFilter
?
 gradients/pool1_grad/MaxPoolGradMaxPoolGrad
conv1-relupool1-gradients/conv2_grad/tuple/control_dependency*
ksize
*
paddingSAME*
T0*
strides
*
data_formatNHWC
e
"gradients/conv1-relu_grad/ReluGradReluGrad gradients/pool1_grad/MaxPoolGrad
conv1-relu*
T0
u
"gradients/BiasAdd_grad/BiasAddGradBiasAddGrad"gradients/conv1-relu_grad/ReluGrad*
T0*
data_formatNHWC
y
'gradients/BiasAdd_grad/tuple/group_depsNoOp#^gradients/conv1-relu_grad/ReluGrad#^gradients/BiasAdd_grad/BiasAddGrad
?
/gradients/BiasAdd_grad/tuple/control_dependencyIdentity"gradients/conv1-relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/conv1-relu_grad/ReluGrad
?
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad
d
gradients/conv1_grad/ShapeNShapeNtruedivconv1-weights/read*
T0*
out_type0*
N
W
gradients/conv1_grad/ConstConst*
dtype0*%
valueB"             
?
(gradients/conv1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/conv1_grad/ShapeNconv1-weights/read/gradients/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
)gradients/conv1_grad/Conv2DBackpropFilterConv2DBackpropFiltertruedivgradients/conv1_grad/Const/gradients/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME
?
%gradients/conv1_grad/tuple/group_depsNoOp)^gradients/conv1_grad/Conv2DBackpropInput*^gradients/conv1_grad/Conv2DBackpropFilter
?
-gradients/conv1_grad/tuple/control_dependencyIdentity(gradients/conv1_grad/Conv2DBackpropInput&^gradients/conv1_grad/tuple/group_deps*
T0*;
_class1
/-loc:@gradients/conv1_grad/Conv2DBackpropInput
?
/gradients/conv1_grad/tuple/control_dependency_1Identity)gradients/conv1_grad/Conv2DBackpropFilter&^gradients/conv1_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv1_grad/Conv2DBackpropFilter
?
8conv1-weights/Momentum/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv1-weights*%
valueB"             *
dtype0
}
.conv1-weights/Momentum/Initializer/zeros/ConstConst* 
_class
loc:@conv1-weights*
valueB
 *    *
dtype0
?
(conv1-weights/Momentum/Initializer/zerosFill8conv1-weights/Momentum/Initializer/zeros/shape_as_tensor.conv1-weights/Momentum/Initializer/zeros/Const*
T0* 
_class
loc:@conv1-weights*

index_type0
?
conv1-weights/Momentum
VariableV2*
shape: *
shared_name * 
_class
loc:@conv1-weights*
dtype0*
	container 
?
conv1-weights/Momentum/AssignAssignconv1-weights/Momentum(conv1-weights/Momentum/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@conv1-weights
j
conv1-weights/Momentum/readIdentityconv1-weights/Momentum*
T0* 
_class
loc:@conv1-weights
?
7conv1-biases/Momentum/Initializer/zeros/shape_as_tensorConst*
_class
loc:@conv1-biases*
valueB: *
dtype0
{
-conv1-biases/Momentum/Initializer/zeros/ConstConst*
_class
loc:@conv1-biases*
valueB
 *    *
dtype0
?
'conv1-biases/Momentum/Initializer/zerosFill7conv1-biases/Momentum/Initializer/zeros/shape_as_tensor-conv1-biases/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@conv1-biases*

index_type0
?
conv1-biases/Momentum
VariableV2*
shared_name *
_class
loc:@conv1-biases*
dtype0*
	container *
shape: 
?
conv1-biases/Momentum/AssignAssignconv1-biases/Momentum'conv1-biases/Momentum/Initializer/zeros*
T0*
_class
loc:@conv1-biases*
validate_shape(*
use_locking(
g
conv1-biases/Momentum/readIdentityconv1-biases/Momentum*
T0*
_class
loc:@conv1-biases
?
8conv2-weights/Momentum/Initializer/zeros/shape_as_tensorConst* 
_class
loc:@conv2-weights*%
valueB"          @   *
dtype0
}
.conv2-weights/Momentum/Initializer/zeros/ConstConst* 
_class
loc:@conv2-weights*
valueB
 *    *
dtype0
?
(conv2-weights/Momentum/Initializer/zerosFill8conv2-weights/Momentum/Initializer/zeros/shape_as_tensor.conv2-weights/Momentum/Initializer/zeros/Const*
T0* 
_class
loc:@conv2-weights*

index_type0
?
conv2-weights/Momentum
VariableV2* 
_class
loc:@conv2-weights*
dtype0*
	container *
shape: @*
shared_name 
?
conv2-weights/Momentum/AssignAssignconv2-weights/Momentum(conv2-weights/Momentum/Initializer/zeros*
T0* 
_class
loc:@conv2-weights*
validate_shape(*
use_locking(
j
conv2-weights/Momentum/readIdentityconv2-weights/Momentum*
T0* 
_class
loc:@conv2-weights
?
7conv2-biases/Momentum/Initializer/zeros/shape_as_tensorConst*
_class
loc:@conv2-biases*
valueB:@*
dtype0
{
-conv2-biases/Momentum/Initializer/zeros/ConstConst*
dtype0*
_class
loc:@conv2-biases*
valueB
 *    
?
'conv2-biases/Momentum/Initializer/zerosFill7conv2-biases/Momentum/Initializer/zeros/shape_as_tensor-conv2-biases/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@conv2-biases*

index_type0
?
conv2-biases/Momentum
VariableV2*
shared_name *
_class
loc:@conv2-biases*
dtype0*
	container *
shape:@
?
conv2-biases/Momentum/AssignAssignconv2-biases/Momentum'conv2-biases/Momentum/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2-biases*
validate_shape(
g
conv2-biases/Momentum/readIdentityconv2-biases/Momentum*
T0*
_class
loc:@conv2-biases
?
6fc1-weights/Momentum/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@fc1-weights*
valueB"@     
y
,fc1-weights/Momentum/Initializer/zeros/ConstConst*
_class
loc:@fc1-weights*
valueB
 *    *
dtype0
?
&fc1-weights/Momentum/Initializer/zerosFill6fc1-weights/Momentum/Initializer/zeros/shape_as_tensor,fc1-weights/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@fc1-weights*

index_type0
?
fc1-weights/Momentum
VariableV2*
shape:
??*
shared_name *
_class
loc:@fc1-weights*
dtype0*
	container 
?
fc1-weights/Momentum/AssignAssignfc1-weights/Momentum&fc1-weights/Momentum/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@fc1-weights
d
fc1-weights/Momentum/readIdentityfc1-weights/Momentum*
T0*
_class
loc:@fc1-weights
?
5fc1-biases/Momentum/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc1-biases*
valueB:?*
dtype0
w
+fc1-biases/Momentum/Initializer/zeros/ConstConst*
_class
loc:@fc1-biases*
valueB
 *    *
dtype0
?
%fc1-biases/Momentum/Initializer/zerosFill5fc1-biases/Momentum/Initializer/zeros/shape_as_tensor+fc1-biases/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@fc1-biases*

index_type0
?
fc1-biases/Momentum
VariableV2*
_class
loc:@fc1-biases*
dtype0*
	container *
shape:?*
shared_name 
?
fc1-biases/Momentum/AssignAssignfc1-biases/Momentum%fc1-biases/Momentum/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@fc1-biases
a
fc1-biases/Momentum/readIdentityfc1-biases/Momentum*
T0*
_class
loc:@fc1-biases
?
6fc2-weights/Momentum/Initializer/zeros/shape_as_tensorConst*
_class
loc:@fc2-weights*
valueB"   
   *
dtype0
y
,fc2-weights/Momentum/Initializer/zeros/ConstConst*
_class
loc:@fc2-weights*
valueB
 *    *
dtype0
?
&fc2-weights/Momentum/Initializer/zerosFill6fc2-weights/Momentum/Initializer/zeros/shape_as_tensor,fc2-weights/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@fc2-weights*

index_type0
?
fc2-weights/Momentum
VariableV2*
shape:	?
*
shared_name *
_class
loc:@fc2-weights*
dtype0*
	container 
?
fc2-weights/Momentum/AssignAssignfc2-weights/Momentum&fc2-weights/Momentum/Initializer/zeros*
use_locking(*
T0*
_class
loc:@fc2-weights*
validate_shape(
d
fc2-weights/Momentum/readIdentityfc2-weights/Momentum*
T0*
_class
loc:@fc2-weights
?
5fc2-biases/Momentum/Initializer/zeros/shape_as_tensorConst*
dtype0*
_class
loc:@fc2-biases*
valueB:

w
+fc2-biases/Momentum/Initializer/zeros/ConstConst*
_class
loc:@fc2-biases*
valueB
 *    *
dtype0
?
%fc2-biases/Momentum/Initializer/zerosFill5fc2-biases/Momentum/Initializer/zeros/shape_as_tensor+fc2-biases/Momentum/Initializer/zeros/Const*
T0*
_class
loc:@fc2-biases*

index_type0
?
fc2-biases/Momentum
VariableV2*
shape:
*
shared_name *
_class
loc:@fc2-biases*
dtype0*
	container 
?
fc2-biases/Momentum/AssignAssignfc2-biases/Momentum%fc2-biases/Momentum/Initializer/zeros*
T0*
_class
loc:@fc2-biases*
validate_shape(*
use_locking(
a
fc2-biases/Momentum/readIdentityfc2-biases/Momentum*
T0*
_class
loc:@fc2-biases
;
train/momentumConst*
valueB
 *fff?*
dtype0
?
(train/update_conv1-weights/ApplyMomentumApplyMomentumconv1-weightsconv1-weights/MomentumExponentialDecay/gradients/conv1_grad/tuple/control_dependency_1train/momentum*
use_locking( *
T0* 
_class
loc:@conv1-weights*
use_nesterov( 
?
'train/update_conv1-biases/ApplyMomentumApplyMomentumconv1-biasesconv1-biases/MomentumExponentialDecay1gradients/BiasAdd_grad/tuple/control_dependency_1train/momentum*
use_locking( *
T0*
_class
loc:@conv1-biases*
use_nesterov( 
?
(train/update_conv2-weights/ApplyMomentumApplyMomentumconv2-weightsconv2-weights/MomentumExponentialDecay/gradients/conv2_grad/tuple/control_dependency_1train/momentum*
T0* 
_class
loc:@conv2-weights*
use_nesterov( *
use_locking( 
?
'train/update_conv2-biases/ApplyMomentumApplyMomentumconv2-biasesconv2-biases/MomentumExponentialDecay3gradients/BiasAdd_1_grad/tuple/control_dependency_1train/momentum*
use_locking( *
T0*
_class
loc:@conv2-biases*
use_nesterov( 
?
&train/update_fc1-weights/ApplyMomentumApplyMomentumfc1-weightsfc1-weights/MomentumExponentialDecaygradients/AddN_4train/momentum*
use_nesterov( *
use_locking( *
T0*
_class
loc:@fc1-weights
?
%train/update_fc1-biases/ApplyMomentumApplyMomentum
fc1-biasesfc1-biases/MomentumExponentialDecaygradients/AddN_3train/momentum*
use_nesterov( *
use_locking( *
T0*
_class
loc:@fc1-biases
?
&train/update_fc2-weights/ApplyMomentumApplyMomentumfc2-weightsfc2-weights/MomentumExponentialDecaygradients/AddN_1train/momentum*
use_nesterov( *
use_locking( *
T0*
_class
loc:@fc2-weights
?
%train/update_fc2-biases/ApplyMomentumApplyMomentum
fc2-biasesfc2-biases/MomentumExponentialDecaygradients/AddNtrain/momentum*
use_locking( *
T0*
_class
loc:@fc2-biases*
use_nesterov( 
?
trainNoOp)^train/update_conv1-weights/ApplyMomentum(^train/update_conv1-biases/ApplyMomentum)^train/update_conv2-weights/ApplyMomentum(^train/update_conv2-biases/ApplyMomentum'^train/update_fc1-weights/ApplyMomentum&^train/update_fc1-biases/ApplyMomentum'^train/update_fc2-weights/ApplyMomentum&^train/update_fc2-biases/ApplyMomentum
"
outputSoftmaxlogits*
T0
?
initNoOp^conv1-weights/Assign^conv1-biases/Assign^conv2-weights/Assign^conv2-biases/Assign^fc1-weights/Assign^fc1-biases/Assign^fc2-weights/Assign^fc2-biases/Assign^conv1-weights/Momentum/Assign^conv1-biases/Momentum/Assign^conv2-weights/Momentum/Assign^conv2-biases/Momentum/Assign^fc1-weights/Momentum/Assign^fc1-biases/Momentum/Assign^fc2-weights/Momentum/Assign^fc2-biases/Momentum/Assign
8

save/ConstConst*
dtype0*
valueB Bmodel
?
save/SaveV2/tensor_namesConst*?
value?B?Bconv1-biasesBconv1-biases/MomentumBconv1-weightsBconv1-weights/MomentumBconv2-biasesBconv2-biases/MomentumBconv2-weightsBconv2-weights/MomentumB
fc1-biasesBfc1-biases/MomentumBfc1-weightsBfc1-weights/MomentumB
fc2-biasesBfc2-biases/MomentumBfc2-weightsBfc2-weights/Momentum*
dtype0
g
save/SaveV2/shape_and_slicesConst*3
value*B(B B B B B B B B B B B B B B B B *
dtype0
?
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesconv1-biasesconv1-biases/Momentumconv1-weightsconv1-weights/Momentumconv2-biasesconv2-biases/Momentumconv2-weightsconv2-weights/Momentum
fc1-biasesfc1-biases/Momentumfc1-weightsfc1-weights/Momentum
fc2-biasesfc2-biases/Momentumfc2-weightsfc2-weights/Momentum*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
?
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*?
value?B?Bconv1-biasesBconv1-biases/MomentumBconv1-weightsBconv1-weights/MomentumBconv2-biasesBconv2-biases/MomentumBconv2-weightsBconv2-weights/MomentumB
fc1-biasesBfc1-biases/MomentumBfc1-weightsBfc1-weights/MomentumB
fc2-biasesBfc2-biases/MomentumBfc2-weightsBfc2-weights/Momentum
y
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*3
value*B(B B B B B B B B B B B B B B B B *
dtype0
?
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2
?
save/AssignAssignconv1-biasessave/RestoreV2*
use_locking(*
T0*
_class
loc:@conv1-biases*
validate_shape(
?
save/Assign_1Assignconv1-biases/Momentumsave/RestoreV2:1*
T0*
_class
loc:@conv1-biases*
validate_shape(*
use_locking(
?
save/Assign_2Assignconv1-weightssave/RestoreV2:2*
T0* 
_class
loc:@conv1-weights*
validate_shape(*
use_locking(
?
save/Assign_3Assignconv1-weights/Momentumsave/RestoreV2:3*
T0* 
_class
loc:@conv1-weights*
validate_shape(*
use_locking(
?
save/Assign_4Assignconv2-biasessave/RestoreV2:4*
T0*
_class
loc:@conv2-biases*
validate_shape(*
use_locking(
?
save/Assign_5Assignconv2-biases/Momentumsave/RestoreV2:5*
validate_shape(*
use_locking(*
T0*
_class
loc:@conv2-biases
?
save/Assign_6Assignconv2-weightssave/RestoreV2:6*
T0* 
_class
loc:@conv2-weights*
validate_shape(*
use_locking(
?
save/Assign_7Assignconv2-weights/Momentumsave/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@conv2-weights*
validate_shape(
?
save/Assign_8Assign
fc1-biasessave/RestoreV2:8*
T0*
_class
loc:@fc1-biases*
validate_shape(*
use_locking(
?
save/Assign_9Assignfc1-biases/Momentumsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@fc1-biases*
validate_shape(
?
save/Assign_10Assignfc1-weightssave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@fc1-weights*
validate_shape(
?
save/Assign_11Assignfc1-weights/Momentumsave/RestoreV2:11*
use_locking(*
T0*
_class
loc:@fc1-weights*
validate_shape(
?
save/Assign_12Assign
fc2-biasessave/RestoreV2:12*
validate_shape(*
use_locking(*
T0*
_class
loc:@fc2-biases
?
save/Assign_13Assignfc2-biases/Momentumsave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@fc2-biases*
validate_shape(
?
save/Assign_14Assignfc2-weightssave/RestoreV2:14*
T0*
_class
loc:@fc2-weights*
validate_shape(*
use_locking(
?
save/Assign_15Assignfc2-weights/Momentumsave/RestoreV2:15*
use_locking(*
T0*
_class
loc:@fc2-weights*
validate_shape(
?
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15"