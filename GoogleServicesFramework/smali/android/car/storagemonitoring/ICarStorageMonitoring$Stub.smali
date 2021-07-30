.class public abstract Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;
.super Landroid/os/Binder;
.source "ICarStorageMonitoring.java"

# interfaces
.implements Landroid/car/storagemonitoring/ICarStorageMonitoring;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/ICarStorageMonitoring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.storagemonitoring.ICarStorageMonitoring"

    .line 95
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    instance-of v1, v0, Landroid/car/storagemonitoring/ICarStorageMonitoring;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroid/car/storagemonitoring/ICarStorageMonitoring;

    return-object v0

    .line 99
    :cond_1
    new-instance v0, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
