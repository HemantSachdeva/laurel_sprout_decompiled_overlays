.class public Ldjy;
.super Ldhh;
.source "PG"

# interfaces
.implements Ldlk;


# instance fields
.field public a:Ldkd;

.field public b:Z

.field private final c:Ldkd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lacq;->a:Lacq;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Ldkd;)V
    .locals 1

    invoke-direct {p0}, Ldhh;-><init>()V

    iput-object p1, p0, Ldjy;->c:Ldkd;

    .line 2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldkd;

    iput-object p1, p0, Ldjy;->a:Ldkd;

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldjy;->b:Z

    return-void
.end method

.method private static final a(Ldkd;Ldkd;)V
    .locals 1

    .line 19
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ldlw;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ldhh;
    .locals 1

    invoke-virtual {p0}, Ldjy;->d()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 76
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->g:Ldkk;

    .line 77
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final a(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 87
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 88
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-virtual {v0}, Lejh;->p()V

    iget-object v0, v0, Lejh;->l:Ldkk;

    .line 90
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(J)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 83
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget v1, v0, Lejh;->b:I

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    iput v1, v0, Lejh;->b:I

    iput-wide p1, v0, Lejh;->am:J

    return-void
.end method

.method protected final bridge synthetic a(Ldhi;)V
    .locals 0

    check-cast p1, Ldkd;

    invoke-virtual {p0, p1}, Ldjy;->a(Ldkd;)V

    return-void
.end method

.method public final a(Ldkd;)V
    .locals 1

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 13
    invoke-static {v0, p1}, Ldjy;->a(Ldkd;Ldkd;)V

    return-void
.end method

.method public final a(Lejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 92
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lejh;->an:Lejg;

    iget p1, v0, Lejh;->b:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Lejh;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Iterable;)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 21
    check-cast v0, Lejb;

    sget-object v1, Lejb;->e:Lejb;

    iget-object v1, v0, Lejb;->b:Ldkk;

    .line 22
    invoke-interface {v1}, Ldkk;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 23
    invoke-static {v1}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v1

    iput-object v1, v0, Lejb;->b:Ldkk;

    :cond_1
    iget-object v0, v0, Lejb;->b:Ldkk;

    .line 24
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic a([BILdjr;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Ldjy;->b([BILdjr;)V

    return-void
.end method

.method public final b(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 78
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->h:Ldkk;

    .line 79
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 10
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldkd;

    iget-object v1, p0, Ldjy;->a:Ldkd;

    .line 11
    invoke-static {v0, v1}, Ldjy;->a(Ldkd;Ldkd;)V

    iput-object v0, p0, Ldjy;->a:Ldkd;

    return-void
.end method

.method public final b(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 95
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 96
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 97
    invoke-virtual {v0}, Lejh;->q()V

    iget-object v0, v0, Lejh;->n:Ldkk;

    .line 98
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 85
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget v1, v0, Lejh;->b:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lejh;->b:I

    iput-wide p1, v0, Lejh;->aq:J

    return-void
.end method

.method public final b(Ljava/lang/Iterable;)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 26
    check-cast v0, Lejb;

    sget-object v1, Lejb;->e:Lejb;

    iget-object v1, v0, Lejb;->c:Ldkk;

    .line 27
    invoke-interface {v1}, Ldkk;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 28
    invoke-static {v1}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v1

    iput-object v1, v0, Lejb;->c:Ldkk;

    :cond_1
    iget-object v0, v0, Lejb;->c:Ldkk;

    .line 29
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final b([BILdjr;)V
    .locals 8

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    .line 15
    :cond_0
    :try_start_0
    sget-object v0, Ldls;->a:Ldls;

    .line 17
    iget-object v1, p0, Ldjy;->a:Ldkd;

    .line 15
    invoke-virtual {v0, v1}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v2

    iget-object v3, p0, Ldjy;->a:Ldkd;

    new-instance v7, Ldhn;

    invoke-direct {v7, p3}, Ldhn;-><init>(Ldjr;)V

    const/4 v5, 0x0

    move-object v4, p1

    move v6, p2

    invoke-interface/range {v2 .. v7}, Ldlw;->a(Ljava/lang/Object;[BIILdhn;)V
    :try_end_0
    .catch Ldkn; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 16
    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 17
    :catch_1
    move-exception p1

    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p1

    throw p1

    .line 16
    :catch_2
    move-exception p1

    .line 18
    throw p1
.end method

.method public final c(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 80
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->i:Ldkk;

    .line 81
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final c(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 100
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 101
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    invoke-virtual {v0}, Lejh;->o()V

    iget-object v0, v0, Lejh;->k:Ldkk;

    .line 103
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(J)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 105
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget v1, v0, Lejh;->b:I

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    iput v1, v0, Lejh;->b:I

    iput-wide p1, v0, Lejh;->ap:J

    return-void
.end method

.method public final c(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 31
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 32
    invoke-virtual {v0}, Lejh;->p()V

    iget-object v0, v0, Lejh;->l:Ldkk;

    .line 33
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldjy;->d()Ldjy;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ldjy;
    .locals 2

    iget-object v0, p0, Ldjy;->c:Ldkd;

    .line 8
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldjy;

    .line 9
    invoke-virtual {p0}, Ldjy;->e()Ldkd;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->a(Ldkd;)V

    return-object v0
.end method

.method public final d(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 74
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->j:Ldkk;

    .line 75
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final d(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 109
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-virtual {v0}, Lejh;->n()V

    iget-object v0, v0, Lejh;->j:Ldkk;

    .line 112
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d(J)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 107
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget v1, v0, Lejh;->b:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Lejh;->b:I

    iput-wide p1, v0, Lejh;->ao:J

    return-void
.end method

.method public final d(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 35
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 36
    invoke-virtual {v0}, Lejh;->q()V

    iget-object v0, v0, Lejh;->n:Ldkk;

    .line 37
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public e()Ldkd;
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldjy;->a:Ldkd;

    return-object v0

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 7
    sget-object v1, Ldls;->a:Ldls;

    invoke-virtual {v1, v0}, Ldls;->a(Ljava/lang/Object;)Ldlw;

    move-result-object v1

    invoke-interface {v1, v0}, Ldlw;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldjy;->b:Z

    iget-object v0, p0, Ldjy;->a:Ldkd;

    return-object v0
.end method

.method public final e(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 72
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->k:Ldkk;

    .line 73
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final e(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 114
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    invoke-virtual {v0}, Lejh;->e()V

    iget-object v0, v0, Lejh;->g:Ldkk;

    .line 117
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/Iterable;)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 39
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget-object v1, v0, Lejh;->q:Ldkk;

    .line 40
    invoke-interface {v1}, Ldkk;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 41
    invoke-static {v1}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v1

    iput-object v1, v0, Lejh;->q:Ldkk;

    :cond_1
    iget-object v0, v0, Lejh;->q:Ldkk;

    .line 42
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final f()Ldkd;
    .locals 2

    .line 3
    invoke-virtual {p0}, Ldjy;->e()Ldkd;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ldkd;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ldmi;

    .line 5
    invoke-direct {v0}, Ldmi;-><init>()V

    .line 6
    throw v0
.end method

.method public final f(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 68
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->l:Ldkk;

    .line 69
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final f(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 119
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    invoke-virtual {v0}, Lejh;->l()V

    iget-object v0, v0, Lejh;->h:Ldkk;

    .line 122
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(Ljava/lang/Iterable;)V
    .locals 3

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 44
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    iget-object v1, v0, Lejh;->p:Ldkk;

    .line 45
    invoke-interface {v1}, Ldkk;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    invoke-static {v1}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v1

    iput-object v1, v0, Lejh;->p:Ldkk;

    :cond_1
    iget-object v0, v0, Lejh;->p:Ldkk;

    .line 47
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic g()Ldlj;
    .locals 1

    invoke-virtual {p0}, Ldjy;->e()Ldkd;

    move-result-object v0

    return-object v0
.end method

.method public final g(I)Lejg;
    .locals 1

    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 70
    check-cast v0, Lejh;

    iget-object v0, v0, Lejh;->n:Ldkk;

    .line 71
    invoke-interface {v0, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lejg;

    return-object p1
.end method

.method public final g(ILejg;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 124
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 125
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    invoke-virtual {v0}, Lejh;->m()V

    iget-object v0, v0, Lejh;->i:Ldkk;

    .line 127
    invoke-interface {v0, p1, p2}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 49
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 50
    invoke-virtual {v0}, Lejh;->o()V

    iget-object v0, v0, Lejh;->k:Ldkk;

    .line 51
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic h()Ldlj;
    .locals 1

    invoke-virtual {p0}, Ldjy;->f()Ldkd;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 53
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 54
    invoke-virtual {v0}, Lejh;->n()V

    iget-object v0, v0, Lejh;->j:Ldkk;

    .line 55
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final bridge synthetic i()Ldlj;
    .locals 1

    iget-object v0, p0, Ldjy;->c:Ldkd;

    return-object v0
.end method

.method public final i(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 57
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 58
    invoke-virtual {v0}, Lejh;->e()V

    iget-object v0, v0, Lejh;->g:Ldkk;

    .line 59
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final j(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 61
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 62
    invoke-virtual {v0}, Lejh;->l()V

    iget-object v0, v0, Lejh;->h:Ldkk;

    .line 63
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public final k(Ljava/lang/Iterable;)V
    .locals 2

    iget-boolean v0, p0, Ldjy;->b:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldjy;->b:Z

    :cond_0
    iget-object v0, p0, Ldjy;->a:Ldkd;

    .line 65
    check-cast v0, Lejh;

    sget-object v1, Lejh;->ar:Lejh;

    .line 66
    invoke-virtual {v0}, Lejh;->m()V

    iget-object v0, v0, Lejh;->i:Ldkk;

    .line 67
    invoke-static {p1, v0}, Ldhh;->a(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method
