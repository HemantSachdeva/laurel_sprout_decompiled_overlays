.class final Lbva;
.super Lbvd;
.source "PG"


# static fields
.field public static final a:Lbva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbva;

    invoke-direct {v0}, Lbva;-><init>()V

    sput-object v0, Lbva;->a:Lbva;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldlj;Ldlj;)Ldlj;
    .locals 4

    check-cast p1, Leiz;

    check-cast p2, Leiz;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p1, Leiz;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    sget-object v1, Leiz;->d:Leiz;

    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-object v2, p1, Leiz;->c:Leja;

    if-nez v2, :cond_1

    sget-object v2, Leja;->d:Leja;

    :cond_1
    iget-boolean v3, v1, Ldjy;->b:Z

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ldjy;->b()V

    const/4 v3, 0x0

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_2
    iget-object v3, v1, Ldjy;->a:Ldkd;

    check-cast v3, Leiz;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v3, Leiz;->c:Leja;

    iget v2, v3, Leiz;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v3, Leiz;->a:I

    iget p1, p1, Leiz;->b:I

    iget p2, p2, Leiz;->b:I

    sub-int/2addr p1, p2

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    or-int/lit8 p2, v2, 0x1

    iput p2, v3, Leiz;->a:I

    iput p1, v3, Leiz;->b:I

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Leiz;

    return-object p1

    :cond_4
    :goto_0
    move-object p1, v0

    :cond_5
    :goto_1
    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ldlj;
    .locals 4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Leiz;->d:Leiz;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-boolean v1, v0, Ldjy;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_1
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Leiz;

    iget v3, v1, Leiz;->a:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Leiz;->a:I

    iput p2, v1, Leiz;->b:I

    if-eqz p1, :cond_3

    invoke-static {p1}, Lcne;->a(Ljava/lang/String;)Leja;

    move-result-object p1

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_2
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Leiz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Leiz;->c:Leja;

    iget p1, p2, Leiz;->a:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p2, Leiz;->a:I

    :cond_3
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Leiz;

    :goto_0
    return-object p1
.end method

.method public final bridge synthetic a(Ldlj;)Ljava/lang/String;
    .locals 0

    check-cast p1, Leiz;

    iget-object p1, p1, Leiz;->c:Leja;

    if-nez p1, :cond_0

    sget-object p1, Leja;->d:Leja;

    :cond_0
    iget-object p1, p1, Leja;->c:Ljava/lang/String;

    return-object p1
.end method
