.class Landroid/car/hardware/property/CarPropertyManager$1;
.super Lcom/android/car/internal/SingleMessageHandler;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/SingleMessageHandler<",
        "Landroid/car/hardware/property/CarPropertyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/property/CarPropertyManager;


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager;Landroid/os/Looper;I)V
    .locals 0

    .line 191
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$1;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {p0, p2, p3}, Lcom/android/car/internal/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 2

    .line 195
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$1;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v0}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager$1;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p0}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object p0

    .line 197
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 196
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    .line 198
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getEventType()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 205
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    goto :goto_0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 202
    :cond_1
    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 198
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 191
    check-cast p1, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$1;->handleEvent(Landroid/car/hardware/property/CarPropertyEvent;)V

    return-void
.end method
