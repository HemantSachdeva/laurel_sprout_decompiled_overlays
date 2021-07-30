.class final Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;
.super Landroid/automotive/watchdog/ICarWatchdogClient$Stub;
.source "CarWatchdogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/watchdog/CarWatchdogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ICarWatchdogClientImpl"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/watchdog/CarWatchdogManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/car/watchdog/CarWatchdogManager;)V
    .locals 1

    .line 324
    invoke-direct {p0}, Landroid/automotive/watchdog/ICarWatchdogClient$Stub;-><init>()V

    .line 325
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/watchdog/CarWatchdogManager;Landroid/car/watchdog/CarWatchdogManager$1;)V
    .locals 0

    .line 321
    invoke-direct {p0, p1}, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;-><init>(Landroid/car/watchdog/CarWatchdogManager;)V

    return-void
.end method


# virtual methods
.method public checkIfAlive(II)V
    .locals 0

    .line 330
    iget-object p0, p0, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/watchdog/CarWatchdogManager;

    if-eqz p0, :cond_0

    .line 332
    invoke-static {p0, p1, p2}, Landroid/car/watchdog/CarWatchdogManager;->access$100(Landroid/car/watchdog/CarWatchdogManager;II)V

    :cond_0
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "f7adf2ef96b380c7fde3919f565eb764986bdcdd"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public prepareProcessTermination()V
    .locals 0

    .line 338
    iget-object p0, p0, Landroid/car/watchdog/CarWatchdogManager$ICarWatchdogClientImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/watchdog/CarWatchdogManager;

    if-eqz p0, :cond_0

    .line 340
    invoke-static {p0}, Landroid/car/watchdog/CarWatchdogManager;->access$200(Landroid/car/watchdog/CarWatchdogManager;)V

    :cond_0
    return-void
.end method
