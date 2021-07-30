.class public final Lbnl;
.super Lbiy;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field private final c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbnk;

    invoke-direct {v0}, Lbnk;-><init>()V

    sput-object v0, Lbnl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbnl;->a:Ljava/lang/String;

    iput-object p2, p0, Lbnl;->b:Ljava/util/List;

    iput-object p3, p0, Lbnl;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lbnl;->d:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnl;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lbnl;->d:Ljava/util/List;

    iget-object v0, p0, Lbnl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Lbnh;

    iget-object v4, p0, Lbnl;->d:Ljava/util/List;

    .line 8
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbnl;->d:Ljava/util/List;

    return-object v0
.end method

.method public final b()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lbnl;->e:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnl;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lbnl;->e:Ljava/util/List;

    iget-object v0, p0, Lbnl;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lbnj;

    iget-object v4, p0, Lbnl;->e:Ljava/util/List;

    .line 11
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbnl;->e:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lbnl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lbnl;

    iget-object v2, p0, Lbnl;->a:Ljava/lang/String;

    iget-object v3, p1, Lbnl;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {p0}, Lbnl;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lbnl;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lbnl;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lbnl;->b()Ljava/util/List;

    move-result-object p1

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

    iget-object v1, p0, Lbnl;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 12
    invoke-virtual {p0}, Lbnl;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lbnl;->b()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 14
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Lbnl;->a:Ljava/lang/String;

    .line 15
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    invoke-virtual {p0}, Lbnl;->a()Ljava/util/List;

    move-result-object v0

    .line 17
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;ILjava/util/List;)V

    .line 18
    invoke-virtual {p0}, Lbnl;->b()Ljava/util/List;

    move-result-object v0

    .line 19
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lbjf;->b(Landroid/os/Parcel;ILjava/util/List;)V

    .line 20
    invoke-static {p1, p2}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
