.class final Lctc;
.super Lcsn;
.source "PG"


# static fields
.field public static final synthetic d:I


# instance fields
.field public final transient b:[Ljava/lang/Object;

.field public final transient c:I

.field private final transient e:Lcsl;

.field private final transient f:I


# direct methods
.method public constructor <init>(Lcsl;[Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcsn;-><init>()V

    iput-object p1, p0, Lctc;->e:Lcsl;

    iput-object p2, p0, Lctc;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lctc;->f:I

    iput p3, p0, Lctc;->c:I

    return-void
.end method

.method static synthetic a(Lctc;)V
    .locals 0

    iget p0, p0, Lctc;->f:I

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;I)I
    .locals 1

    .line 7
    invoke-virtual {p0}, Lcsn;->g()Lcsi;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcsd;->a([Ljava/lang/Object;I)I

    move-result p1

    return p1
.end method

.method public final a()Lctv;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcsn;->g()Lcsi;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcsi;->g()Lctw;

    move-result-object v0

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 3

    .line 2
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lctc;->e:Lcsl;

    .line 6
    invoke-virtual {v2, v0}, Lcsl;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcsi;
    .locals 1

    .line 8
    new-instance v0, Lctb;

    invoke-direct {v0, p0}, Lctb;-><init>(Lctc;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lctc;->a()Lctv;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lctc;->c:I

    return v0
.end method
