.class Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;
.super Lcom/android/car/internal/SingleMessageHandler;
.source "CarStorageMonitoringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/storagemonitoring/CarStorageMonitoringManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/internal/SingleMessageHandler<",
        "Landroid/car/storagemonitoring/IoStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/storagemonitoring/CarStorageMonitoringManager;


# direct methods
.method constructor <init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;Landroid/os/Handler;I)V
    .locals 0

    .line 92
    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;->this$0:Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    invoke-direct {p0, p2, p3}, Lcom/android/car/internal/SingleMessageHandler;-><init>(Landroid/os/Handler;I)V

    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/car/storagemonitoring/IoStats;)V
    .locals 1

    .line 95
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;->this$0:Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    invoke-static {p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->access$100(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;

    .line 96
    invoke-interface {v0, p1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;->onSnapshot(Landroid/car/storagemonitoring/IoStats;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected bridge synthetic handleEvent(Ljava/lang/Object;)V
    .locals 0

    .line 92
    check-cast p1, Landroid/car/storagemonitoring/IoStats;

    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;->handleEvent(Landroid/car/storagemonitoring/IoStats;)V

    return-void
.end method
