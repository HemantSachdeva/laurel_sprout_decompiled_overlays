.class public final Lbnn;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbnm;

    invoke-direct {v0}, Lbnm;-><init>()V

    sput-object v0, Lbnn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbnn;->a:Ljava/lang/String;

    iput-object p2, p0, Lbnn;->b:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lbnn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lbnn;

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    iget-object v2, p1, Lbnn;->a:Ljava/lang/String;

    iget-object v3, p0, Lbnn;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p1, p1, Lbnn;->b:Ljava/lang/Long;

    iget-object v2, p0, Lbnn;->b:Ljava/lang/Long;

    .line 4
    invoke-static {p1, v2}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbnn;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnn;->b:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 5
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 6
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbnn;->a:Ljava/lang/String;

    .line 7
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lbnn;->b:Ljava/lang/Long;

    .line 8
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Long;)V

    .line 9
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
