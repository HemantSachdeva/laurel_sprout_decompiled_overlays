.class Landroid/car/vms/VmsLayer$1;
.super Ljava/lang/Object;
.source "VmsLayer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/VmsLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/vms/VmsLayer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsLayer;
    .locals 0

    .line 218
    new-instance p0, Landroid/car/vms/VmsLayer;

    invoke-direct {p0, p1}, Landroid/car/vms/VmsLayer;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsLayer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsLayer;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/vms/VmsLayer;
    .locals 0

    .line 213
    new-array p0, p1, [Landroid/car/vms/VmsLayer;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 210
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsLayer$1;->newArray(I)[Landroid/car/vms/VmsLayer;

    move-result-object p0

    return-object p0
.end method
