.class public final Landroid/car/navigation/CarNavigationStatusManager;
.super Landroid/car/CarManagerBase;
.source "CarNavigationStatusManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 44
    invoke-static {p2}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/cluster/renderer/IInstrumentClusterNavigation;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
