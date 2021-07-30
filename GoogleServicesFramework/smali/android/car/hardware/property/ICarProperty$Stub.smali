.class public abstract Landroid/car/hardware/property/ICarProperty$Stub;
.super Landroid/os/Binder;
.source "ICarProperty.java"

# interfaces
.implements Landroid/car/hardware/property/ICarProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/property/ICarProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/property/ICarProperty$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.hardware.property.ICarProperty"

    .line 61
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    instance-of v1, v0, Landroid/car/hardware/property/ICarProperty;

    if-eqz v1, :cond_1

    .line 63
    check-cast v0, Landroid/car/hardware/property/ICarProperty;

    return-object v0

    .line 65
    :cond_1
    new-instance v0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/hardware/property/ICarProperty;
    .locals 1

    .line 367
    sget-object v0, Landroid/car/hardware/property/ICarProperty$Stub$Proxy;->sDefaultImpl:Landroid/car/hardware/property/ICarProperty;

    return-object v0
.end method
