.class public final Ldyv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/util/List;

.field public static final b:Ldyv;

.field public static final c:Ldyv;

.field public static final d:Ldyv;

.field public static final e:Ldyv;

.field public static final f:Ldyv;

.field public static final g:Ldyv;

.field public static final h:Ldyv;

.field public static final i:Ldyv;

.field static final j:Ldxp;

.field static final k:Ldxp;

.field private static final o:Ldxs;


# instance fields
.field public final l:Ldys;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    new-instance v0, Ljava/util/TreeMap;

    .line 2
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    invoke-static {}, Ldys;->values()[Ldys;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    iget v6, v5, Ldys;->r:I

    .line 4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ldyv;

    .line 5
    const/4 v8, 0x0

    invoke-direct {v7, v5, v8, v8}, Ldyv;-><init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldyv;

    if-nez v6, :cond_0

    .line 6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, v6, Ldyv;->l:Ldys;

    .line 6
    invoke-virtual {v1}, Ldys;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ldys;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x22

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Code value duplication between "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " & "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ldyv;->a:Ljava/util/List;

    sget-object v0, Ldys;->a:Ldys;

    .line 8
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->b:Ldyv;

    sget-object v0, Ldys;->b:Ldys;

    .line 9
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->c:Ldyv;

    sget-object v0, Ldys;->c:Ldys;

    .line 10
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->d:Ldyv;

    sget-object v0, Ldys;->d:Ldys;

    .line 11
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->e:Ldys;

    .line 12
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->e:Ldyv;

    sget-object v0, Ldys;->f:Ldys;

    .line 13
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->g:Ldys;

    .line 14
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->h:Ldys;

    .line 15
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->q:Ldys;

    .line 16
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->f:Ldyv;

    sget-object v0, Ldys;->i:Ldys;

    .line 17
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->g:Ldyv;

    sget-object v0, Ldys;->j:Ldys;

    .line 18
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->k:Ldys;

    .line 19
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->l:Ldys;

    .line 20
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->m:Ldys;

    .line 21
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    sget-object v0, Ldys;->n:Ldys;

    .line 22
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->h:Ldyv;

    sget-object v0, Ldys;->o:Ldys;

    .line 23
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    move-result-object v0

    sput-object v0, Ldyv;->i:Ldyv;

    sget-object v0, Ldys;->p:Ldys;

    .line 24
    invoke-virtual {v0}, Ldys;->a()Ldyv;

    new-instance v0, Ldyt;

    invoke-direct {v0}, Ldyt;-><init>()V

    .line 25
    const-string v1, "grpc-status"

    invoke-static {v1, v3, v0}, Ldxp;->a(Ljava/lang/String;ZLdxs;)Ldxp;

    move-result-object v0

    sput-object v0, Ldyv;->j:Ldxp;

    .line 26
    new-instance v0, Ldyu;

    invoke-direct {v0}, Ldyu;-><init>()V

    sput-object v0, Ldyv;->o:Ldxs;

    .line 27
    const-string v1, "grpc-message"

    invoke-static {v1, v3, v0}, Ldxp;->a(Ljava/lang/String;ZLdxs;)Ldxp;

    move-result-object v0

    sput-object v0, Ldyv;->k:Ldxp;

    return-void
.end method

.method private constructor <init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "code"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Ldyv;->l:Ldys;

    iput-object p2, p0, Ldyv;->m:Ljava/lang/String;

    iput-object p3, p0, Ldyv;->n:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ldyv;
    .locals 2

    move-object v0, p0

    :goto_0
    if-eqz v0, :cond_2

    .line 37
    instance-of v1, v0, Ldyw;

    if-eqz v1, :cond_0

    .line 40
    check-cast v0, Ldyw;

    iget-object p0, v0, Ldyw;->a:Ldyv;

    return-object p0

    .line 38
    :cond_0
    instance-of v1, v0, Ldyx;

    if-eqz v1, :cond_1

    .line 41
    check-cast v0, Ldyx;

    iget-object p0, v0, Ldyx;->a:Ldyv;

    return-object p0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Ldyv;->d:Ldyv;

    .line 42
    invoke-virtual {v0, p0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object p0

    return-object p0
.end method

.method static a(Ldyv;)Ljava/lang/String;
    .locals 4

    .line 34
    iget-object v0, p0, Ldyv;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 35
    iget-object p0, p0, Ldyv;->l:Ldys;

    invoke-virtual {p0}, Ldys;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    iget-object v0, p0, Ldyv;->l:Ldys;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Ldyv;->m:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldyv;
    .locals 3

    iget-object v0, p0, Ldyv;->m:Ljava/lang/String;

    .line 53
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ldyv;

    iget-object v1, p0, Ldyv;->l:Ldys;

    iget-object v2, p0, Ldyv;->n:Ljava/lang/Throwable;

    .line 54
    invoke-direct {v0, v1, p1, v2}, Ldyv;-><init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final a(Ldxt;)Ldyx;
    .locals 1

    new-instance v0, Ldyx;

    .line 31
    invoke-direct {v0, p0, p1}, Ldyx;-><init>(Ldyv;Ldxt;)V

    return-object v0
.end method

.method public final a()Z
    .locals 2

    .line 43
    sget-object v0, Ldys;->a:Ldys;

    iget-object v1, p0, Ldyv;->l:Ldys;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Ljava/lang/String;)Ldyv;
    .locals 6

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ldyv;->m:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ldyv;

    iget-object v1, p0, Ldyv;->l:Ldys;

    iget-object v2, p0, Ldyv;->n:Ljava/lang/Throwable;

    .line 32
    invoke-direct {v0, v1, p1, v2}, Ldyv;-><init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    new-instance v1, Ldyv;

    iget-object v2, p0, Ldyv;->l:Ldys;

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ldyv;->n:Ljava/lang/Throwable;

    invoke-direct {v1, v2, p1, v0}, Ldyv;-><init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final b(Ljava/lang/Throwable;)Ldyv;
    .locals 3

    iget-object v0, p0, Ldyv;->n:Ljava/lang/Throwable;

    .line 51
    invoke-static {v0, p1}, Lcqt;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ldyv;

    iget-object v1, p0, Ldyv;->l:Ldys;

    iget-object v2, p0, Ldyv;->m:Ljava/lang/String;

    .line 52
    invoke-direct {v0, v1, v2, p1}, Ldyv;-><init>(Ldys;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final b()Ldyx;
    .locals 2

    new-instance v0, Ldyx;

    .line 30
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ldyx;-><init>(Ldyv;Ldxt;)V

    return-object v0
.end method

.method public final c()Ldyw;
    .locals 1

    new-instance v0, Ldyw;

    .line 29
    invoke-direct {v0, p0}, Ldyw;-><init>(Ldyv;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 44
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldyv;->l:Ldys;

    .line 45
    invoke-virtual {v1}, Ldys;->name()Ljava/lang/String;

    move-result-object v1

    .line 46
    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldyv;->m:Ljava/lang/String;

    .line 47
    const-string v2, "description"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldyv;->n:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 48
    invoke-static {v1}, Lcrr;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    nop

    .line 49
    const-string v2, "cause"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
