.class Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;
.super Landroid/car/ICarOccupantZoneCallback$Stub;
.source "CarOccupantZoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarOccupantZoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICarOccupantZoneCallbackImpl"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/CarOccupantZoneManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/car/CarOccupantZoneManager;)V
    .locals 1

    .line 509
    invoke-direct {p0}, Landroid/car/ICarOccupantZoneCallback$Stub;-><init>()V

    .line 510
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/CarOccupantZoneManager;Landroid/car/CarOccupantZoneManager$1;)V
    .locals 0

    .line 506
    invoke-direct {p0, p1}, Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;-><init>(Landroid/car/CarOccupantZoneManager;)V

    return-void
.end method


# virtual methods
.method public onOccupantZoneConfigChanged(I)V
    .locals 0

    .line 515
    iget-object p0, p0, Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/CarOccupantZoneManager;

    if-eqz p0, :cond_0

    .line 517
    invoke-static {p0}, Landroid/car/CarOccupantZoneManager;->access$400(Landroid/car/CarOccupantZoneManager;)Landroid/car/CarOccupantZoneManager$EventHandler;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/car/CarOccupantZoneManager$EventHandler;->access$500(Landroid/car/CarOccupantZoneManager$EventHandler;I)V

    :cond_0
    return-void
.end method
