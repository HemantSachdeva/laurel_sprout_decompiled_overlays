.class Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;
.super Lcom/android/car/internal/CarRatedListeners;
.source "CarDiagnosticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/CarDiagnosticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarDiagnosticListeners"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/CarRatedListeners<",
        "Landroid/car/diagnostic/CarDiagnosticManager$OnDiagnosticEventListener;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/diagnostic/CarDiagnosticManager;


# virtual methods
.method onDiagnosticEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V
    .locals 4

    .line 368
    iget-wide v0, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 369
    iget-wide v2, p0, Lcom/android/car/internal/CarRatedListeners;->mLastUpdateTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string p0, "CAR.L.DIAGNOSTIC"

    const-string p1, "dropping old data"

    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 373
    :cond_0
    iput-wide v0, p0, Lcom/android/car/internal/CarRatedListeners;->mLastUpdateTime:J

    .line 374
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;->this$0:Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-static {v0}, Landroid/car/diagnostic/CarDiagnosticManager;->access$200(Landroid/car/diagnostic/CarDiagnosticManager;)Lcom/android/car/internal/CarPermission;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/internal/CarPermission;->checkGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Landroid/car/diagnostic/CarDiagnosticEvent;->withVendorSensorsRemoved()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object p1

    .line 379
    :goto_0
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;->this$0:Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-static {v0}, Landroid/car/diagnostic/CarDiagnosticManager;->access$000(Landroid/car/diagnostic/CarDiagnosticManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 380
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/car/internal/CarRatedListeners;->getListeners()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 381
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners$1;

    invoke-direct {v0, p0, p1}, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners$1;-><init>(Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;Landroid/car/diagnostic/CarDiagnosticEvent;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    :catchall_0
    move-exception p0

    .line 381
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
