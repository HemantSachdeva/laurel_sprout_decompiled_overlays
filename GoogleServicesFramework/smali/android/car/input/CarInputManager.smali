.class public final Landroid/car/input/CarInputManager;
.super Landroid/car/CarManagerBase;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/input/CarInputManager$ICarInputCallbackImpl;,
        Landroid/car/input/CarInputManager$InputTypeEnum;,
        Landroid/car/input/CarInputManager$CarInputCaptureCallback;
    }
.end annotation


# instance fields
.field private final mCarInputCaptureCallbacks:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/input/CarInputManager$CarInputCaptureCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 204
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 192
    new-instance p1, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Landroid/car/input/CarInputManager;Landroid/car/input/CarInputManager$1;)V

    .line 194
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    .line 196
    new-instance p1, Landroid/util/SparseArray;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, Landroid/car/input/CarInputManager;->mCarInputCaptureCallbacks:Landroid/util/SparseArray;

    .line 205
    invoke-static {p2}, Landroid/car/input/ICarInput$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/input/ICarInput;

    return-void
.end method

.method static synthetic access$100(Landroid/car/input/CarInputManager;ILjava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->dispatchKeyEvents(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/input/CarInputManager;ILjava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->dispatchRotaryEvents(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/input/CarInputManager;I[I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->dispatchOnCaptureStateChanged(I[I)V

    return-void
.end method

.method private dispatchKeyEvents(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/car/input/-$$Lambda$CarInputManager$w2AWgfKn8yjUsgAPhCShMYAMlJQ;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/input/-$$Lambda$CarInputManager$w2AWgfKn8yjUsgAPhCShMYAMlJQ;-><init>(Landroid/car/input/CarInputManager;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchOnCaptureStateChanged(I[I)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/input/-$$Lambda$CarInputManager$V9NyjNRK9diB4sklxJyVfmkKhcA;-><init>(Landroid/car/input/CarInputManager;I[I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private dispatchRotaryEvents(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/car/input/RotaryEvent;",
            ">;)V"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/car/input/-$$Lambda$CarInputManager$eq1_zJPrGH_zWOIPVH6QRyA5718;

    invoke-direct {v1, p0, p1, p2}, Landroid/car/input/-$$Lambda$CarInputManager$eq1_zJPrGH_zWOIPVH6QRyA5718;-><init>(Landroid/car/input/CarInputManager;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCallback(I)Landroid/car/input/CarInputManager$CarInputCaptureCallback;
    .locals 1

    .line 269
    iget-object v0, p0, Landroid/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_0
    iget-object p0, p0, Landroid/car/input/CarInputManager;->mCarInputCaptureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/input/CarInputManager$CarInputCaptureCallback;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 271
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$dispatchKeyEvents$0(ILjava/util/List;)V
    .locals 0

    .line 276
    invoke-direct {p0, p1}, Landroid/car/input/CarInputManager;->getCallback(I)Landroid/car/input/CarInputManager$CarInputCaptureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 278
    invoke-interface {p0, p1, p2}, Landroid/car/input/CarInputManager$CarInputCaptureCallback;->onKeyEvents(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dispatchOnCaptureStateChanged$2(I[I)V
    .locals 0

    .line 295
    invoke-direct {p0, p1}, Landroid/car/input/CarInputManager;->getCallback(I)Landroid/car/input/CarInputManager$CarInputCaptureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 297
    invoke-interface {p0, p1, p2}, Landroid/car/input/CarInputManager$CarInputCaptureCallback;->onCaptureStateChanged(I[I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$dispatchRotaryEvents$1(ILjava/util/List;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Landroid/car/input/CarInputManager;->getCallback(I)Landroid/car/input/CarInputManager$CarInputCaptureCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 288
    invoke-interface {p0, p1, p2}, Landroid/car/input/CarInputManager$CarInputCaptureCallback;->onRotaryEvents(ILjava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$dispatchKeyEvents$0$CarInputManager(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->lambda$dispatchKeyEvents$0(ILjava/util/List;)V

    return-void
.end method

.method public synthetic lambda$dispatchOnCaptureStateChanged$2$CarInputManager(I[I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->lambda$dispatchOnCaptureStateChanged$2(I[I)V

    return-void
.end method

.method public synthetic lambda$dispatchRotaryEvents$1$CarInputManager(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/car/input/CarInputManager;->lambda$dispatchRotaryEvents$1(ILjava/util/List;)V

    return-void
.end method

.method protected onCarDisconnected()V
    .locals 1

    .line 263
    iget-object v0, p0, Landroid/car/input/CarInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 264
    :try_start_0
    iget-object p0, p0, Landroid/car/input/CarInputManager;->mCarInputCaptureCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 265
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
