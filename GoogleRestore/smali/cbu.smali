.class final Lcbu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcbw;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldli;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ldjy;

    iget-object p1, p1, Ldjy;->a:Ldkd;

    check-cast p1, Leix;

    iget-object p1, p1, Leix;->d:Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic a(Ldli;Ljava/lang/Long;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    check-cast p1, Ldjy;

    iget-boolean p2, p1, Ldjy;->b:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v0, p1, Ldjy;->b:Z

    :cond_0
    iget-object p1, p1, Ldjy;->a:Ldkd;

    check-cast p1, Leix;

    sget-object p2, Leix;->k:Leix;

    iget p2, p1, Leix;->a:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p1, Leix;->a:I

    iput-wide v1, p1, Leix;->c:J

    return-void

    :cond_1
    check-cast p1, Ldjy;

    iget-boolean p2, p1, Ldjy;->b:Z

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ldjy;->b()V

    iput-boolean v0, p1, Ldjy;->b:Z

    :cond_2
    iget-object p1, p1, Ldjy;->a:Ldkd;

    check-cast p1, Leix;

    sget-object p2, Leix;->k:Leix;

    iget p2, p1, Leix;->a:I

    and-int/lit8 p2, p2, -0x3

    iput p2, p1, Leix;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Leix;->c:J

    return-void
.end method

.method public final bridge synthetic b(Ldli;)Ljava/lang/String;
    .locals 0

    check-cast p1, Ldjy;

    iget-object p1, p1, Ldjy;->a:Ldkd;

    check-cast p1, Leix;

    iget-object p1, p1, Leix;->e:Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic c(Ldli;)V
    .locals 1

    check-cast p1, Ldjy;

    iget-boolean v0, p1, Ldjy;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldjy;->b:Z

    :cond_0
    iget-object p1, p1, Ldjy;->a:Ldkd;

    check-cast p1, Leix;

    sget-object v0, Leix;->k:Leix;

    iget v0, p1, Leix;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p1, Leix;->a:I

    sget-object v0, Leix;->k:Leix;

    iget-object v0, v0, Leix;->d:Ljava/lang/String;

    iput-object v0, p1, Leix;->d:Ljava/lang/String;

    return-void
.end method
