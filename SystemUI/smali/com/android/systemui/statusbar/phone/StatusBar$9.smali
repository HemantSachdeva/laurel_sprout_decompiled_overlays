.class Lcom/android/systemui/statusbar/phone/StatusBar$9;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 2833
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 2837
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 2838
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2839
    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    .line 2840
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2841
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    .line 2843
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2844
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 2846
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isCurrentProfile(I)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "reason"

    .line 2848
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p2, "recentapps"

    .line 2849
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x2

    .line 2852
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/ShadeController;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels(I)V

    goto/16 :goto_1

    :cond_3
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 2855
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2856
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;

    if-eqz p1, :cond_4

    .line 2857
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowController;->setNotTouchable(Z)V

    .line 2859
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->isStackExpanded()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2860
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/bubbles/BubbleController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/bubbles/BubbleController;->collapseStack()V

    .line 2862
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 2863
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_1

    :cond_6
    const-string v0, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    .line 2865
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2866
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    goto :goto_1

    :cond_7
    const-string v0, "com.android.cellbroadcastreceiver.EMERGENCY_CBS_STATE"

    .line 2868
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "state"

    .line 2869
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_8

    .line 2871
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    goto :goto_0

    .line 2873
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1902(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 2875
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "statusbar IsEmergencyCbModel = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    return-void
.end method
