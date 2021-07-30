.class public final Lceh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Lcfj;

.field public final b:Lcfj;

.field public final c:Lcfj;

.field public final d:Lceg;

.field public final e:I

.field public final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcee;

    invoke-direct {v0}, Lcee;-><init>()V

    sput-object v0, Lceh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcfj;Lcfj;Lcfj;Lceg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lceh;->a:Lcfj;

    iput-object p2, p0, Lceh;->b:Lcfj;

    iput-object p3, p0, Lceh;->c:Lcfj;

    iput-object p4, p0, Lceh;->d:Lceg;

    .line 1
    invoke-virtual {p1, p3}, Lcfj;->a(Lcfj;)I

    move-result p4

    if-gtz p4, :cond_1

    .line 3
    invoke-virtual {p3, p2}, Lcfj;->a(Lcfj;)I

    move-result p3

    if-gtz p3, :cond_0

    .line 5
    invoke-virtual {p1, p2}, Lcfj;->b(Lcfj;)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lceh;->f:I

    .line 6
    iget p2, p2, Lcfj;->d:I

    iget p1, p1, Lcfj;->d:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lceh;->e:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 4
    const-string p2, "current Month cannot be after end Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 2
    const-string p2, "start Month cannot be after current Month"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 7
    :cond_0
    instance-of v1, p1, Lceh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 8
    :cond_1
    check-cast p1, Lceh;

    iget-object v1, p0, Lceh;->a:Lcfj;

    .line 9
    iget-object v3, p1, Lceh;->a:Lcfj;

    invoke-virtual {v1, v3}, Lcfj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lceh;->b:Lcfj;

    iget-object v3, p1, Lceh;->b:Lcfj;

    .line 10
    invoke-virtual {v1, v3}, Lcfj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lceh;->c:Lcfj;

    iget-object v3, p1, Lceh;->c:Lcfj;

    .line 11
    invoke-virtual {v1, v3}, Lcfj;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lceh;->d:Lceg;

    iget-object p1, p1, Lceh;->d:Lceg;

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lceh;->a:Lcfj;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lceh;->b:Lcfj;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lceh;->c:Lcfj;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lceh;->d:Lceg;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object p2, p0, Lceh;->a:Lcfj;

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lceh;->b:Lcfj;

    .line 15
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lceh;->c:Lcfj;

    .line 16
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p2, p0, Lceh;->d:Lceg;

    .line 17
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
