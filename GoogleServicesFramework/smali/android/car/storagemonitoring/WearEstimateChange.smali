.class public final Landroid/car/storagemonitoring/WearEstimateChange;
.super Ljava/lang/Object;
.source "WearEstimateChange.java"

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
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dateAtChange:Ljava/time/Instant;

.field public final isAcceptableDegradation:Z

.field public final newEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field public final oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field public final uptimeAtChange:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/car/storagemonitoring/WearEstimateChange$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/WearEstimateChange$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/WearEstimateChange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-class v0, Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 91
    const-class v0, Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

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

    .line 113
    instance-of v0, p1, Landroid/car/storagemonitoring/WearEstimateChange;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Landroid/car/storagemonitoring/WearEstimateChange;

    .line 115
    iget-boolean v0, p1, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

    iget-boolean v2, p0, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

    if-ne v0, v2, :cond_0

    iget-wide v2, p1, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    iget-wide v4, p0, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    iget-object v2, p0, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    .line 117
    invoke-virtual {v0, v2}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v2, p0, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 118
    invoke-virtual {v0, v2}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object p0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 119
    invoke-virtual {p1, p0}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    .line 128
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean p0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

    .line 130
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 126
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    .line 139
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 141
    iget-boolean p0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

    if-eqz p0, :cond_0

    const-string p0, "yes"

    goto :goto_0

    :cond_0
    const-string p0, "no"

    :goto_0
    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "wear change{old level=%s, new level=%s, uptime=%d, date=%s, acceptable=%s}"

    .line 135
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 104
    iget-object v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    iget-object v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-wide v0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    iget-object p2, p0, Landroid/car/storagemonitoring/WearEstimateChange;->dateAtChange:Ljava/time/Instant;

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 108
    iget-boolean p0, p0, Landroid/car/storagemonitoring/WearEstimateChange;->isAcceptableDegradation:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
