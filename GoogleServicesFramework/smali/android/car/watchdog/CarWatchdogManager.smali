.class public final Landroid/car/watchdog/CarWatchdogManager;
.super Landroid/car/CarManagerBase;
.source "CarWatchdogManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/watchdog/CarWatchdogManager$SessionInfo;,
        Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;,
        Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarWatchdogManager"


# instance fields
.field private mCallbackExecutor:Ljava/util/concurrent/Executor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mClientImpl:Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private mRegisteredClient:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRemainingConditions:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/watchdog/ICarWatchdogService;

.field private mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 132
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 81
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mMainHandler:Landroid/os/Handler;

    .line 83
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mLock:Ljava/lang/Object;

    .line 88
    new-instance p1, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    const/4 v0, -0x1

    invoke-direct {p1, p0, v0, v0}, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;-><init>(Landroid/car/watchdog/CarWatchdogManager;II)V

    iput-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    .line 133
    invoke-static {p2}, Landroid/car/watchdog/ICarWatchdogService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/watchdog/ICarWatchdogService;

    move-result-object p1

    iput-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mService:Landroid/car/watchdog/ICarWatchdogService;

    .line 134
    new-instance p1, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;-><init>(Landroid/car/watchdog/CarWatchdogManager;Landroid/car/watchdog/CarWatchdogManager$1;)V

    iput-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mClientImpl:Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;

    return-void
.end method

.method static synthetic access$100(Landroid/car/watchdog/CarWatchdogManager;II)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/car/watchdog/CarWatchdogManager;->checkClientStatus(II)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/watchdog/CarWatchdogManager;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Landroid/car/watchdog/CarWatchdogManager;->notifyProcessTermination()V

    return-void
.end method

.method private checkClientStatus(II)V
    .locals 5

    .line 242
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v2, p0, Landroid/car/watchdog/CarWatchdogManager;->mRegisteredClient:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    if-nez v2, :cond_0

    .line 245
    sget-object p0, Landroid/car/watchdog/CarWatchdogManager;->TAG:Ljava/lang/String;

    const-string p1, "Cannot check client status. The client has not been registered."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v0

    return-void

    .line 248
    :cond_0
    iget-object v2, p0, Landroid/car/watchdog/CarWatchdogManager;->mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    iput p1, v2, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->currentId:I

    .line 249
    iget-object v2, p0, Landroid/car/watchdog/CarWatchdogManager;->mRegisteredClient:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    .line 250
    iget-object v3, p0, Landroid/car/watchdog/CarWatchdogManager;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    const/4 v4, 0x2

    .line 251
    iput v4, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mMainHandler:Landroid/os/Handler;

    sget-object v4, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$kFmjLtJdjtDl6LIbITNQIMVk37Y;->INSTANCE:Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$kFmjLtJdjtDl6LIbITNQIMVk37Y;

    invoke-static {v4, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 257
    invoke-virtual {v4, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    .line 256
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    new-instance v0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;

    invoke-direct {v0, p0, v2, p1, p2}, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$dZ8USxGrd1QOKUXHqW13UuI_OcA;-><init>(Landroid/car/watchdog/CarWatchdogManager;Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V

    invoke-interface {v3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private checkConditionLocked()Z
    .locals 2

    .line 292
    iget v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    if-gez v0, :cond_0

    .line 293
    sget-object v0, Landroid/car/watchdog/CarWatchdogManager;->TAG:Ljava/lang/String;

    const-string v1, "Remaining condition is less than zero: should not happen"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget p0, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkMainThread()V
    .locals 3

    .line 281
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    .line 283
    iget-object v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    iget v1, v1, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->currentId:I

    .line 284
    invoke-direct {p0}, Landroid/car/watchdog/CarWatchdogManager;->checkConditionLocked()Z

    move-result v2

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 287
    invoke-direct {p0, v1}, Landroid/car/watchdog/CarWatchdogManager;->reportToService(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 285
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$checkClientStatus$0(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V
    .locals 0

    .line 260
    invoke-virtual {p1, p2, p3}, Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;->onCheckHealthStatus(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 263
    iget-object p1, p0, Landroid/car/watchdog/CarWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 264
    :try_start_0
    iget-object p3, p0, Landroid/car/watchdog/CarWatchdogManager;->mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    iget p3, p3, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->lastReportedId:I

    if-ne p3, p2, :cond_0

    .line 265
    monitor-exit p1

    return-void

    .line 267
    :cond_0
    iget-object p3, p0, Landroid/car/watchdog/CarWatchdogManager;->mSession:Landroid/car/watchdog/CarWatchdogManager$SessionInfo;

    iput p2, p3, Landroid/car/watchdog/CarWatchdogManager$SessionInfo;->lastReportedId:I

    .line 268
    iget p3, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Landroid/car/watchdog/CarWatchdogManager;->mRemainingConditions:I

    .line 269
    invoke-direct {p0}, Landroid/car/watchdog/CarWatchdogManager;->checkConditionLocked()Z

    move-result p3

    .line 270
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_1

    .line 272
    invoke-direct {p0, p2}, Landroid/car/watchdog/CarWatchdogManager;->reportToService(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 270
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$kFmjLtJdjtDl6LIbITNQIMVk37Y(Landroid/car/watchdog/CarWatchdogManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/car/watchdog/CarWatchdogManager;->checkMainThread()V

    return-void
.end method

.method static synthetic lambda$notifyProcessTermination$1(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;)V
    .locals 0

    .line 317
    invoke-virtual {p0}, Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;->onPrepareProcessTermination()V

    return-void
.end method

.method private notifyProcessTermination()V
    .locals 2

    .line 309
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_0
    iget-object v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mRegisteredClient:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    if-nez v1, :cond_0

    .line 311
    sget-object p0, Landroid/car/watchdog/CarWatchdogManager;->TAG:Ljava/lang/String;

    const-string v1, "Cannot notify the client. The client has not been registered."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    monitor-exit v0

    return-void

    .line 314
    :cond_0
    iget-object v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mRegisteredClient:Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;

    .line 315
    iget-object p0, p0, Landroid/car/watchdog/CarWatchdogManager;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    new-instance v0, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$169iZNfvofq4iuoUIGB9oxuYchQ;

    invoke-direct {v0, v1}, Landroid/car/watchdog/-$$Lambda$CarWatchdogManager$169iZNfvofq4iuoUIGB9oxuYchQ;-><init>(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 316
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private reportToService(I)V
    .locals 2

    .line 300
    :try_start_0
    iget-object v0, p0, Landroid/car/watchdog/CarWatchdogManager;->mService:Landroid/car/watchdog/ICarWatchdogService;

    iget-object v1, p0, Landroid/car/watchdog/CarWatchdogManager;->mClientImpl:Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;

    invoke-interface {v0, v1, p1}, Landroid/car/watchdog/ICarWatchdogService;->tellClientAlive(Landroid/automotive/watchdog/ICarWatchdogClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 302
    invoke-virtual {p0, p1}, Landroid/car/CarManagerBase;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$checkClientStatus$0$CarWatchdogManager(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/car/watchdog/CarWatchdogManager;->lambda$checkClientStatus$0(Landroid/car/watchdog/CarWatchdogManager$CarWatchdogClientCallback;II)V

    return-void
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
