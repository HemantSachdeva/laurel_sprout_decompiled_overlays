.class public final Lass;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Last;

    invoke-direct {v0}, Last;-><init>()V

    sput-object v0, Lass;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJ)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lass;->a:Ljava/lang/String;

    iput p2, p0, Lass;->b:I

    iput p3, p0, Lass;->c:I

    iput-wide p4, p0, Lass;->d:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lass;->a:Ljava/lang/String;

    .line 2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget v0, p0, Lass;->b:I

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v0, p0, Lass;->c:I

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-wide v0, p0, Lass;->d:J

    .line 5
    const/4 v2, 0x4

    invoke-static {p1, v2, v0, v1}, Lbjf;->a(Landroid/os/Parcel;IJ)V

    .line 6
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
