.class public final Landroid/car/CarBluetoothManager;
.super Landroid/car/CarManagerBase;
.source "CarBluetoothManager.java"


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 62
    invoke-static {p2}, Landroid/car/ICarBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBluetooth;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
