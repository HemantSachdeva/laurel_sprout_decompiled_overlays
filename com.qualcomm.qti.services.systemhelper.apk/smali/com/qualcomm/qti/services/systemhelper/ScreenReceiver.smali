.class public Lcom/qualcomm/qti/services/systemhelper/ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ScreenReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p2, "keyguard"

    .line 35
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    const-string p1, "android.intent.action.SCREEN_OFF"

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 37
    sget p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->ACTION_SCREEN_OFF:I

    invoke-static {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sendEventNotification(I)I

    goto :goto_0

    :cond_1
    const-string p1, "android.intent.action.SCREEN_ON"

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 39
    sget p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->ACTION_SCREEN_ON:I

    invoke-static {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sendEventNotification(I)I

    goto :goto_0

    :cond_2
    const-string p1, "android.intent.action.USER_PRESENT"

    .line 40
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 41
    sget p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->ACTION_USER_PRESENT:I

    invoke-static {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sendEventNotification(I)I

    :cond_3
    :goto_0
    return-void
.end method
