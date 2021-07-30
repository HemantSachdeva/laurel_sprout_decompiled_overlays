.class public final Landroid/car/occupantawareness/OccupantAwarenessDetection;
.super Ljava/lang/Object;
.source "OccupantAwarenessDetection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/occupantawareness/OccupantAwarenessDetection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final driverMonitoringDetection:Landroid/car/occupantawareness/DriverMonitoringDetection;

.field public final gazeDetection:Landroid/car/occupantawareness/GazeDetection;

.field public final isPresent:Z

.field public final role:I

.field public final timestampMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 208
    new-instance v0, Landroid/car/occupantawareness/OccupantAwarenessDetection$1;

    invoke-direct {v0}, Landroid/car/occupantawareness/OccupantAwarenessDetection$1;-><init>()V

    sput-object v0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->role:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->timestampMillis:J

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->isPresent:Z

    .line 223
    const-class v0, Landroid/car/occupantawareness/GazeDetection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/occupantawareness/GazeDetection;

    iput-object v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->gazeDetection:Landroid/car/occupantawareness/GazeDetection;

    .line 224
    const-class v0, Landroid/car/occupantawareness/DriverMonitoringDetection;

    .line 225
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/car/occupantawareness/DriverMonitoringDetection;

    iput-object p1, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->driverMonitoringDetection:Landroid/car/occupantawareness/DriverMonitoringDetection;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/occupantawareness/OccupantAwarenessDetection$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/OccupantAwarenessDetection;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OccupantAwarenessDetection{role="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->role:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timestampMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->timestampMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isPresent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->isPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", gazeDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->gazeDetection:Landroid/car/occupantawareness/GazeDetection;

    const-string v2, "(null)"

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/car/occupantawareness/GazeDetection;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", driverMonitoringDetection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object p0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->driverMonitoringDetection:Landroid/car/occupantawareness/DriverMonitoringDetection;

    if-nez p0, :cond_1

    goto :goto_1

    .line 204
    :cond_1
    invoke-virtual {p0}, Landroid/car/occupantawareness/DriverMonitoringDetection;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 187
    iget v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->role:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-wide v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->timestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-boolean v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->isPresent:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 190
    iget-object v0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->gazeDetection:Landroid/car/occupantawareness/GazeDetection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget-object p0, p0, Landroid/car/occupantawareness/OccupantAwarenessDetection;->driverMonitoringDetection:Landroid/car/occupantawareness/DriverMonitoringDetection;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
