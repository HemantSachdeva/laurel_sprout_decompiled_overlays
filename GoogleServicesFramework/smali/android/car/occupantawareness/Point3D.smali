.class public final Landroid/car/occupantawareness/Point3D;
.super Ljava/lang/Object;
.source "Point3D.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/occupantawareness/Point3D;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final x:D

.field public final y:D

.field public final z:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Landroid/car/occupantawareness/Point3D$1;

    invoke-direct {v0}, Landroid/car/occupantawareness/Point3D$1;-><init>()V

    sput-object v0, Landroid/car/occupantawareness/Point3D;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/occupantawareness/Point3D;->x:D

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/occupantawareness/Point3D;->y:D

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/occupantawareness/Point3D;->z:D

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/occupantawareness/Point3D$1;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/Point3D;-><init>(Landroid/os/Parcel;)V

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

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    iget-wide v1, p0, Landroid/car/occupantawareness/Point3D;->x:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/occupantawareness/Point3D;->y:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Landroid/car/occupantawareness/Point3D;->z:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const-string p0, "%f, %f, %f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 51
    iget-wide v0, p0, Landroid/car/occupantawareness/Point3D;->x:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 52
    iget-wide v0, p0, Landroid/car/occupantawareness/Point3D;->y:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 53
    iget-wide v0, p0, Landroid/car/occupantawareness/Point3D;->z:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
