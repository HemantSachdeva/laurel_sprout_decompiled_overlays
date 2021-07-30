.class public final Landroid/car/vms/VmsClientManager;
.super Landroid/car/CarManagerBase;
.source "VmsClientManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VmsClientManager"


# instance fields
.field private final mClients:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Landroid/car/vms/VmsClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 85
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    .line 86
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/car/vms/VmsClientManager;->mClients:Ljava/util/Map;

    .line 94
    invoke-static {p2}, Landroid/car/vms/IVmsBrokerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsBrokerService;

    return-void
.end method


# virtual methods
.method protected onCarDisconnected()V
    .locals 4

    .line 189
    iget-object v0, p0, Landroid/car/vms/VmsClientManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_0
    sget-object v1, Landroid/car/vms/VmsClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Car disconnected with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/car/vms/VmsClientManager;->mClients:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " active clients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Landroid/car/vms/VmsClientManager;->mClients:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 192
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
