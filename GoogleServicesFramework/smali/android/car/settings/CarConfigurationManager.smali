.class public Landroid/car/settings/CarConfigurationManager;
.super Landroid/car/CarManagerBase;
.source "CarConfigurationManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 38
    invoke-static {p2}, Landroid/car/settings/ICarConfigurationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/settings/ICarConfigurationManager;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
