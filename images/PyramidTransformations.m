(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
ProyectTopoPyramid[point_,side_]:=Block[{fpoint=point,fside=side,ponto,points,pointo,x,y,z,p1,p2,p3,p4,p5,\[Xi],\[Eta],P1,P2,P3},

p1={-1,-1,0};
p2={1,-1,0};
p3={1,1,0};
p4={-1,1,0};
p5={0,0,1};
fpoint=fpoint//N;
If[fside==5,
x=fpoint[[1]];
y=-1.0;
z=0.0;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==6,
x=1.0;
y=fpoint[[2]];
z=0.0;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==7,
x=fpoint[[1]];
y=1.0;
z=0.0;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==8,
x=-1.0;
y=fpoint[[2]];
z=0.0;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==9,
Emap=0.5 fpoint[[1]]+0.5 fpoint[[2]]+ fpoint[[3]];
Eor=(Emap+1)/2;
x= Eor-1.0;
y= Eor-1.0;
z=  Eor;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==10,
Emap=-0.5 fpoint[[1]]+0.5 fpoint[[2]]+ fpoint[[3]];
Eor=(Emap+1)/2;
x= 1.0-Eor;
y=  Eor-1.0;
z=  Eor;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==11,
Emap=-0.5 fpoint[[1]]-0.5 fpoint[[2]]+ fpoint[[3]];
Eor=(Emap+1)/2;
x=   1.0-Eor;
y=  1.0-Eor;
z=  Eor;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==12,
Emap=0.5 fpoint[[1]]-0.5 fpoint[[2]]+ fpoint[[3]];
Eor=(Emap+1)/2;
x=  Eor - 1.0;
y=  1.0-Eor;
z=  Eor;
pointo={x,y,z};
points={fpoint,pointo};
];

If[fside==13,
x=  fpoint[[1]];
y=  fpoint[[2]];
z=  0.0;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==14,

(*x=fpoint[[1]];
y=-0.5+0.5fpoint[[2]]+0.5fpoint[[3]];
z=  (fpoint[[3]]+fpoint[[2]])-y;*)
(*//OP1
x=((fpoint[[1]]-0.5fpoint[[2]]-0.5fpoint[[3]]-0.5)+1.0)/2.0;
y=(fpoint[[2]]+fpoint[[3]]+1)/2;
x=2*x+y-1;
y=y-1;
z=y+1;*)

P1=((fpoint[[1]]-0.5fpoint[[2]]-0.5fpoint[[3]]-0.5)+1.0)/2.0;
P2=(fpoint[[2]]+fpoint[[3]]+1)/2;
P1=2*P1+P2-1;
P2=P2-1;
P3=P2+1;
factor=(1-P3);
x=P1*factor;
y=P2;
z=y+1;

pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==15,
\[Xi]=((0.5fpoint[[1]]+1.0fpoint[[2]]-0.5fpoint[[3]]-0.5)+1.0)/2.0;
\[Eta]=(-1.0fpoint[[1]]+fpoint[[3]]+1)/2.0;
P1=1-\[Eta];
P2=2\[Xi]+\[Eta]-1.0;
P3=1-P1;
factor=(1-P3);
x=P1;
y=P2*factor;
z=1-x;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==16,
\[Xi]=((fpoint[[1]]+0.5fpoint[[2]]-0.5fpoint[[3]]-0.5)+1.0)/2.0;
\[Eta]=(-1.0fpoint[[2]]+fpoint[[3]]+1)/2.0;
P1=1-2\[Xi]-\[Eta];
P2=1.0-\[Eta];
P3=1-P2;
factor=(1-P3);
x=P1*factor;
y=P2;
z=1-y;
pointo={x,y,z};
points={fpoint,pointo};
];
If[fside==17,
\[Xi]=((-0.5*fpoint[[1]]+fpoint[[2]]-0.5fpoint[[3]]-0.5)+1.0)/2.0;
\[Eta]=(1.0fpoint[[1]]+fpoint[[3]]+1)/2.0;
P1=\[Eta]-1.0;
P2=1-2\[Xi]-\[Eta];
P3=P1+1;
factor=(1-P3);
x=P1;
y=P2*factor;
z=x+1;
pointo={x,y,z};
points={fpoint,pointo};
];

If[fside==100,
grpa = Table[ProyectTopoPyramid[fpoint,i],{i,13,17}];
Return[grpa]
];
If[fside==200,
grpa = Table[ProyectTopoPyramid[fpoint,i],{i,5,12}];
Return[grpa]
];
If[fside==300,
grpa = Table[ProyectTopoPyramid[fpoint,i],{i,5,17}];
Return[grpa]
];

If[fside>= 5 && fside <= 12,
color= Blue;,
color=Green;
];
graf= JoinedPlot[points,color];
Return[graf];
];



(* ::Input::Initialization:: *)

JoinedPlot[points_,color_]:=Block[{fpoints=points,fcolor=color,fnpoits,line},
fnpoits=  Length[fpoints];
line =Graphics3D[{fcolor,Line@fpoints,PointSize[Large],Point@fpoints}];
Return[line];
];


(* ::Input::Initialization:: *)

PlotProyecPyramid[point_,side_]:=Block[{fpoint=point,fside=side,result,pointsPyram,PlotPyram,PlotPoint},
pointsPyram={{-1,-1,0},{1,-1,0},{1,1,0},{-1,1,0},{0,0,1}};


PlotPyram=ListPlot3D[pointsPyram,PlotStyle->Directive[Opacity[0.07],Blue],Mesh->All,BoundaryStyle->Directive[Red,Thick]];

PlotPoint=Graphics3D[{PointSize[Large],Red,Point[fpoint]},ImageSize->Large];
result=Show[{PlotPyram,ProyectTopoPyramid[fpoint,fside],PlotPoint},ImageSize->470];
Return[result];
];



