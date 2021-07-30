test=R.signals.values;
for i=1:size(test,3)
    testR(:,i)=test(:,1,i);
end

Xtest=X.signals.values;
for i=1:size(Xtest,3)
    testX(:,i)=Xtest(:,1,i);
end

figure
quiver3(Xd(:,2),Xd(:,3),Xd(:,4),b1d(:,2),b1d(:,3),b1d(:,4))
hold
plot3(Xd(:,2),Xd(:,3),Xd(:,4))
quiver3(testX(1,:),testX(2,:),testX(3,:),testR(1,:),testR(2,:),testR(3,:))
plot3(testX(1,:),testX(2,:),testX(3,:))

figure(5)
view(3)
tol=1;
xlabel('x')
ylabel('y')
zlabel('z')
%axis([min(testX(1,:)) max(testX(1,:)) min(testX(2,:)) max(testX(2,:)) min(testX(3,:)) max(testX(3,:))])
for i=1:size(test,3)
    hold on
    axis([testX(1,i)-tol testX(1,i)+tol testX(2,i)-tol testX(2,i)+tol testX(3,i)-tol testX(3,i)+tol])
    plot3(Xd(i,2),Xd(i,3),Xd(i,4),'*r')
    quiver3(Xd(i,2),Xd(i,3),Xd(i,4),b1d(i,2),b1d(i,3),b1d(i,4),0.5,'r')
    quiver3(testX(1,i),testX(2,i),testX(3,i),testR(1,i),testR(2,i),testR(3,i),0.5,'b')
    plot3(testX(1,i),testX(2,i),testX(3,i),'ob')
    title(['time : ',num2str(Xd(i,1)),' seconds'])
    subtitle('Red : desired, Blue : actual')
    pause(.05)
end