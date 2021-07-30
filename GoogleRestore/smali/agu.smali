.class final synthetic Lagu;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Predicate;


# instance fields
.field private final a:Lagv;


# direct methods
.method public constructor <init>(Lagv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagu;->a:Lagv;

    return-void
.end method


# virtual methods
.method public final and(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$$CC;->and$$dflt$$(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final negate()Lj$/util/function/Predicate;
    .locals 1

    invoke-static {p0}, Lj$/util/function/Predicate$$CC;->negate$$dflt$$(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public final or(Lj$/util/function/Predicate;)Lj$/util/function/Predicate;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Predicate$$CC;->or$$dflt$$(Lj$/util/function/Predicate;Lj$/util/function/Predicate;)Lj$/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .locals 6

    iget-object v0, p0, Lagu;->a:Lagv;

    check-cast p1, Latw;

    iget v1, p1, Latw;->a:I

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, p1, Latw;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    and-int/lit16 v1, v1, 0x100

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lagv;->k:Lagf;

    iget-boolean v1, v1, Lagf;->g:Z

    if-eqz v1, :cond_1

    :goto_1
    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    invoke-static {p1}, Ladb;->a(Latw;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p1, v0, Lagv;->j:Lacw;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Valid unencrypted device %d."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Ladb;->b(Latw;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, v0, Lagv;->j:Lacw;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Valid encrypted device %d."

    invoke-virtual {p1, v1, v0}, Laqd;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object p1, v0, Lagv;->j:Lacw;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Invalid encrypted device %d: ineligible for key recovery."

    invoke-virtual {p1, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lagv;->j:Lacw;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Invalid device %d: it has no last_checkin_epoch."

    invoke-virtual {p1, v1, v0}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return v4
.end method
