.class public final Landroid/car/diagnostic/CarDiagnosticManager;
.super Landroid/car/CarManagerBase;
.source "CarDiagnosticManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;,
        Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticEventListenerToService;,
        Landroid/car/diagnostic/CarDiagnosticManager$OnDiagnosticEventListener;
    }
.end annotation


# instance fields
.field private final mActiveListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticListeners;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandlerCallback:Lcom/android/car/internal/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleMessageHandler<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorExtensionPermission:Lcom/android/car/internal/CarPermission;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 76
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 65
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mActiveListeners:Landroid/util/SparseArray;

    .line 77
    invoke-static {p2}, Landroid/car/diagnostic/ICarDiagnostic$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/diagnostic/ICarDiagnostic;

    .line 78
    new-instance p1, Landroid/car/diagnostic/CarDiagnosticManager$1;

    .line 79
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getEventHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Landroid/car/diagnostic/CarDiagnosticManager$1;-><init>(Landroid/car/diagnostic/CarDiagnosticManager;Landroid/os/Looper;I)V

    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mHandlerCallback:Lcom/android/car/internal/SingleMessageHandler;

    .line 91
    new-instance p1, Lcom/android/car/internal/CarPermission;

    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "android.car.permission.CAR_VENDOR_EXTENSION"

    invoke-direct {p1, p2, v0}, Lcom/android/car/internal/CarPermission;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mVendorExtensionPermission:Lcom/android/car/internal/CarPermission;

    .line 93
    new-instance p1, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticEventListenerToService;

    invoke-direct {p1, p0}, Landroid/car/diagnostic/CarDiagnosticManager$CarDiagnosticEventListenerToService;-><init>(Landroid/car/diagnostic/CarDiagnosticManager;)V

    return-void
.end method

.method static synthetic access$000(Landroid/car/diagnostic/CarDiagnosticManager;)Landroid/util/SparseArray;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mActiveListeners:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/diagnostic/CarDiagnosticManager;)Lcom/android/car/internal/SingleMessageHandler;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mHandlerCallback:Lcom/android/car/internal/SingleMessageHandler;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/diagnostic/CarDiagnosticManager;)Lcom/android/car/internal/CarPermission;
    .locals 0

    .line 48
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mVendorExtensionPermission:Lcom/android/car/internal/CarPermission;

    return-object p0
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 1

    .line 98
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mActiveListeners:Landroid/util/SparseArray;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticManager;->mActiveListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
