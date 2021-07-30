.class public abstract Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.super Landroid/os/Binder;
.source "ICarUxRestrictionsManager.java"

# interfaces
.implements Landroid/car/drivingstate/ICarUxRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/ICarUxRestrictionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarUxRestrictionsManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 80
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    instance-of v1, v0, Landroid/car/drivingstate/ICarUxRestrictionsManager;

    if-eqz v1, :cond_1

    .line 82
    check-cast v0, Landroid/car/drivingstate/ICarUxRestrictionsManager;

    return-object v0

    .line 84
    :cond_1
    new-instance v0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;
    .locals 1

    .line 462
    sget-object v0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;

    return-object v0
.end method
