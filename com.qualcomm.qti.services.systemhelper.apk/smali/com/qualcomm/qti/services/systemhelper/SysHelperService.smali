.class public Lcom/qualcomm/qti/services/systemhelper/SysHelperService;
.super Landroid/app/Service;
.source "SysHelperService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static ACTION_SCREEN_OFF:I = 0x8

.field public static ACTION_SCREEN_ON:I = 0x10

.field public static ACTION_SHUTDOWN:I = 0x20

.field public static ACTION_USER_PRESENT:I = 0x40

.field public static PHONE_STATE_IDLE:I = 0x4

.field public static PHONE_STATE_OFF_HOOK:I = 0x2

.field public static PHONE_STATE_RINGING:I = 0x1

.field public static context:Landroid/content/Context;

.field private static screen_wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private running:Z

.field private sys_rotation:I

.field private wl_init:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "systemhelper_jni"

    .line 55
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->running:Z

    .line 44
    iput-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->wl_init:Z

    return-void
.end method

.method private native init()I
.end method

.method public static native sendEventNotification(I)I
.end method

.method private native terminate()I
.end method


# virtual methods
.method public native getMessage()Ljava/lang/String;
.end method

.method public lockOrientation(Z)V
    .locals 2

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 130
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sys_rotation:I

    .line 132
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "SysHelperService"

    const-string p1, "Orientation setting not found"

    .line 135
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sys_rotation:I

    invoke-static {p1, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const-string p0, "SysHelperService"

    const-string p1, "onBind"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 146
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 147
    sput-object p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->context:Landroid/content/Context;

    .line 148
    iget-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->running:Z

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 164
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 165
    sget-object v0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->screen_wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->wl_init:Z

    .line 167
    invoke-direct {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->terminate()I

    const-string p0, "SysHelperService"

    const-string v0, "onDestroy"

    .line 168
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Service started flags "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " startId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SysHelperService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 8

    .line 63
    invoke-direct {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->init()I

    move-result v0

    const-string v1, "SysHelperService"

    if-eqz v0, :cond_0

    const-string p0, "failed to initialise service, exiting..."

    .line 65
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->running:Z

    .line 71
    new-instance v2, Lcom/qualcomm/qti/services/systemhelper/CallReceiver;

    invoke-direct {v2}, Lcom/qualcomm/qti/services/systemhelper/CallReceiver;-><init>()V

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.PHONE_STATE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    .line 74
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v2, Lcom/qualcomm/qti/services/systemhelper/PowerReceiver;

    invoke-direct {v2}, Lcom/qualcomm/qti/services/systemhelper/PowerReceiver;-><init>()V

    .line 78
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 82
    new-instance v2, Lcom/qualcomm/qti/services/systemhelper/ScreenReceiver;

    invoke-direct {v2}, Lcom/qualcomm/qti/services/systemhelper/ScreenReceiver;-><init>()V

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.action.SCREEN_ON"

    .line 84
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.USER_PRESENT"

    .line 85
    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v2, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-boolean v3, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->wl_init:Z

    if-nez v3, :cond_1

    .line 96
    sget-object v3, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->context:Landroid/content/Context;

    const-string v4, "power"

    .line 97
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const v4, 0x2000000a

    .line 98
    invoke-virtual {v3, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->screen_wl:Landroid/os/PowerManager$WakeLock;

    .line 100
    iput-boolean v0, p0, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->wl_init:Z

    :cond_1
    const/4 v3, -0x1

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "WL_AQUIRE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    goto :goto_1

    :sswitch_1
    const-string v4, "ROT_UNLOCK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "ROT_LOCK"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v7

    goto :goto_1

    :sswitch_3
    const-string v4, "WL_RELEASE"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_1
    if-eqz v3, :cond_6

    if-eq v3, v0, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    const-string v2, "requested resource is invalid"

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 117
    :cond_3
    invoke-virtual {p0, v5}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->lockOrientation(Z)V

    goto :goto_2

    .line 113
    :cond_4
    invoke-virtual {p0, v0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->lockOrientation(Z)V

    goto :goto_2

    .line 109
    :cond_5
    sget-object v2, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->screen_wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_2

    .line 105
    :cond_6
    sget-object v2, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->screen_wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 123
    :goto_2
    invoke-virtual {p0}, Lcom/qualcomm/qti/services/systemhelper/SysHelperService;->sendConfirmation()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1a2c07d -> :sswitch_3
        0x2de232b3 -> :sswitch_2
        0x4d7206cc -> :sswitch_1
        0x4f1338a1 -> :sswitch_0
    .end sparse-switch
.end method

.method public native sendConfirmation()V
.end method
