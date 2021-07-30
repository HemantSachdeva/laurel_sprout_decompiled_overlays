.class public Landroid/car/CarOccupantZoneManager;
.super Landroid/car/CarManagerBase;
.source "CarOccupantZoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;,
        Landroid/car/CarOccupantZoneManager$EventHandler;,
        Landroid/car/CarOccupantZoneManager$OccupantZoneConfigChangeListener;,
        Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarOccupantZoneManager"


# instance fields
.field private final mEventHandler:Landroid/car/CarOccupantZoneManager$EventHandler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/car/CarOccupantZoneManager$OccupantZoneConfigChangeListener;",
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
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 274
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 268
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/CarOccupantZoneManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 275
    invoke-static {p2}, Landroid/car/ICarOccupantZone$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarOccupantZone;

    .line 276
    new-instance p1, Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroid/car/CarOccupantZoneManager$ICarOccupantZoneCallbackImpl;-><init>(Landroid/car/CarOccupantZoneManager;Landroid/car/CarOccupantZoneManager$1;)V

    .line 277
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 278
    new-instance p1, Landroid/car/CarOccupantZoneManager$EventHandler;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0, p2}, Landroid/car/CarOccupantZoneManager$EventHandler;-><init>(Landroid/car/CarOccupantZoneManager;Landroid/os/Looper;Landroid/car/CarOccupantZoneManager$1;)V

    iput-object p1, p0, Landroid/car/CarOccupantZoneManager;->mEventHandler:Landroid/car/CarOccupantZoneManager$EventHandler;

    return-void
.end method

.method static synthetic access$200(Landroid/car/CarOccupantZoneManager;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Landroid/car/CarOccupantZoneManager;->handleOnOccupantZoneConfigChanged(I)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Landroid/car/CarOccupantZoneManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroid/car/CarOccupantZoneManager;)Landroid/car/CarOccupantZoneManager$EventHandler;
    .locals 0

    .line 52
    iget-object p0, p0, Landroid/car/CarOccupantZoneManager;->mEventHandler:Landroid/car/CarOccupantZoneManager$EventHandler;

    return-object p0
.end method

.method private handleOnOccupantZoneConfigChanged(I)V
    .locals 1

    .line 477
    iget-object p0, p0, Landroid/car/CarOccupantZoneManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/CarOccupantZoneManager$OccupantZoneConfigChangeListener;

    .line 478
    invoke-interface {v0, p1}, Landroid/car/CarOccupantZoneManager$OccupantZoneConfigChangeListener;->onOccupantZoneConfigChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
