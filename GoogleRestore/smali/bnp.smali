.class public final Lbnp;
.super Lbiy;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Integer;

.field public final c:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbno;

    invoke-direct {v0}, Lbno;-><init>()V

    sput-object v0, Lbnp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbnp;->a:Ljava/lang/String;

    iput-object p2, p0, Lbnp;->b:Ljava/lang/Integer;

    iput-object p3, p0, Lbnp;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lbnp;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lbnp;

    iget-object v2, p0, Lbnp;->a:Ljava/lang/String;

    iget-object v3, p1, Lbnp;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnp;->b:Ljava/lang/Integer;

    iget-object v3, p1, Lbnp;->b:Ljava/lang/Integer;

    .line 4
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnp;->c:Ljava/lang/Integer;

    iget-object p1, p1, Lbnp;->c:Ljava/lang/Integer;

    .line 5
    invoke-static {v2, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbnp;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnp;->b:Ljava/lang/Integer;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnp;->c:Ljava/lang/Integer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 7
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbnp;->a:Ljava/lang/String;

    .line 8
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lbnp;->b:Ljava/lang/Integer;

    .line 9
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    iget-object v0, p0, Lbnp;->c:Ljava/lang/Integer;

    .line 10
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Integer;)V

    .line 11
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
