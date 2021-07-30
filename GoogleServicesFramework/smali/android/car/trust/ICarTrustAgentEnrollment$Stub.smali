.class public abstract Landroid/car/trust/ICarTrustAgentEnrollment$Stub;
.super Landroid/os/Binder;
.source "ICarTrustAgentEnrollment.java"

# interfaces
.implements Landroid/car/trust/ICarTrustAgentEnrollment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/ICarTrustAgentEnrollment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollment;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.car.trust.ICarTrustAgentEnrollment"

    .line 85
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    instance-of v1, v0, Landroid/car/trust/ICarTrustAgentEnrollment;

    if-eqz v1, :cond_1

    .line 87
    check-cast v0, Landroid/car/trust/ICarTrustAgentEnrollment;

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
