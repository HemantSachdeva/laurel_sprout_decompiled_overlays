.class public final Ldbi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I

.field private final b:Ljava/util/Set;

.field private final c:Ljava/util/Set;

.field private d:I

.field private e:Ldbl;

.field private f:Ljava/util/Set;


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 3
    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    .line 1
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ldbi;->b:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    .line 2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ldbi;->c:Ljava/util/Set;

    const/4 v1, 0x0

    iput v1, p0, Ldbi;->d:I

    iput v1, p0, Ldbi;->a:I

    new-instance v2, Ljava/util/HashSet;

    .line 3
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ldbi;->f:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    array-length p1, p2

    :goto_0
    if-ge v1, p1, :cond_0

    .line 5
    aget-object v0, p2, v1

    .line 6
    const-string v2, "Null interface"

    invoke-static {v0, v2}, Ldda;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldbi;->b:Ljava/util/Set;

    .line 7
    invoke-static {p1, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final a()Ldbj;
    .locals 9

    iget-object v0, p0, Ldbi;->e:Ldbl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, "Missing required property: factory."

    invoke-static {v0, v1}, Ldda;->a(ZLjava/lang/String;)V

    new-instance v0, Ldbj;

    new-instance v3, Ljava/util/HashSet;

    iget-object v1, p0, Ldbi;->b:Ljava/util/Set;

    .line 12
    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/HashSet;

    iget-object v1, p0, Ldbi;->c:Ljava/util/Set;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v5, p0, Ldbi;->d:I

    iget v6, p0, Ldbi;->a:I

    iget-object v7, p0, Ldbi;->e:Ldbl;

    iget-object v8, p0, Ldbi;->f:Ljava/util/Set;

    .line 13
    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Ldbj;-><init>(Ljava/util/Set;Ljava/util/Set;IILdbl;Ljava/util/Set;)V

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    iget v0, p0, Ldbi;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Instantiation type has already been set."

    invoke-static {v0, v1}, Ldda;->a(ZLjava/lang/String;)V

    iput p1, p0, Ldbi;->d:I

    return-void
.end method

.method public final a(Ldbl;)V
    .locals 1

    .line 14
    const-string v0, "Null factory"

    invoke-static {p1, v0}, Ldda;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldbi;->e:Ldbl;

    return-void
.end method

.method public final a(Ldbt;)V
    .locals 2

    iget-object v0, p1, Ldbt;->a:Ljava/lang/Class;

    iget-object v1, p0, Ldbi;->b:Ljava/util/Set;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Ldbi;->c:Ljava/util/Set;

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Components are not allowed to depend on interfaces they themselves provide."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
