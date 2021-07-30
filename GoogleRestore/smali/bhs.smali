.class public final Lbhs;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lbiw;

.field public final b:Z

.field public final c:Z

.field public final d:[I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbht;

    invoke-direct {v0}, Lbht;-><init>()V

    sput-object v0, Lbhs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lbiw;ZZ[II)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbhs;->a:Lbiw;

    iput-boolean p2, p0, Lbhs;->b:Z

    iput-boolean p3, p0, Lbhs;->c:Z

    iput-object p4, p0, Lbhs;->d:[I

    iput p5, p0, Lbhs;->e:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbhs;->a:Lbiw;

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-boolean p2, p0, Lbhs;->b:Z

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-boolean p2, p0, Lbhs;->c:Z

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-object p2, p0, Lbhs;->d:[I

    .line 5
    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[I)V

    iget p2, p0, Lbhs;->e:I

    .line 6
    const/4 v1, 0x5

    invoke-static {p1, v1, p2}, Lbjf;->b(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
