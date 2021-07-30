.class final Landroid/car/input/CarInputManager$ICarInputCallbackImpl;
.super Landroid/car/input/ICarInputCallback$Stub;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ICarInputCallbackImpl"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/input/CarInputManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/car/input/CarInputManager;)V
    .locals 1

    .line 306
    invoke-direct {p0}, Landroid/car/input/ICarInputCallback$Stub;-><init>()V

    .line 307
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/input/CarInputManager;Landroid/car/input/CarInputManager$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;-><init>(Landroid/car/input/CarInputManager;)V

    return-void
.end method


# virtual methods
.method public onCaptureStateChanged(I[I)V
    .locals 0

    .line 330
    iget-object p0, p0, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/input/CarInputManager;

    if-nez p0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/car/input/CarInputManager;->access$300(Landroid/car/input/CarInputManager;I[I)V

    return-void
.end method

.method public onKeyEvents(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object p0, p0, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/input/CarInputManager;

    if-nez p0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/car/input/CarInputManager;->access$100(Landroid/car/input/CarInputManager;ILjava/util/List;)V

    return-void
.end method

.method public onRotaryEvents(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/car/input/RotaryEvent;",
            ">;)V"
        }
    .end annotation

    .line 321
    iget-object p0, p0, Landroid/car/input/CarInputManager$ICarInputCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/input/CarInputManager;

    if-nez p0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/car/input/CarInputManager;->access$200(Landroid/car/input/CarInputManager;ILjava/util/List;)V

    return-void
.end method
