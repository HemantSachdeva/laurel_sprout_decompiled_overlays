.class public final Landroid/car/storagemonitoring/IoStatsEntry$Metrics;
.super Ljava/lang/Object;
.source "IoStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/IoStatsEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metrics"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/storagemonitoring/IoStatsEntry$Metrics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final bytesRead:J

.field public final bytesReadFromStorage:J

.field public final bytesWritten:J

.field public final bytesWrittenToStorage:J

.field public final fsyncCalls:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/IoStatsEntry$Metrics$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

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

    .line 325
    instance-of v0, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 326
    check-cast p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;

    .line 328
    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    iget-wide p0, p1, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 339
    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    .line 340
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 339
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 345
    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    .line 346
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    .line 347
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    const-string p0, "bytesRead=%d, bytesWritten=%d, bytesReadFromStorage=%d, bytesWrittenToStorage=%d, fsyncCalls=%d"

    .line 345
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 267
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesRead:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 268
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWritten:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 269
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesReadFromStorage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 270
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->bytesWrittenToStorage:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 271
    iget-wide v0, p0, Landroid/car/storagemonitoring/IoStatsEntry$Metrics;->fsyncCalls:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
