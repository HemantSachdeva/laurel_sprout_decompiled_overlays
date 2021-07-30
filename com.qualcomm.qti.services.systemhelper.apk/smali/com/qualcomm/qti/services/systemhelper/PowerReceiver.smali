.class public Lcom/qualcomm/qti/services/systemhelper/PowerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 26
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 27
    sget p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->ACTION_SHUTDOWN:I

    invoke-static {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sendEventNotification(I)I

    :cond_0
    return-void
.end method
