.class public abstract Landroid/car/ICarBugreportService$Stub;
.super Landroid/os/Binder;
.source "ICarBugreportService.java"

# interfaces
.implements Landroid/car/ICarBugreportService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICarBugreportService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarBugreportService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICarBugreportService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICarBugreportService"

    .line 54
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55
    instance-of v1, v0, Landroid/car/ICarBugreportService;

    if-eqz v1, :cond_1

    .line 56
    check-cast v0, Landroid/car/ICarBugreportService;

    return-object v0

    .line 58
    :cond_1
    new-instance v0, Landroid/car/ICarBugreportService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICarBugreportService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
