.class public Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;
.super Landroid/app/Service;
.source "TelecomCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;
    }
.end annotation


# instance fields
.field private mCallsManagerWrapper:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

.field mHandler:Landroid/os/Handler;

.field mTelecomCallBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$1;-><init>(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)V

    iput-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$2;-><init>(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)V

    iput-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mTelecomCallBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mCallsManagerWrapper:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->populateResult(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private populateResult(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 136
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;

    .line 138
    iput-object p2, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;->result:Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 139
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;->result:Ljava/lang/Object;

    .line 143
    :cond_0
    monitor-enter p0

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 145
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 115
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 119
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;

    invoke-direct {v0, p2}, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 120
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 123
    monitor-enter v0

    .line 124
    :catch_0
    :goto_0
    :try_start_0
    iget-object p0, v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 126
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 131
    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    iget-object p0, v0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService$ThreadRequest;->result:Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    .line 131
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 116
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from main thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mTelecomCallBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCreate"

    .line 29
    invoke-static {p0, v1, v0}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {p0}, Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/TelecomCallService;->mCallsManagerWrapper:Lcom/qualcomm/qti/qtisystemservice/CallsManagerWrapper;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
