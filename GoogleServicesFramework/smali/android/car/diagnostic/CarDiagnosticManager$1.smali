.class Landroid/car/diagnostic/CarDiagnosticManager$1;
.super Lcom/android/car/internal/SingleMessageHandler;
.source "CarDiagnosticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/diagnostic/CarDiagnosticManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/SingleMessageHandler<",
        "Landroid/car/diagnostic/CarDiagnosticEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/diagnostic/CarDiagnosticManager;


# direct methods
.method constructor <init>(Landroid/car/diagnostic/CarDiagnosticManager;Landroid/os/Looper;I)V
    .locals 0

    .line 79
    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticManager$1;->this$0:Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-direct {p0, p2, p3}, Lcom/android/car/internal/SingleMessageHandler;-><init>(Landroid/os/Looper;I)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V
    .locals 2

    .line 83
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticManager$1;->this$0:Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-static {v0}, Landroid/car/diagnostic/CarDiagnosticManager;->access$000(Landroid/car/diagnostic/CarDiagnosticManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticManager$1;->this$0:Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-static {p0}, Landroid/car/diagnostic/CarDiagnosticManager;->access$000(Landroid/car/diagnostic/CarDiagnosticManager;)Landroid/util/SparseArray;

    move-result-object p0

    iget v1, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;

    .line 85
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 87
    invoke-virtual {p0, p1}, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;->onDiagnosticEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 85
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 79
    check-cast p1, Landroid/car/diagnostic/CarDiagnosticEvent;

    invoke-virtual {p0, p1}, Landroid/car/diagnostic/CarDiagnosticManager$1;->handleEvent(Landroid/car/diagnostic/CarDiagnosticEvent;)V

    return-void
.end method
