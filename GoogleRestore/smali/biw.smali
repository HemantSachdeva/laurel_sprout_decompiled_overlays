.class public final Lbiw;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbix;

    invoke-direct {v0}, Lbix;-><init>()V

    sput-object v0, Lbiw;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZZII)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput p1, p0, Lbiw;->a:I

    iput-boolean p2, p0, Lbiw;->b:Z

    iput-boolean p3, p0, Lbiw;->c:Z

    iput p4, p0, Lbiw;->d:I

    iput p5, p0, Lbiw;->e:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lbiw;->a:I

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-boolean v0, p0, Lbiw;->b:Z

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lbiw;->c:Z

    .line 4
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget v0, p0, Lbiw;->d:I

    .line 5
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v0, p0, Lbiw;->e:I

    .line 6
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;II)V

    .line 7
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
