.class final Ldkw;
.super Ldkx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldkx;-><init>()V

    return-void
.end method

.method static c(Ljava/lang/Object;J)Ldkk;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Ldms;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldkk;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2

    .line 12
    invoke-static {p1, p2, p3}, Ldkw;->c(Ljava/lang/Object;J)Ldkk;

    move-result-object v0

    .line 13
    invoke-interface {v0}, Ldkk;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 14
    invoke-interface {v0}, Ldkk;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    .line 16
    :cond_0
    add-int/2addr v1, v1

    .line 15
    :goto_0
    invoke-interface {v0, v1}, Ldkk;->a(I)Ldkk;

    move-result-object v0

    .line 16
    invoke-static {p1, p2, p3, v0}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    :cond_1
    nop

    :goto_1
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4

    .line 4
    invoke-static {p1, p3, p4}, Ldkw;->c(Ljava/lang/Object;J)Ldkk;

    move-result-object v0

    .line 5
    invoke-static {p2, p3, p4}, Ldkw;->c(Ljava/lang/Object;J)Ldkk;

    move-result-object p2

    .line 6
    invoke-interface {v0}, Ldkk;->size()I

    move-result v1

    .line 7
    invoke-interface {p2}, Ldkk;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 8
    invoke-interface {v0}, Ldkk;->a()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 9
    invoke-interface {v0, v2}, Ldkk;->a(I)Ldkk;

    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0, p2}, Ldkk;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 11
    :goto_0
    invoke-static {p1, p3, p4, p2}, Ldms;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;J)V
    .locals 0

    .line 2
    invoke-static {p1, p2, p3}, Ldkw;->c(Ljava/lang/Object;J)Ldkk;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ldkk;->b()V

    return-void
.end method
