# Model Equations

This document summarizes the main equations used in the longitudinal vehicle dynamics Simulink model.

## Longitudinal force balance

The longitudinal vehicle motion is represented using the force balance along the direction of travel:

$$
m\dot{v} = F_{x,f} + F_{x,r} - F_{\mathrm{aero}} - R_{x,f} - R_{x,r} - mg\sin(\theta)
$$

where \(m\) is the vehicle mass, \(v\) is the longitudinal velocity, \(F_{x,f}\) and \(F_{x,r}\) are the longitudinal tire forces at the front and rear axles, \(F_{\mathrm{aero}}\) is the aerodynamic drag force, \(R_{x,f}\) and \(R_{x,r}\) are the rolling resistance forces, \(g\) is the gravitational acceleration, and \(\theta\) is the road slope angle.

## Aerodynamic drag

The aerodynamic drag force is calculated as:

$$
F_{\mathrm{aero}} = \frac{1}{2} \rho C_x A v_r^2
$$

where \(\rho\) is the air density, \(C_x\) is the aerodynamic drag coefficient, \(A\) is the vehicle frontal area, and \(v_r\) is the relative velocity between the vehicle and air.

## Rolling resistance

The rolling resistance force is represented as:

$$
F_r = \mu_r F_z
$$

where \(F_z\) is the vertical tire load and \(\mu_r\) is the rolling resistance coefficient.

A speed-dependent rolling resistance coefficient can be expressed as:

$$
\mu_r = \mu_0 + \mu_1 v_x^2
$$

## Wheel rotational dynamics

The wheel rotational acceleration is represented by the torque balance:

$$
\ddot{\phi}_{\mathrm{wheel}} =
\frac{(M_{\mathrm{traction}} - M_{\mathrm{braking}}) - F_x r - F_R r}
{J_{\mathrm{wheel}}}
$$

where \(M_{\mathrm{traction}}\) is the traction torque, \(M_{\mathrm{braking}}\) is the braking torque, \(F_x\) is the longitudinal tire force, \(F_R\) is the rolling resistance force, \(r\) is the effective wheel radius, and \(J_{\mathrm{wheel}}\) is the equivalent wheel inertia.

## Longitudinal tire slip

During braking, the longitudinal tire slip is defined as:

$$
S = 1 - \frac{R_0 \omega_{\mathrm{wheel}}}{v}
$$

During traction, the longitudinal tire slip is defined as:

$$
S = 1 - \frac{v}{R_0 \omega_{\mathrm{wheel}}}
$$

where \(R_0\) is the dynamic tire radius, \(\omega_{\mathrm{wheel}}\) is the wheel angular velocity, and \(v\) is the longitudinal vehicle velocity.

## Simplified Pacejka tire model

A simplified Pacejka-type tire-force representation is used to describe nonlinear tire force behavior as a function of slip:

$$
F = A \sin \left( B \tan^{-1} \left( Cx - D(Cx - \tan^{-1}(Cx)) \right) \right)
$$

where \(A\), \(B\), \(C\), and \(D\) are tire model parameters and \(x\) denotes the slip variable.
