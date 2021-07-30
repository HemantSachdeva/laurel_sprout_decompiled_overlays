.class public final Lbnd;
.super Lbiy;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Long;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Lbnf;

.field private final g:Ljava/util/List;

.field private h:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbnc;

    invoke-direct {v0}, Lbnc;-><init>()V

    sput-object v0, Lbnd;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lbnf;)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput-object p1, p0, Lbnd;->a:Ljava/lang/String;

    iput-object p2, p0, Lbnd;->b:Ljava/lang/Long;

    iput-object p3, p0, Lbnd;->g:Ljava/util/List;

    iput-object p4, p0, Lbnd;->c:Ljava/lang/String;

    iput-object p5, p0, Lbnd;->d:Ljava/lang/Long;

    iput-object p6, p0, Lbnd;->e:Ljava/lang/Long;

    iput-object p7, p0, Lbnd;->f:Lbnf;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 5

    iget-object v0, p0, Lbnd;->h:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbnd;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lbnd;->h:Ljava/util/List;

    iget-object v0, p0, Lbnd;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 11
    check-cast v3, Lbnp;

    iget-object v4, p0, Lbnd;->h:Ljava/util/List;

    .line 12
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbnd;->h:Ljava/util/List;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lbnd;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    check-cast p1, Lbnd;

    iget-object v2, p0, Lbnd;->a:Ljava/lang/String;

    iget-object v3, p1, Lbnd;->a:Ljava/lang/String;

    .line 3
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnd;->b:Ljava/lang/Long;

    iget-object v3, p1, Lbnd;->b:Ljava/lang/Long;

    .line 4
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lbnd;->a()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lbnd;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnd;->c:Ljava/lang/String;

    iget-object v3, p1, Lbnd;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnd;->d:Ljava/lang/Long;

    iget-object v3, p1, Lbnd;->d:Ljava/lang/Long;

    .line 7
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnd;->e:Ljava/lang/Long;

    iget-object v3, p1, Lbnd;->e:Ljava/lang/Long;

    .line 8
    invoke-static {v2, v3}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lbnd;->f:Lbnf;

    iget-object p1, p1, Lbnd;->f:Lbnf;

    .line 9
    invoke-static {v2, p1}, Lbir;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lbnd;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnd;->b:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 13
    invoke-virtual {p0}, Lbnd;->a()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnd;->c:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnd;->d:Ljava/lang/Long;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnd;->e:Ljava/lang/Long;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lbnd;->f:Lbnf;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 15
    invoke-static {p1}, Lbjf;->a(Landroid/os/Parcel;)I

    move-result v0

    iget-object v1, p0, Lbnd;->a:Ljava/lang/String;

    .line 16
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 17
    invoke-virtual {p0}, Lbnd;->a()Ljava/util/List;

    move-result-object v1

    .line 18
    const/4 v2, 0x3

    invoke-static {p1, v2, v1}, Lbjf;->b(Landroid/os/Parcel;ILjava/util/List;)V

    iget-object v1, p0, Lbnd;->c:Ljava/lang/String;

    .line 19
    const/4 v2, 0x4

    invoke-static {p1, v2, v1, v3}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v1, p0, Lbnd;->d:Ljava/lang/Long;

    .line 20
    const/4 v2, 0x5

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Long;)V

    iget-object v1, p0, Lbnd;->e:Ljava/lang/Long;

    .line 21
    const/4 v2, 0x6

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Long;)V

    iget-object v1, p0, Lbnd;->b:Ljava/lang/Long;

    .line 22
    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lbjf;->a(Landroid/os/Parcel;ILjava/lang/Long;)V

    iget-object v1, p0, Lbnd;->f:Lbnf;

    .line 23
    const/16 v2, 0x8

    invoke-static {p1, v2, v1, p2}, Lbjf;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 24
    invoke-static {p1, v0}, Lbjf;->a(Landroid/os/Parcel;I)V

    return-void
.end method
