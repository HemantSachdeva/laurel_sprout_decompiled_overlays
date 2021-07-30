.class Landroid/car/storagemonitoring/IoStats$1;
.super Ljava/lang/Object;
.source "IoStats.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/IoStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/storagemonitoring/IoStats;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/storagemonitoring/IoStats;
    .locals 0

    .line 44
    new-instance p0, Landroid/car/storagemonitoring/IoStats;

    invoke-direct {p0, p1}, Landroid/car/storagemonitoring/IoStats;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/IoStats$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/storagemonitoring/IoStats;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/storagemonitoring/IoStats;
    .locals 0

    .line 49
    new-array p0, p1, [Landroid/car/storagemonitoring/IoStats;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/IoStats$1;->newArray(I)[Landroid/car/storagemonitoring/IoStats;

    move-result-object p0

    return-object p0
.end method
