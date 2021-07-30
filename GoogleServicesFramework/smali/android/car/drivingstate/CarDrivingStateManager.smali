.class public final Landroid/car/drivingstate/CarDrivingStateManager;
.super Landroid/car/CarManagerBase;
.source "CarDrivingStateManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;,
        Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    }
.end annotation


# instance fields
.field private mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 57
    invoke-static {p2}, Landroid/car/drivingstate/ICarDrivingState$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarDrivingState;

    .line 58
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;-><init>(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method private dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 245
    :cond_0
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

    .line 247
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 249
    invoke-interface {v0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;->onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 247
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 65
    :try_start_0
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
