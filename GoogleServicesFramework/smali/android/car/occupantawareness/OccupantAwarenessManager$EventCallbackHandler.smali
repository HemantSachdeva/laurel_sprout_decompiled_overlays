.class final Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;
.super Landroid/os/Handler;
.source "OccupantAwarenessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/occupantawareness/OccupantAwarenessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field private final mOccupantAwarenessManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/occupantawareness/OccupantAwarenessManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/os/Looper;)V
    .locals 0

    .line 289
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 290
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;->mOccupantAwarenessManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 295
    iget-object p0, p0, Landroid/car/occupantawareness/OccupantAwarenessManager$EventCallbackHandler;->mOccupantAwarenessManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/occupantawareness/OccupantAwarenessManager;

    if-eqz p0, :cond_2

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/occupantawareness/OccupantAwarenessDetection;

    invoke-static {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager;->access$300(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/car/occupantawareness/OccupantAwarenessDetection;)V

    goto :goto_0

    .line 308
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 300
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/occupantawareness/SystemStatusEvent;

    invoke-static {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessManager;->access$200(Landroid/car/occupantawareness/OccupantAwarenessManager;Landroid/car/occupantawareness/SystemStatusEvent;)V

    :cond_2
    :goto_0
    return-void
.end method
