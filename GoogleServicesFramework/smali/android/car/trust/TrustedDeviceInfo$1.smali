.class Landroid/car/trust/TrustedDeviceInfo$1;
.super Ljava/lang/Object;
.source "TrustedDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/TrustedDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/trust/TrustedDeviceInfo;
    .locals 0

    .line 143
    new-instance p0, Landroid/car/trust/TrustedDeviceInfo;

    invoke-direct {p0, p1}, Landroid/car/trust/TrustedDeviceInfo;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Landroid/car/trust/TrustedDeviceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/trust/TrustedDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/trust/TrustedDeviceInfo;
    .locals 0

    .line 147
    new-array p0, p1, [Landroid/car/trust/TrustedDeviceInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Landroid/car/trust/TrustedDeviceInfo$1;->newArray(I)[Landroid/car/trust/TrustedDeviceInfo;

    move-result-object p0

    return-object p0
.end method
