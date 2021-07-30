.class public final Landroid/car/CarProjectionManager;
.super Landroid/car/CarManagerBase;
.source "CarProjectionManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarProjectionManager$KeyEventHandlerRecord;,
        Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;,
        Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarProjectionManager"


# instance fields
.field private final mKeyEventHandlers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;",
            "Landroid/car/CarProjectionManager$KeyEventHandlerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 223
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 246
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 77
    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    .line 78
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    .line 208
    new-instance p1, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;-><init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$1;)V

    .line 211
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    .line 214
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    .line 219
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 247
    invoke-static {p2}, Landroid/car/ICarProjection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarProjection;

    .line 248
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p0

    .line 249
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 74
    sget-object v0, Landroid/car/CarProjectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/car/CarProjectionManager;)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/car/CarProjectionManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$600(Landroid/car/CarProjectionManager;)Ljava/util/Map;
    .locals 0

    .line 74
    iget-object p0, p0, Landroid/car/CarProjectionManager;->mKeyEventHandlers:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
