.class public abstract Landroid/car/ICar$Stub;
.super Landroid/os/Binder;
.source "ICar.java"

# interfaces
.implements Landroid/car/ICar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/ICar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICar$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/ICar;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.ICar"

    .line 127
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 128
    instance-of v1, v0, Landroid/car/ICar;

    if-eqz v1, :cond_1

    .line 129
    check-cast v0, Landroid/car/ICar;

    return-object v0

    .line 131
    :cond_1
    new-instance v0, Landroid/car/ICar$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/ICar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/car/ICar;
    .locals 1

    .line 651
    sget-object v0, Landroid/car/ICar$Stub$Proxy;->sDefaultImpl:Landroid/car/ICar;

    return-object v0
.end method
