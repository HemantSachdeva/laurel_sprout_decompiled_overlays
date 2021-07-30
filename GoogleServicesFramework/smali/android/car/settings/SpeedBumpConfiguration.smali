.class public final Landroid/car/settings/SpeedBumpConfiguration;
.super Ljava/lang/Object;
.source "SpeedBumpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/settings/SpeedBumpConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAcquiredPermitsPerSecond:D

.field private final mMaxPermitPool:D

.field private final mPermitFillDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Landroid/car/settings/SpeedBumpConfiguration$1;

    invoke-direct {v0}, Landroid/car/settings/SpeedBumpConfiguration$1;-><init>()V

    sput-object v0, Landroid/car/settings/SpeedBumpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/settings/SpeedBumpConfiguration$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/car/settings/SpeedBumpConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 81
    :cond_0
    instance-of v1, p1, Landroid/car/settings/SpeedBumpConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 85
    :cond_1
    check-cast p1, Landroid/car/settings/SpeedBumpConfiguration;

    .line 86
    iget-wide v3, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    invoke-virtual {p1}, Landroid/car/settings/SpeedBumpConfiguration;->getAcquiredPermitsPerSecond()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    .line 87
    invoke-virtual {p1}, Landroid/car/settings/SpeedBumpConfiguration;->getMaxPermitPool()D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    .line 88
    invoke-virtual {p1}, Landroid/car/settings/SpeedBumpConfiguration;->getPermitFillDelay()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAcquiredPermitsPerSecond()D
    .locals 2

    .line 48
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    return-wide v0
.end method

.method public getMaxPermitPool()D
    .locals 2

    .line 55
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    return-wide v0
.end method

.method public getPermitFillDelay()J
    .locals 2

    .line 63
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 68
    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    .line 70
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "[acquired_permits_per_second: %f, max_permit_pool: %f, permit_fill_delay: %d]"

    .line 68
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 98
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mAcquiredPermitsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 99
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mMaxPermitPool:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 100
    iget-wide v0, p0, Landroid/car/settings/SpeedBumpConfiguration;->mPermitFillDelay:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
