.class public final Landroid/car/storagemonitoring/IoStats;
.super Ljava/lang/Object;
.source "IoStats.java"

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
.field private final mStats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mUptimeTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/car/storagemonitoring/IoStats$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/IoStats$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/IoStats;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Landroid/car/storagemonitoring/IoStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/storagemonitoring/IoStats;->mStats:Ljava/util/List;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStats;->mUptimeTimestamp:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 200
    instance-of v0, p1, Landroid/car/storagemonitoring/IoStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    check-cast p1, Landroid/car/storagemonitoring/IoStats;

    .line 202
    invoke-virtual {p1}, Landroid/car/storagemonitoring/IoStats;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStats;->getTimestamp()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 203
    invoke-virtual {p1}, Landroid/car/storagemonitoring/IoStats;->getStats()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStats;->getStats()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Landroid/car/storagemonitoring/IoStats;->mStats:Ljava/util/List;

    return-object p0
.end method

.method public getTimestamp()J
    .locals 2

    .line 104
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStats;->mUptimeTimestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 113
    iget-object v1, p0, Landroid/car/storagemonitoring/IoStats;->mStats:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStats;->mUptimeTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 210
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStats;->getStats()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/storagemonitoring/IoStatsEntry;

    .line 212
    invoke-virtual {v2}, Landroid/car/storagemonitoring/IoStatsEntry;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/car/storagemonitoring/IoStats;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", stats = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 80
    iget-object p2, p0, Landroid/car/storagemonitoring/IoStats;->mStats:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 81
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStats;->mUptimeTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
