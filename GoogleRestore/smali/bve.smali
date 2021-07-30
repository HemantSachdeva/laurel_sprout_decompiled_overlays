.class final Lbve;
.super Lbvd;
.source "PG"


# static fields
.field public static final a:Lbve;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbve;

    invoke-direct {v0}, Lbve;-><init>()V

    sput-object v0, Lbve;->a:Lbve;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldlj;Ldlj;)Ldlj;
    .locals 5

    check-cast p1, Leje;

    check-cast p2, Leje;

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    sget-object v0, Leje;->e:Leje;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget v1, p1, Leje;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p1, Leje;->b:I

    iget v3, p2, Leje;->b:I

    sub-int/2addr v1, v3

    if-eqz v1, :cond_1

    iget-boolean v3, v0, Ldjy;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_0
    iget-object v3, v0, Ldjy;->a:Ldkd;

    check-cast v3, Leje;

    iget v4, v3, Leje;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Leje;->a:I

    iput v1, v3, Leje;->b:I

    :cond_1
    iget v1, p1, Leje;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget v1, p1, Leje;->c:I

    iget p2, p2, Leje;->c:I

    sub-int/2addr v1, p2

    if-eqz v1, :cond_3

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_2
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Leje;

    iget v3, p2, Leje;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p2, Leje;->a:I

    iput v1, p2, Leje;->c:I

    :cond_3
    iget-object p1, p1, Leje;->d:Leja;

    if-nez p1, :cond_4

    sget-object p1, Leja;->d:Leja;

    :cond_4
    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_5
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Leje;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Leje;->d:Leja;

    iget p1, p2, Leje;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Leje;->a:I

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Leje;

    invoke-static {p1}, Lcne;->a(Leje;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ldlj;
    .locals 5

    check-cast p2, Landroid/os/health/HealthStats;

    sget-object v0, Leje;->e:Leje;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    const v1, 0xc351

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    long-to-int v2, v1

    const/4 v1, 0x0

    if-eqz v2, :cond_1

    iget-boolean v3, v0, Ldjy;->b:Z

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_0
    iget-object v3, v0, Ldjy;->a:Ldkd;

    check-cast v3, Leje;

    iget v4, v3, Leje;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Leje;->a:I

    iput v2, v3, Leje;->b:I

    :cond_1
    const v2, 0xc352

    invoke-static {p2, v2}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v2

    long-to-int p2, v2

    if-eqz p2, :cond_3

    iget-boolean v2, v0, Ldjy;->b:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_2
    iget-object v2, v0, Ldjy;->a:Ldkd;

    check-cast v2, Leje;

    iget v3, v2, Leje;->a:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Leje;->a:I

    iput p2, v2, Leje;->c:I

    :cond_3
    if-eqz p1, :cond_5

    invoke-static {p1}, Lcne;->a(Ljava/lang/String;)Leja;

    move-result-object p1

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_4
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Leje;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Leje;->d:Leja;

    iget p1, p2, Leje;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p2, Leje;->a:I

    :cond_5
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Leje;

    invoke-static {p1}, Lcne;->a(Leje;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    :cond_6
    return-object p1
.end method

.method public final bridge synthetic a(Ldlj;)Ljava/lang/String;
    .locals 0

    check-cast p1, Leje;

    iget-object p1, p1, Leje;->d:Leja;

    if-nez p1, :cond_0

    sget-object p1, Leja;->d:Leja;

    :cond_0
    iget-object p1, p1, Leja;->c:Ljava/lang/String;

    return-object p1
.end method
