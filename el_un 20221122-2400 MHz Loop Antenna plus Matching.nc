model ( "Loop Antena for electronics unmessed on YouTube" ) 
//
// You can find measurements, simulation results on YouTube @electronics.unmessed
//
// Important hints:     D = Diameter of the Loop = Wavelength / Pi
//
//
// INPUTS:             wr = Wire Radius
//                     fm = Center Frequency
//
// 
//

{

// === DEFINITIONS ==========================================================================================================================================

transform T ;
int Segment, Segment1 ;
real a, b, d, s , wr, fm ;
element driven ; 
vector v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42 ;

T = translateTransform( vect( 0, 0, 0.0 ) ) * rotateX( 90 ) ;


// === INPUTS ===============================================================================================================================================

// Segmentation of wires
Segment = 7 ;
Segment1 = 1 ;

// Wire Radius
wr = 0.0005 ;

// Frequency input adjusts the size for D = Lambda/Pi
fm = 2400.0 ;


// Shift Feedpoint: s must be even number!!
s = 8. ;

// Lambda/4 TL Width
b = 0.24 ;


// === Factor for Vectors ===================================================================================================================================

// Size adjust to frequency
//  a = 0.92 ;
 a = 0.92 * 2400.0 / fm ;


// === Vectors ==============================================================================================================================================


v1 = vect(-0.000 * a , -0.019 * a , 0.000 * a ) ;
v2 = vect( 0.000 * a , 0.01 * b * a  - 0.019 * a, 0.000 * a) ;

v3 = vect(0.000 * a , 0.00 * b * a , -0.019 * a) ;
v4 = vect(0.000 * a , 0.00 * b * a , 0.01 * b * a + -0.019 * a ) ;

v5 = vect(0.000 * a , 0.01 * b * a  - 0.019 * a , 0.000 * a ) ;
v6 = vect(0.000 * a , 0.01 * b * a  - 0.019 * a , -0.005 * a) ;

v7 = vect(0.000 * a , 0.01 * b * a   - 0.019 * a , -0.005 * a ) ;
v8 = vect(0.000 * a , 0.00707 * b * a  - 0.014 * a , 0.00707 * b * a  -0.014 * a );

v9  = vect(0.000 * a , 0.00707 * b * a  -0.014 * a , 0.00707 * b * a -0.014 * a) ;
v10 = vect(0.000 * a ,   -0.005 * a ,  0.01 * b * a + -0.019 * a ) ;

v11 = vect(0.000 * a , -0.005 * a , 0.01 * b * a  -0.019 * a) ;
v12 = vect(0.000 * a ,   0.00 * b * a ,  0.01 * b * a + -0.019 * a ) ;

v13 = vect(0.000 * a , -0.005 * a , 0.019 * a ) ;
v14 = vect(0.000 * a , 0.005 * a , 0.019 * a ) ;

v15 = vect(0.000 * a , 0.005 * a , -0.019 * a ) ;
v16 = vect(0.000 * a , 0.014 * a , -0.014 * a ) ;


v17 = vect(0.000 * a , 0.014 * a , -0.014 * a  ) ;
v18 = vect(0.000 * a , 0.019 * a , -0.005 * a ) ;

v19 = vect(0.000 * a , 0.019 * a , -0.005 * a ) ;
v20 = vect(0.000 * a , 0.019 * a , 0.005 * a ) ;

v21 = vect(0.000 * a , 0.019 * a , 0.005 * a ) ;
v22 = vect(0.000 * a , 0.014 * a , 0.014 * a ) ;

v23 = vect(0.000 * a , 0.014 * a , 0.014 * a ) ;
v24 = vect(0.000 * a , 0.005 * a , 0.019 * a ) ;

v25 = vect(0.000 * a , 0.005 * a , -0.019 * a ) ;
v26 = vect(0.000 * a , 0.000 * b , -0.019 * a ) ;

v27 = vect(0.000 * a , -0.01 * b * a, -0.019 * a ) ;
v28 = vect(0.000 * a , -0.005 * a , -0.019 * a ) ;

v29 = vect(0.000 * a , -0.005 * a , 0.019 * a ) ;
v30 = vect(0.000 * a , -0.014 * a , 0.014 * a ) ;

v31 = vect(0.000 * a , -0.014 * a , 0.014 * a ) ;
v32 = vect(0.000 * a , -0.019 * a , 0.005 * a ) ;

v33 = vect(0.000 * a , -0.019 * a , 0.005 * a ) ;
v34 = vect(0.000 * a , -0.019 * a , -0.005 * a ) ;

v35 = vect(0.000 * a , -0.019 * a , -0.005 * a ) ;
v36 = vect(0.000 * a , -0.014 * a , -0.014 * a ) ;

v37 = vect(0.000 * a , -0.014 * a , -0.014 * a ) ;
v38 = vect(0.000 * a , -0.005 * a , -0.019 * a ) ;

v39 = vect(0.000 * a , 0.01 * b * a -0.019 * a , 0.005 * a ) ;

v40 = vect(0.000 * a , 0.01 * b * a  - 0.019 * a , -0.005 * a + 0.005 * a * s / Segment) ;

v41 = vect(0.000 * a , -0.019 * a , -0.005 * a + 0.005 * a * s / Segment) ;



// === Wire Grid Model  ====================================================================================================================================

// Driven Element
driven = wirev( T, v40 , v41, 0.0015 , 1 ) ;

// Short at TL
// wirev( T, v3, v4 , wr , Segment ) ;
wirev( T, v5, v6, wr , Segment ) ;
wirev( T, v7, v8 , wr , Segment ) ;
wirev( T, v9, v10 , wr , Segment ) ;
// wirev( T, v11, v12 , wr , Segment ) ;
wirev( T, v13, v14 , wr , Segment ) ;
wirev( T, v15, v16 , wr , Segment ) ;
wirev( T, v17, v18 , wr , Segment ) ;
wirev( T, v19, v20, wr , Segment ) ;
wirev(T , v21, v22, wr , Segment ) ;
wirev( T, v23, v24 , wr , Segment ) ;
wirev( T, v25, v26, wr , Segment ) ;
wirev( T, v26, v28, wr , Segment ) ;
wirev( T, v29, v30 , wr ,Segment ) ;
wirev( T, v31, v32, wr , Segment ) ;
wirev( T, v33, v34 , wr , Segment ) ;
wirev( T, v35, v36 , wr , Segment ) ;
wirev( T, v37, v38 , wr , Segment ) ;

wirev( T, v2, v39 , wr , Segment ) ;
wirev( T, v33, v39 , wr , Segment ) ;


// === Feed =================================================================================================================================================

voltageFeed( driven, 1.0, 0.0 ) ; 
// currentFeed( driven, 1.0, 0.0 ) ; 

// === not used  ============================================================================================================================================

// setFrequency( 3150.0 ) ; 
// setFrequency( 3150.0 ) ; 
// addFrequency( 4000.0 ) ; 

useExtendedKernel( 0 ) ;

// === Frequency START, STOP, STEPS =========================================================================================================================

// frequencySweep( 2400, 2420, 200 ) ;
//  frequencySweep( 2200, 2600, 300) ;
 frequencySweep( 1800, 3000, 300) ;
// frequencySweep( 1000, 10000, 500) ;

// === Environment ==========================================================================================================================================

freespace() ; 


// === RAdiation Patterns  ==================================================================================================================================

azimuthPlotForElevationAngle( 0 ) ;
elevationPlotForAzimuthAngle( 0 ) ;

} 


