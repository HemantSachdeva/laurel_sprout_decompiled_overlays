.class public final Lbny;
.super Lbiy;
.source "PG"

# interfaces
.implements Lbey;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public b:I

.field public c:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbnz;

    invoke-direct {v0}, Lbnz;-><init>()V

    sput-object v0, Lbny;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbny;-><init>(IILandroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput p1, p0, Lbny;->a:I

    iput p2, p0, Lbny;->b:I

    iput-object p3, p0, Lbny;->c:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 2
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lbny;->a:I

    .line 3
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget v1, p0, Lbny;->b:I

    .line 4
    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lbny;->c:Landroid/content/Intent;

    .line 5
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 6
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
