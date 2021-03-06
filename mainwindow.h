#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include "scenestate.h"
#include "musicmanager.h"
#include "musicconfig.h"
#include <QMainWindow>
#include <QBitmap>
#include <QTimer>
#include <QSet>
#include <QKeyEvent>

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow {
    Q_OBJECT

public:

    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

protected:

    void keyPressEvent(QKeyEvent *event);   // 键盘按下事件
    void keyReleaseEvent(QKeyEvent *event); // 键盘松开事件

protected slots:

    void timeout();                      // 定时器事件
    void triggerSceneWidgets(QAction *); // 选择场景组件时
    void clearChooseSceneWidget();       // 清除选择的场景组件
    void clearStateLabel();              // 清楚状态栏提示
    void clearKeyPressed();              // 清楚键盘状态

signals:

    void updateScene(const QSet<int>&);     // 更新场景，发送传递键盘情况
    void newScene();                        // 新建场景
    void loadScene(const QString&);         // 发送加载的场景文件
    void saveScene(const QString&);         // 发送保存的场景文件
    void chooseSceneWidget(bool,
                           const QString&); // 发送选择的场景组件

private slots:

    void loadOver();                         // 加载结束
    void on_actHome_triggered();             // 返回主页
    void on_actEdit_triggered(bool checked); // Edit按钮触发
    void on_actNew_triggered();              // 新建按钮触发
    void on_actOpen_triggered();             // 打开按钮触发
    void on_actSave_triggered();             // 保存按钮触发
    void on_actSaveAs_triggered();           // 另存为按钮触发
    void on_actRestart_triggered();          // 重新开始当前游戏
    void on_actOption_triggered();           // 音乐设置
    void on_actScreenShot_triggered();       // 截图保存

private:

    Ui::MainWindow *ui;    // ui指针
    QTimer timer;          // 主计时器
    QTimer stateTimer;     // 状态栏计时器
    QTimer loaderTimer;    // 加载计时器
    QSet<int>pressedKeys;  // 键盘按下的按键
    int fps;               // 帧率
    QString sceneFileName; // 打开的场景文件
    MusicManager mm;       // 播放音乐
    void makeConnection(); // 建立连接
};
#endif // MAINWINDOW_H
