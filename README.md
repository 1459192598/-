  1.  Txt文件用matlab打开可以看到行数，第一列第二列是每个标记点中心初始x，y坐标，第三列第四列是施加力后x，y的坐标，第五列是点初始像素数(面积)，第六列是施加力后点像素数（面积），第七列是正向按压深度（单位mm），第八列是侧向位移大小（单位mm），比如圆柱形压头共37种位移，由于每种按压深度和侧向位移大小都要记录943个点的位置大小，加上标题一共1+943*37=34891行，前六列34891行，后2列37行，左边六列是按照右边两列的位移顺序排列的。侧向位移方向都是图像右方。
  2.  12mm直径banqiu.txt：半球形探头采集的数据。
  3.  A.txt：A字母形探头采集的数据。
  4.  Y.txt:圆柱形探头采集的数据。
  5.  半球.SLDPRT：半球形探头solidworks文件。
  6.  M8mm-3个.SLDPRT：圆柱形探头solidworks文件。
  7.  A.SLDPRT:A字母形探头solidworks文件。
  8.  test.mat：半球形探头图像数据，用imshow函数可以直接画出每幅图像。总共37种位移，但里面只有36个图像，因为我第一张没有施加力时的图像忘采集了，按照txt文件中的位移顺序（除去第一组数据）对应36种图像。
  9.  testA.mat：A字母探头图像数据，总共37种位移，按照txt文件中的位移顺序对应37种图像。
  10.  testY.mat：圆柱探头数据，总共30种位移，按照txt文件中的位移顺序对应30种图像。
11.ykl1.SLDPRT：点排列掩膜图
