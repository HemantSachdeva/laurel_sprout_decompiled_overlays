.class public abstract Landroid/car/IAppFocus$Stub;
.super Landroid/os/Binder;
.source "IAppFocus.java"

# interfaces
.implements Landroid/car/IAppFocus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/IAppFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/IAppFocus$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/IAppFocus;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.IAppFocus"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Landroid/car/IAppFocus;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Landroid/car/IAppFocus;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Landroid/car/IAppFocus$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/IAppFocus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
