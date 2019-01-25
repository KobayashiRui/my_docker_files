#ROSmelodicを起動するコンテナ
## xhostについて
host側(dockerを起動しているPC)でxhostの設定でアクセス可能にする
```
xhost +
```
上記の設定だとすべてに対してアクセスOKになりセキュリティ的によろしくない  
```
xhost local:
```
これだとローカルのみになるのでOK


## 通常の場合(ダメそうなので非推奨 CPUのみの場合はROS_melodic_cpuへ)
gpuを使用していない場合
## docker runの引数について
+ ```-it``` : コンテナ内で操作を行う
+ ```--env="DISPLAY"``` :
+ ```--env="QT_X11_NO_MITSHM=1""``` : 
+ ```--volume="/tmp/.X11-unix:/tmp/.X11-unix:rw"``` :
+ ```-v /home/kr/git/ROS_practice/ROS_data:/ros_ws/src/meta_git_pkg``` : ディレクトリのマウント
(この場合ROSのワークスペース内のsrcにあるディレクトリにgitのpkgをまとめたディレクトリをマウントしている)

## GPU使用の場合
PCにGPUがある場合はnvidia-dockerの設定をDockerfileに追加する  
実行する場合は```run_my_image2.sh```を参照
### docker runの引数について
