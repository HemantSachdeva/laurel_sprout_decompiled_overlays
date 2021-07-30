.class public abstract Landroid/car/diagnostic/ICarDiagnostic$Stub;
.super Landroid/os/Binder;
.source "ICarDiagnostic.java"

# interfaces
.implements Landroid/car/diagnostic/ICarDiagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/ICarDiagnostic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/diagnostic/ICarDiagnostic;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.diagnostic.ICarDiagnostic"

    .line 113
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    instance-of v1, v0, Landroid/car/diagnostic/ICarDiagnostic;

    if-eqz v1, :cond_1

    .line 115
    check-cast v0, Landroid/car/diagnostic/ICarDiagnostic;

    return-object v0

    .line 117
    :cond_1
    new-instance v0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
