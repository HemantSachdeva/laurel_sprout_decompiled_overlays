.class public final Landroid/car/CarBugreportManager;
.super Landroid/car/CarManagerBase;
.source "CarBugreportManager.java"


# direct methods
.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    .line 155
    invoke-static {p2}, Landroid/car/ICarBugreportService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBugreportService;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
