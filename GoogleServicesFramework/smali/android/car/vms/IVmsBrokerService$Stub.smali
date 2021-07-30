.class public abstract Landroid/car/vms/IVmsBrokerService$Stub;
.super Landroid/os/Binder;
.source "IVmsBrokerService.java"

# interfaces
.implements Landroid/car/vms/IVmsBrokerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/IVmsBrokerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/IVmsBrokerService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsBrokerService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.vms.IVmsBrokerService"

    .line 78
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    instance-of v1, v0, Landroid/car/vms/IVmsBrokerService;

    if-eqz v1, :cond_1

    .line 80
    check-cast v0, Landroid/car/vms/IVmsBrokerService;

    return-object v0

    .line 82
    :cond_1
    new-instance v0, Landroid/car/vms/IVmsBrokerService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/vms/IVmsBrokerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
