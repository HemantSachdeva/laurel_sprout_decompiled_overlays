.class public final Landroid/car/storagemonitoring/LifetimeWriteInfo;
.super Ljava/lang/Object;
.source "LifetimeWriteInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final fstype:Ljava/lang/String;

.field public final partition:Ljava/lang/String;

.field public final writtenBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Landroid/car/storagemonitoring/LifetimeWriteInfo$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/LifetimeWriteInfo$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 103
    instance-of v0, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    check-cast p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;

    .line 105
    iget-object v0, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    iget-object v2, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->fstype:Ljava/lang/String;

    iget-object v2, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;->fstype:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    iget-wide p0, p1, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 115
    iget-object v1, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->fstype:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    .line 116
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "for partition %s of type %s, %d bytes were written"

    .line 115
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 79
    iget-object p2, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->partition:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->fstype:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Landroid/car/storagemonitoring/LifetimeWriteInfo;->writtenBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
