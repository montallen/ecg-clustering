close all

figure
subplot(2,2,1)
hold on
plot(mag7(markers7(3):markers7(4)),'LineWidth',1.5)
plot(mag3(markers3(3):markers3(4)),'LineWidth',1.5)
plot(mag2(markers2(3):markers2(4)),'LineWidth',1.5)
plot(mag10(markers10(3):markers10(4)),'LineWidth',1.5)
title("Cluster 1")
xlabel("Samples")
ylabel("QRS magnitude")
subplot(2,2,2)
hold on
plot(mag4(markers4(3):markers4(4)),'LineWidth',1.5)
plot(mag9(markers9(3):markers9(4)),'LineWidth',1.5)
plot(mag11(markers11(3):markers11(4)),'LineWidth',1.5)
title("Cluster 2")
xlabel("Samples")
ylabel("QRS magnitude")
subplot(2,2,3)
hold on
plot(mag5(markers5(3):markers5(4)),'LineWidth',1.5)
plot(mag8(markers8(3):markers8(4)),'LineWidth',1.5)
plot(mag1(markers1(3):markers1(4)),'LineWidth',1.5)
title("Cluster 3")
xlabel("Samples")
ylabel("QRS magnitude")
subplot(2,2,4)
hold on
plot(mag6(markers6(3):markers6(4)),'LineWidth',1.5)
title("Cluster 4")
xlabel("Samples")
ylabel("QRS magnitude")