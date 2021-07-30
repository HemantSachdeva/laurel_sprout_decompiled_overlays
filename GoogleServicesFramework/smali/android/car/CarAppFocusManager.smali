.class public final Landroid/car/CarAppFocusManager;
.super Landroid/car/CarManagerBase;
.source "CarAppFocusManager.java"


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 132
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 122
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {p2}, Landroid/car/IAppFocus$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/IAppFocus;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
