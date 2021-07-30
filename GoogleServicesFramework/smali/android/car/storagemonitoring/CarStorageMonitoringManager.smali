.class public final Landroid/car/storagemonitoring/CarStorageMonitoringManager;
.super Landroid/car/CarManagerBase;
.source "CarStorageMonitoringManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;
    }
.end annotation


# instance fields
.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 90
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 48
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    .line 91
    invoke-static {p2}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;

    .line 92
    new-instance p1, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;-><init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;Landroid/os/Handler;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Ljava/util/Set;
    .locals 0

    .line 41
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    .line 107
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method
