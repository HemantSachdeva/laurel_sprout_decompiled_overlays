.class public final Lboh;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field public final b:Lbds;

.field public final c:Lbiu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lboi;

    invoke-direct {v0}, Lboi;-><init>()V

    sput-object v0, Lboh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILbds;Lbiu;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput p1, p0, Lboh;->a:I

    iput-object p2, p0, Lboh;->b:Lbds;

    iput-object p3, p0, Lboh;->c:Lbiu;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Lboh;->a:I

    .line 2
    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;II)V

    iget-object v1, p0, Lboh;->b:Lbds;

    .line 3
    const/4 v2, 0x2

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object v1, p0, Lboh;->c:Lbiu;

    .line 4
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 5
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
