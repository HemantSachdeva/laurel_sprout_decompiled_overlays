.class public Landroid/car/occupantawareness/OccupantAwarenessManager;
.super Landroid/car/CarManagerBase;
.source "OccupantAwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;,
        Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;
    }
.end annotation


# instance fields
.field private mChangeCallback:Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 55
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mLock:Ljava/lang/Object;

    .line 69
    invoke-static {p2}, Landroid/car/occupantawareness/IOccupantAwarenessManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/occupantawareness/IOccupantAwarenessManager;

    .line 71
    new-instance p1, Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;-><init>(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/car/occupantawareness/SystemStatusEvent;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager;->dispatchSystemStatusToClient(Landroid/car/occupantawareness/SystemStatusEvent;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/car/occupantawareness/OccupantAwarenessDetection;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager;->dispatchDetectionEventToClient(Landroid/car/occupantawareness/OccupantAwarenessDetection;)V

    return-void
.end method

.method private dispatchDetectionEventToClient(Landroid/car/occupantawareness/OccupantAwarenessDetection;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object p0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mChangeCallback:Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;

    .line 276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 280
    invoke-virtual {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;->onDetectionEvent(Landroid/car/occupantawareness/OccupantAwarenessDetection;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 276
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchSystemStatusToClient(Landroid/car/occupantawareness/SystemStatusEvent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mChangeCallback:Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;

    if-eqz v1, :cond_1

    .line 242
    iget-object p0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mChangeCallback:Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;

    invoke-virtual {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;->onSystemStateChanged(Landroid/car/occupantawareness/SystemStatusEvent;)V

    .line 244
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 2

    .line 77
    iget-object v0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 78
    :try_start_0
    iput-object v1, p0, Landroid/car/occupantawareness/OccupantAwarenessManager;->mChangeCallback:Landroid/car/occupantawareness/OccupantAwarenessManager$ChangeCallback;

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
