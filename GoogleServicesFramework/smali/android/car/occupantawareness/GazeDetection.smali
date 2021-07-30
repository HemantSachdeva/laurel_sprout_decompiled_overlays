.class public final Landroid/car/occupantawareness/GazeDetection;
.super Ljava/lang/Object;
.source "GazeDetection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/occupantawareness/GazeDetection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final confidenceLevel:I

.field public final durationOnTargetMillis:J

.field public final gazeAngleUnitVector:Landroid/car/occupantawareness/Point3D;

.field public final gazeTarget:I

.field public final headAngleUnitVector:Landroid/car/occupantawareness/Point3D;

.field public final leftEyePosition:Landroid/car/occupantawareness/Point3D;

.field public final rightEyePosition:Landroid/car/occupantawareness/Point3D;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 176
    new-instance v0, Landroid/car/occupantawareness/GazeDetection$1;

    invoke-direct {v0}, Landroid/car/occupantawareness/GazeDetection$1;-><init>()V

    sput-object v0, Landroid/car/occupantawareness/GazeDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/occupantawareness/GazeDetection;->confidenceLevel:I

    .line 189
    const-class v0, Landroid/car/occupantawareness/Point3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/occupantawareness/Point3D;

    iput-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->leftEyePosition:Landroid/car/occupantawareness/Point3D;

    .line 190
    const-class v0, Landroid/car/occupantawareness/Point3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/occupantawareness/Point3D;

    iput-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->rightEyePosition:Landroid/car/occupantawareness/Point3D;

    .line 191
    const-class v0, Landroid/car/occupantawareness/Point3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/occupantawareness/Point3D;

    iput-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->headAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    .line 192
    const-class v0, Landroid/car/occupantawareness/Point3D;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/car/occupantawareness/Point3D;

    iput-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->gazeAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/occupantawareness/GazeDetection;->gazeTarget:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/occupantawareness/GazeDetection;->durationOnTargetMillis:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/occupantawareness/GazeDetection$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/GazeDetection;-><init>(Landroid/os/Parcel;)V

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

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GazeDetection{confidenceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/occupantawareness/GazeDetection;->confidenceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", leftEyePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Landroid/car/occupantawareness/GazeDetection;->leftEyePosition:Landroid/car/occupantawareness/Point3D;

    const-string v2, "(null)"

    if-nez v1, :cond_0

    move-object v1, v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rightEyePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Landroid/car/occupantawareness/GazeDetection;->rightEyePosition:Landroid/car/occupantawareness/Point3D;

    if-nez v1, :cond_1

    move-object v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headAngleUnitVector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    iget-object v1, p0, Landroid/car/occupantawareness/GazeDetection;->headAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    if-nez v1, :cond_2

    move-object v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gazeAngleUnitVector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Landroid/car/occupantawareness/GazeDetection;->gazeAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gazeTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/occupantawareness/GazeDetection;->gazeTarget:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", durationOnTargetMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/car/occupantawareness/GazeDetection;->durationOnTargetMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 152
    iget v0, p0, Landroid/car/occupantawareness/GazeDetection;->confidenceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->leftEyePosition:Landroid/car/occupantawareness/Point3D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->rightEyePosition:Landroid/car/occupantawareness/Point3D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 155
    iget-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->headAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    iget-object v0, p0, Landroid/car/occupantawareness/GazeDetection;->gazeAngleUnitVector:Landroid/car/occupantawareness/Point3D;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget p2, p0, Landroid/car/occupantawareness/GazeDetection;->gazeTarget:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-wide v0, p0, Landroid/car/occupantawareness/GazeDetection;->durationOnTargetMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
