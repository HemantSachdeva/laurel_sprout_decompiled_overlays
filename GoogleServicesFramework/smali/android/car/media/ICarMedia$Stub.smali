.class public abstract Landroid/car/media/ICarMedia$Stub;
.super Landroid/os/Binder;
.source "ICarMedia.java"

# interfaces
.implements Landroid/car/media/ICarMedia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/ICarMedia$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMedia;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.media.ICarMedia"

    .line 70
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 71
    instance-of v1, v0, Landroid/car/media/ICarMedia;

    if-eqz v1, :cond_1

    .line 72
    check-cast v0, Landroid/car/media/ICarMedia;

    return-object v0

    .line 74
    :cond_1
    new-instance v0, Landroid/car/media/ICarMedia$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/media/ICarMedia$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
