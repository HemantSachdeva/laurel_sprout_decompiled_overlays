.class public abstract Landroid/car/settings/ICarConfigurationManager$Stub;
.super Landroid/os/Binder;
.source "ICarConfigurationManager.java"

# interfaces
.implements Landroid/car/settings/ICarConfigurationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/settings/ICarConfigurationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/settings/ICarConfigurationManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/settings/ICarConfigurationManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.settings.ICarConfigurationManager"

    .line 47
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    instance-of v1, v0, Landroid/car/settings/ICarConfigurationManager;

    if-eqz v1, :cond_1

    .line 49
    check-cast v0, Landroid/car/settings/ICarConfigurationManager;

    return-object v0

    .line 51
    :cond_1
    new-instance v0, Landroid/car/settings/ICarConfigurationManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/settings/ICarConfigurationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
