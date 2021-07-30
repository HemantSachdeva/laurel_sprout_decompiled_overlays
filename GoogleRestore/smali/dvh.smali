.class public final Ldvh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ldvh;


# instance fields
.field public b:Ldwc;

.field public c:Ljava/util/concurrent/Executor;

.field public d:Ljava/util/List;

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Integer;

.field public g:Ljava/lang/Integer;

.field public h:Ldvo;

.field private i:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ldvh;

    .line 1
    invoke-direct {v0}, Ldvh;-><init>()V

    sput-object v0, Ldvh;->a:Ldvh;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldvh;->d:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Ldvh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ldvh;->d:Ljava/util/List;

    iget-object v0, p1, Ldvh;->b:Ldwc;

    iput-object v0, p0, Ldvh;->b:Ldwc;

    iget-object v0, p1, Ldvh;->h:Ldvo;

    iput-object v0, p0, Ldvh;->h:Ldvo;

    iget-object v0, p1, Ldvh;->c:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Ldvh;->c:Ljava/util/concurrent/Executor;

    iget-object v0, p1, Ldvh;->i:[[Ljava/lang/Object;

    iput-object v0, p0, Ldvh;->i:[[Ljava/lang/Object;

    iget-object v0, p1, Ldvh;->e:Ljava/lang/Boolean;

    iput-object v0, p0, Ldvh;->e:Ljava/lang/Boolean;

    iget-object v0, p1, Ldvh;->f:Ljava/lang/Integer;

    iput-object v0, p0, Ldvh;->f:Ljava/lang/Integer;

    iget-object v0, p1, Ldvh;->g:Ljava/lang/Integer;

    iput-object v0, p0, Ldvh;->g:Ljava/lang/Integer;

    iget-object p1, p1, Ldvh;->d:Ljava/util/List;

    iput-object p1, p0, Ldvh;->d:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public final a(I)Ldvh;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-static {v0, p1}, Lcrj;->a(ZI)V

    new-instance v0, Ldvh;

    .line 25
    invoke-direct {v0, p0}, Ldvh;-><init>(Ldvh;)V

    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Ldvh;->f:Ljava/lang/Integer;

    return-object v0
.end method

.method public final a(Ldvg;Ljava/lang/Object;)Ldvh;
    .locals 9

    .line 30
    const-string v0, "key"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 31
    const-string v0, "value"

    invoke-static {p2, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ldvh;

    .line 32
    invoke-direct {v0, p0}, Ldvh;-><init>(Ldvh;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 33
    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    .line 34
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 34
    :goto_1
    iget-object v3, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 35
    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    .line 38
    :cond_2
    const/4 v6, 0x0

    .line 35
    :goto_2
    add-int/2addr v3, v6

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v4

    aput v3, v7, v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, v0, Ldvh;->i:[[Ljava/lang/Object;

    iget-object v7, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 36
    array-length v8, v7

    invoke-static {v7, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    iget-object v2, v0, Ldvh;->i:[[Ljava/lang/Object;

    iget-object v3, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 37
    array-length v3, v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v2, v3

    goto :goto_3

    :cond_3
    iget-object v3, v0, Ldvh;->i:[[Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    .line 38
    aput-object v5, v3, v2

    .line 37
    :goto_3
    return-object v0
.end method

.method public final a(Ldvg;)Ljava/lang/Object;
    .locals 4

    .line 4
    const-string v0, "key"

    invoke-static {p1, v0}, Lcrj;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 5
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 6
    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 8
    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p1, Ldvg;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()Z
    .locals 2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Ldvh;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(I)Ldvh;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    invoke-static {v0, p1}, Lcrj;->a(ZI)V

    new-instance v0, Ldvh;

    .line 28
    invoke-direct {v0, p0}, Ldvh;-><init>(Ldvh;)V

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Ldvh;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 10
    invoke-static {p0}, Lcqt;->a(Ljava/lang/Object;)Lcqs;

    move-result-object v0

    iget-object v1, p0, Ldvh;->b:Ldwc;

    .line 11
    const-string v2, "deadline"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    const-string v1, "authority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvh;->h:Ldvo;

    .line 13
    const-string v3, "callCredentials"

    invoke-virtual {v0, v3, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvh;->c:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v2

    .line 14
    :goto_0
    nop

    .line 15
    const-string v3, "executor"

    invoke-virtual {v0, v3, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    const-string v1, "compressorName"

    invoke-virtual {v0, v1, v2}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvh;->i:[[Ljava/lang/Object;

    .line 17
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 18
    const-string v2, "customOptions"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {p0}, Ldvh;->a()Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Z)V

    iget-object v1, p0, Ldvh;->f:Ljava/lang/Integer;

    .line 20
    const-string v2, "maxInboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvh;->g:Ljava/lang/Integer;

    .line 21
    const-string v2, "maxOutboundMessageSize"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ldvh;->d:Ljava/util/List;

    .line 22
    const-string v2, "streamTracerFactories"

    invoke-virtual {v0, v2, v1}, Lcqs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v0}, Lcqs;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
