.class public Landroid/car/hardware/power/CarPowerManager;
.super Landroid/car/CarManagerBase;
.source "CarPowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 41
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    .line 143
    invoke-static {p2}, Landroid/car/hardware/power/ICarPower$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/power/ICarPower;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 1

    .line 333
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 336
    :try_start_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_0
.end method
