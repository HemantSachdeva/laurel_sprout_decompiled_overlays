.class public final Landroid/car/content/pm/CarPackageManager;
.super Landroid/car/CarManagerBase;
.source "CarPackageManager.java"


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 79
    invoke-static {p2}, Landroid/car/content/pm/ICarPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/content/pm/ICarPackageManager;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
