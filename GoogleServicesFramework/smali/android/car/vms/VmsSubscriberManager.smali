.class public final Landroid/car/vms/VmsSubscriberManager;
.super Landroid/car/CarManagerBase;
.source "VmsSubscriberManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mClient:Landroid/car/vms/VmsClient;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 74
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mLock:Ljava/lang/Object;

    .line 82
    new-instance p1, Landroid/car/vms/VmsSubscriptionHelper;

    new-instance p2, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$Kh9xFYpfnlxarctdo5xQ4xv7YRc;

    invoke-direct {p2, p0}, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$Kh9xFYpfnlxarctdo5xQ4xv7YRc;-><init>(Landroid/car/vms/VmsSubscriberManager;)V

    invoke-direct {p1, p2}, Landroid/car/vms/VmsSubscriptionHelper;-><init>(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private getVmsClient()Landroid/car/vms/VmsClient;
    .locals 2

    .line 241
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClient:Landroid/car/vms/VmsClient;

    if-eqz v1, :cond_0

    .line 245
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mClient:Landroid/car/vms/VmsClient;

    monitor-exit v0

    return-object p0

    .line 243
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "VMS client connection is not ready"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static synthetic lambda$Kh9xFYpfnlxarctdo5xQ4xv7YRc(Landroid/car/vms/VmsSubscriberManager;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->setSubscriptions(Ljava/util/Set;)V

    return-void
.end method

.method private setSubscriptions(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/car/vms/VmsAssociatedLayer;",
            ">;)V"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getVmsClient()Landroid/car/vms/VmsClient;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/car/vms/VmsClient;->setSubscriptions(Ljava/util/Set;)V

    return-void
.end method

.method public static wrap(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)Landroid/car/vms/VmsSubscriberManager;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 92
    :cond_0
    new-instance v0, Landroid/car/vms/VmsSubscriberManager;

    invoke-direct {v0, p0, p1}, Landroid/car/vms/VmsSubscriberManager;-><init>(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)V

    return-object v0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
