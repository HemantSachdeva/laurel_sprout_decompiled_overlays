.class public final Lbhq;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Landroid/os/Bundle;

.field b:[Lbdv;

.field c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbhr;

    invoke-direct {v0}, Lbhr;-><init>()V

    sput-object v0, Lbhq;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lbiy;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;[Lbdv;I)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbhq;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lbhq;->b:[Lbdv;

    iput p3, p0, Lbhq;->c:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 2
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbhq;->a:Landroid/os/Bundle;

    .line 3
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Bundle;)V

    iget-object v1, p0, Lbhq;->b:[Lbdv;

    .line 4
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    iget p2, p0, Lbhq;->c:I

    .line 5
    const/4 v1, 0x3

    invoke-static {p1, v1, p2}, Lbjf;->b(Landroid/os/Parcel;II)V

    .line 6
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
