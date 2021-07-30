.class public final Lauc;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Z

.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Laud;

    invoke-direct {v0}, Laud;-><init>()V

    sput-object v0, Lauc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-boolean p1, p0, Lauc;->a:Z

    iput-boolean p2, p0, Lauc;->b:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-boolean v0, p0, Lauc;->a:Z

    .line 2
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Lauc;->b:Z

    .line 3
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;IZ)V

    .line 4
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
