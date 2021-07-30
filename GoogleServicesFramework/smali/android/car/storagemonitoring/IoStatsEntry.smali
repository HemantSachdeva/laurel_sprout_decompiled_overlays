.class public final Landroid/car/storagemonitoring/IoStatsEntry;
.super Ljava/lang/Object;
.source "IoStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/IoStatsEntry$Metrics;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

.field public final foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

.field public final runtimeMillis:J

.field public final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/car/storagemonitoring/IoStatsEntry$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/IoStatsEntry$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/IoStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    .line 90
    const-class v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    iput-object v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    .line 91
    const-class v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    iput-object p1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

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

    .line 164
    instance-of v0, p1, Landroid/car/storagemonitoring/IoStatsEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Landroid/car/storagemonitoring/IoStatsEntry;

    .line 167
    iget v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    iget v2, p1, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    if-ne v0, v2, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    iget-object v2, p1, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    .line 169
    invoke-virtual {v0, v2}, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    iget-object p1, p1, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    .line 170
    invoke-virtual {p0, p1}, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    iget v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 182
    iget v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    const-string p0, "uid = %d, runtime = %d, foreground = %s, background = %s"

    .line 182
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 116
    iget v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 118
    iget-object v0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->foreground:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 119
    iget-object p0, p0, Landroid/car/storagemonitoring/IoStatsEntry;->background:Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
