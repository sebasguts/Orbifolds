##  <#GAPDoc Label="GIT_Fan:example">
##      <Example><![CDATA[
##  gap> Q := HomalgFieldOfRationalsInDefaultCAS( );
##  Q
##  gap> R := GradedRing( Q * "T1..6" );
##  Q[T1,T2,T3,T4,T5,T6]
##  gap> a := GradedLeftSubmodule( "T1*T2+T3*T4+T5*T6", R );
##  <A principal torsion-free (left) ideal given by a cyclic generator>
##  gap> Is_aFace( [ 1 .. 6 ], a );
##  true
##  gap> Is_aFace( [ 5, 6 ], a );
##  false
##  gap> List( [ 0 .. 6 ], i -> Length( aFaces( a, i ) ) );
##  [ 1, 6, 12, 8, 3, 6, 1 ]

##  ]]></Example>
##  <#/GAPDoc>

LoadPackage( "Orbifolds" );

Q := HomalgFieldOfRationalsInDefaultCAS( );
R := GradedRing( Q * "T1..6" );

a := GradedLeftSubmodule( "T1*T2+T3*T4+T5*T6", R );

Assert( 0, Is_aFace( [ 1 .. 6 ], a ) );
Assert( 0, not Is_aFace( [ 5, 6 ], a ) );
Assert( 0, List( [ 0 .. 6 ], i -> Length( aFaces( a, i ) ) ) = [ 1, 6, 12, 8, 3, 6, 1 ] );
