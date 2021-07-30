.class public final Lbvc;
.super Lbvd;
.source "PG"


# static fields
.field public static final a:Lbvc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvc;

    invoke-direct {v0}, Lbvc;-><init>()V

    sput-object v0, Lbvc;->a:Lbvc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ldlj;Ldlj;)Ldlj;
    .locals 9

    check-cast p1, Lejd;

    check-cast p2, Lejd;

    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    sget-object v0, Lejd;->i:Lejd;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-wide v5, p1, Lejd;->b:J

    iget-wide v7, p2, Lejd;->b:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_0
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Lejd;

    iget v7, v1, Lejd;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v1, Lejd;->a:I

    iput-wide v5, v1, Lejd;->b:J

    :cond_1
    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    iget-wide v5, p1, Lejd;->c:J

    iget-wide v7, p2, Lejd;->c:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_2
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Lejd;

    iget v7, v1, Lejd;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Lejd;->a:I

    iput-wide v5, v1, Lejd;->c:J

    :cond_3
    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    iget-wide v5, p1, Lejd;->d:J

    iget-wide v7, p2, Lejd;->d:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_5

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_4
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Lejd;

    iget v7, v1, Lejd;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Lejd;->a:I

    iput-wide v5, v1, Lejd;->d:J

    :cond_5
    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    iget-wide v5, p1, Lejd;->e:J

    iget-wide v7, p2, Lejd;->e:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_6
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Lejd;

    iget v7, v1, Lejd;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v1, Lejd;->a:I

    iput-wide v5, v1, Lejd;->e:J

    :cond_7
    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_9

    iget-wide v5, p1, Lejd;->f:J

    iget-wide v7, p2, Lejd;->f:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_8
    iget-object v1, v0, Ldjy;->a:Ldkd;

    check-cast v1, Lejd;

    iget v7, v1, Lejd;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v1, Lejd;->a:I

    iput-wide v5, v1, Lejd;->f:J

    :cond_9
    iget v1, p1, Lejd;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    iget-wide v5, p1, Lejd;->g:J

    iget-wide v7, p2, Lejd;->g:J

    sub-long/2addr v5, v7

    cmp-long p2, v5, v2

    if-eqz p2, :cond_b

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_a
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejd;

    iget v1, p2, Lejd;->a:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p2, Lejd;->a:I

    iput-wide v5, p2, Lejd;->g:J

    :cond_b
    iget-object p1, p1, Lejd;->h:Leja;

    if-nez p1, :cond_c

    sget-object p1, Leja;->d:Leja;

    :cond_c
    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_d

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_d
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lejd;->h:Leja;

    iget p1, p2, Lejd;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p2, Lejd;->a:I

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lejd;

    invoke-static {p1}, Lcne;->a(Lejd;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ldlj;
    .locals 8

    check-cast p2, Landroid/os/health/HealthStats;

    sget-object v0, Lejd;->i:Lejd;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    const/16 v1, 0x7531

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_0
    iget-object v6, v0, Ldjy;->a:Ldkd;

    check-cast v6, Lejd;

    iget v7, v6, Lejd;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lejd;->a:I

    iput-wide v1, v6, Lejd;->b:J

    :cond_1
    const/16 v1, 0x7532

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_2
    iget-object v6, v0, Ldjy;->a:Ldkd;

    check-cast v6, Lejd;

    iget v7, v6, Lejd;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lejd;->a:I

    iput-wide v1, v6, Lejd;->c:J

    :cond_3
    const/16 v1, 0x7533

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_4
    iget-object v6, v0, Ldjy;->a:Ldkd;

    check-cast v6, Lejd;

    iget v7, v6, Lejd;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lejd;->a:I

    iput-wide v1, v6, Lejd;->d:J

    :cond_5
    const/16 v1, 0x7534

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_7

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_6

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_6
    iget-object v6, v0, Ldjy;->a:Ldkd;

    check-cast v6, Lejd;

    iget v7, v6, Lejd;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Lejd;->a:I

    iput-wide v1, v6, Lejd;->e:J

    :cond_7
    const/16 v1, 0x7535

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long v6, v1, v3

    if-eqz v6, :cond_9

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_8

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_8
    iget-object v6, v0, Ldjy;->a:Ldkd;

    check-cast v6, Lejd;

    iget v7, v6, Lejd;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lejd;->a:I

    iput-wide v1, v6, Lejd;->f:J

    :cond_9
    const/16 v1, 0x7536

    invoke-static {p2, v1}, Lcne;->a(Landroid/os/health/HealthStats;I)J

    move-result-wide v1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_b

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_a

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_a
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejd;

    iget v3, p2, Lejd;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p2, Lejd;->a:I

    iput-wide v1, p2, Lejd;->g:J

    :cond_b
    if-eqz p1, :cond_d

    invoke-static {p1}, Lcne;->a(Ljava/lang/String;)Leja;

    move-result-object p1

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_c

    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v5, v0, Ldjy;->b:Z

    :cond_c
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejd;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lejd;->h:Leja;

    iget p1, p2, Lejd;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p2, Lejd;->a:I

    :cond_d
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lejd;

    invoke-static {p1}, Lcne;->a(Lejd;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/4 p1, 0x0

    :cond_e
    return-object p1
.end method

.method public final bridge synthetic a(Ldlj;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lejd;

    iget-object p1, p1, Lejd;->h:Leja;

    if-nez p1, :cond_0

    sget-object p1, Leja;->d:Leja;

    :cond_0
    iget-object p1, p1, Leja;->c:Ljava/lang/String;

    return-object p1
.end method
