.class final Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;
.super Lcom/android/car/internal/CarRatedFloatListeners;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CarPropertyListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/CarRatedFloatListeners<",
        "Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/property/CarPropertyManager;


# virtual methods
.method onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 4

    .line 886
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 887
    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v1}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 888
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/car/internal/CarRatedFloatListeners;->getListeners()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 889
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 890
    new-instance v1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;

    invoke-direct {v1, p0, v0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;-><init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v2, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 889
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 5

    .line 862
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v0

    .line 863
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v2

    .line 864
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/car/internal/CarRatedFloatListeners;->needUpdateForAreaId(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 871
    :cond_0
    iget-object v2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->this$0:Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {v2}, Landroid/car/hardware/property/CarPropertyManager;->access$000(Landroid/car/hardware/property/CarPropertyManager;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    .line 872
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/car/internal/CarRatedFloatListeners;->getListeners()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 873
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 874
    new-instance v2, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;

    invoke-direct {v2, p0, v0, v1, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;-><init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLandroid/car/hardware/property/CarPropertyEvent;)V

    invoke-interface {v3, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 873
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
