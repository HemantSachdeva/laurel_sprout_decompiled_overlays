.class Landroid/car/vms/VmsLayerDependency$1;
.super Ljava/lang/Object;
.source "VmsLayerDependency.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/vms/VmsLayerDependency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/vms/VmsLayerDependency;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsLayerDependency;
    .locals 0

    .line 213
    new-instance p0, Landroid/car/vms/VmsLayerDependency;

    invoke-direct {p0, p1}, Landroid/car/vms/VmsLayerDependency;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsLayerDependency$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/vms/VmsLayerDependency;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/vms/VmsLayerDependency;
    .locals 0

    .line 208
    new-array p0, p1, [Landroid/car/vms/VmsLayerDependency;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 205
    invoke-virtual {p0, p1}, Landroid/car/vms/VmsLayerDependency$1;->newArray(I)[Landroid/car/vms/VmsLayerDependency;

    move-result-object p0

    return-object p0
.end method
