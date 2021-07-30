.class final Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "CarDrivingStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarDrivingStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field private final mDrvStateMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/drivingstate/CarDrivingStateManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/os/Looper;)V
    .locals 0

    .line 220
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 221
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->mDrvStateMgr:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 226
    iget-object p0, p0, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->mDrvStateMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarDrivingStateManager;

    if-eqz p0, :cond_0

    .line 228
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/drivingstate/CarDrivingStateEvent;

    invoke-static {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->access$100(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V

    :cond_0
    return-void
.end method
