program aaa
implicit none 
integer*8 i,imax
real*8 t,dt,tau,x,xs,dx,dxs
parameter(dt=1.e-2,tau=1.,imax=2000)

i=0
t=0.
x=1.
xs=1.

open(1,file='11') 
open(2,file='22') 

do i=0,imax
t=i*dt

xs=tau*(t-(1./6.)*t**3)&
+tau**2 *(1.-(1./2.)*t**2)&
+tau**3 *(-t)&
+tau**4

x=sin(t)

write(1,*) t,x
write(2,*) t,xs
enddo
stop
end
