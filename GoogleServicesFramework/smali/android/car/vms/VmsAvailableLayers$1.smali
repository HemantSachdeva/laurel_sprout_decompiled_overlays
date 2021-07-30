.class Landroid/car/vms/VmsAvailableLayers$1;
.super Ljava/lang/Object;
.source "VmsAvailableLayers.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/VmsAvailableLayers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/vms/VmsAvailableLayers;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsAvailableLayers;
    .locals 0

    .line 228
    new-instance p0, Landroid/car/vms/VmsAvailableLayers;

    invoke-direct {p0, p1}, Landroid/car/vms/VmsAvailableLayers;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsAvailableLayers$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsAvailableLayers;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/vms/VmsAvailableLayers;
    .locals 0

    .line 223
    new-array p0, p1, [Landroid/car/vms/VmsAvailableLayers;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsAvailableLayers$1;->newArray(I)[Landroid/car/vms/VmsAvailableLayers;

    move-result-object p0

    return-object p0
.end method
