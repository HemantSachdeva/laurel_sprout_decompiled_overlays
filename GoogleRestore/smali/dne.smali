.class public final Ldne;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ldmj;
    .locals 0

    .line 19
    check-cast p0, Ldkd;

    iget-object p0, p0, Ldkd;->s:Ldmj;

    return-object p0
.end method

.method public static a(Ldlj;)Ldnd;
    .locals 2

    new-instance v0, Ldnd;

    .line 22
    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ldnd;-><init>([BLdlj;)V

    return-object v0
.end method

.method public static bridge synthetic a(Ljava/lang/Object;IJ)V
    .locals 1

    check-cast p0, Ldmj;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Ldnb;->a(II)I

    move-result p1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ldmj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/Object;ILdib;)V
    .locals 1

    check-cast p0, Ldmj;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Ldnb;->a(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Ldmj;->a(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Ldmj;)V
    .locals 0

    .line 21
    check-cast p0, Ldkd;

    iput-object p1, p0, Ldkd;->s:Ldmj;

    return-void
.end method

.method public static bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ldmj;

    invoke-static {p0, p1}, Ldne;->a(Ljava/lang/Object;Ldmj;)V

    return-void
.end method

.method public static bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {p0}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object v0

    sget-object v1, Ldmj;->a:Ldmj;

    if-ne v0, v1, :cond_0

    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v0

    invoke-static {p0, v0}, Ldne;->a(Ljava/lang/Object;Ldmj;)V

    :cond_0
    return-object v0
.end method

.method public static c(Ljava/lang/Object;)V
    .locals 0

    .line 20
    invoke-static {p0}, Ldne;->a(Ljava/lang/Object;)Ldmj;

    move-result-object p0

    invoke-virtual {p0}, Ldmj;->b()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ldlv;)Z
    .locals 7

    .line 1
    invoke-interface {p2}, Ldlv;->b()I

    move-result v0

    invoke-static {v0}, Ldnb;->b(I)I

    move-result v1

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 10
    invoke-interface {p2}, Ldlv;->j()I

    move-result p2

    .line 11
    check-cast p1, Ldmj;

    invoke-static {v1, v3}, Ldnb;->a(II)I

    move-result v0

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ldmj;->a(ILjava/lang/Object;)V

    return v2

    .line 18
    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 12
    :cond_1
    const/4 p1, 0x0

    return p1

    .line 1
    :cond_2
    invoke-static {v1, v3}, Ldnb;->a(II)I

    move-result v0

    .line 2
    invoke-static {}, Ldmj;->a()Ldmj;

    move-result-object v3

    .line 3
    :cond_3
    invoke-interface {p2}, Ldlv;->a()I

    move-result v5

    const v6, 0x7fffffff

    if-eq v5, v6, :cond_4

    .line 4
    invoke-virtual {p0, v3, p2}, Ldne;->a(Ljava/lang/Object;Ldlv;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 5
    :cond_4
    invoke-interface {p2}, Ldlv;->b()I

    move-result p2

    if-ne v0, p2, :cond_5

    .line 6
    invoke-virtual {v3}, Ldmj;->b()V

    .line 7
    check-cast p1, Ldmj;

    invoke-static {v1, v4}, Ldnb;->a(II)I

    move-result p2

    .line 8
    invoke-virtual {p1, p2, v3}, Ldmj;->a(ILjava/lang/Object;)V

    return v2

    .line 9
    :cond_5
    invoke-static {}, Ldkn;->e()Ldkn;

    move-result-object p1

    throw p1

    .line 13
    :cond_6
    invoke-interface {p2}, Ldlv;->n()Ldib;

    move-result-object p2

    invoke-static {p1, v1, p2}, Ldne;->a(Ljava/lang/Object;ILdib;)V

    return v2

    .line 14
    :cond_7
    invoke-interface {p2}, Ldlv;->i()J

    move-result-wide v3

    .line 15
    check-cast p1, Ldmj;

    invoke-static {v1, v2}, Ldnb;->a(II)I

    move-result p2

    .line 16
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ldmj;->a(ILjava/lang/Object;)V

    return v2

    .line 17
    :cond_8
    invoke-interface {p2}, Ldlv;->g()J

    move-result-wide v3

    invoke-static {p1, v1, v3, v4}, Ldne;->a(Ljava/lang/Object;IJ)V

    return v2
.end method
