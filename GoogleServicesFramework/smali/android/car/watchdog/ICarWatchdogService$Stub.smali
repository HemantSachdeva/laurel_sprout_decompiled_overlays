.class public abstract Landroid/car/watchdog/ICarWatchdogService$Stub;
.super Landroid/os/Binder;
.source "ICarWatchdogService.java"

# interfaces
.implements Landroid/car/watchdog/ICarWatchdogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/watchdog/ICarWatchdogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/watchdog/ICarWatchdogService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.watchdog.ICarWatchdogService"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Landroid/car/watchdog/ICarWatchdogService;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Landroid/car/watchdog/ICarWatchdogService;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/watchdog/ICarWatchdogService;
    .locals 1

    .line 197
    sget-object v0, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;->sDefaultImpl:Landroid/car/watchdog/ICarWatchdogService;

    return-object v0
.end method
