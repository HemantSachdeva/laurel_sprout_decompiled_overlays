.class public final Lbvb;
.super Lbvd;
.source "PG"


# static fields
.field public static final a:Lbvb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbvb;

    invoke-direct {v0}, Lbvb;-><init>()V

    sput-object v0, Lbvb;->a:Lbvb;

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

    check-cast p1, Lejb;

    check-cast p2, Lejb;

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    sget-object v0, Lejb;->e:Lejb;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    sget-object v1, Lbve;->a:Lbve;

    iget-object v2, p1, Lejb;->b:Ldkk;

    iget-object v3, p2, Lejb;->b:Ldkk;

    invoke-virtual {v1, v2, v3}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->a(Ljava/lang/Iterable;)V

    sget-object v1, Lbva;->a:Lbva;

    iget-object v2, p1, Lejb;->c:Ldkk;

    iget-object p2, p2, Lejb;->c:Ldkk;

    invoke-virtual {v1, v2, p2}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ldjy;->b(Ljava/lang/Iterable;)V

    iget-object p1, p1, Lejb;->d:Leja;

    if-nez p1, :cond_0

    sget-object p1, Leja;->d:Leja;

    :cond_0
    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ldjy;->b()V

    const/4 p2, 0x0

    iput-boolean p2, v0, Ldjy;->b:Z

    :cond_1
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lejb;->d:Leja;

    iget p1, p2, Lejb;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Lejb;->a:I

    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lejb;

    invoke-static {p1}, Lcne;->a(Lejb;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)Ldlj;
    .locals 4

    check-cast p2, Landroid/os/health/HealthStats;

    sget-object v0, Lejb;->e:Lejb;

    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    sget-object v1, Lbve;->a:Lbve;

    const v2, 0x9c41

    invoke-static {p2, v2}, Lcne;->d(Landroid/os/health/HealthStats;I)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbvd;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->a(Ljava/lang/Iterable;)V

    sget-object v1, Lbva;->a:Lbva;

    if-eqz p2, :cond_0

    const v2, 0x9c42

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->hasMeasurements(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v2}, Landroid/os/health/HealthStats;->getMeasurements(I)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Lbvd;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Ldjy;->b(Ljava/lang/Iterable;)V

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcne;->a(Ljava/lang/String;)Leja;

    move-result-object p1

    iget-boolean p2, v0, Ldjy;->b:Z

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Ldjy;->b()V

    const/4 p2, 0x0

    iput-boolean p2, v0, Ldjy;->b:Z

    :cond_1
    iget-object p2, v0, Ldjy;->a:Ldkd;

    check-cast p2, Lejb;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p2, Lejb;->d:Leja;

    iget p1, p2, Lejb;->a:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p2, Lejb;->a:I

    :cond_2
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lejb;

    invoke-static {p1}, Lcne;->a(Lejb;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p1, 0x0

    :cond_3
    return-object p1
.end method

.method public final bridge synthetic a(Ldlj;)Ljava/lang/String;
    .locals 0

    check-cast p1, Lejb;

    iget-object p1, p1, Lejb;->d:Leja;

    if-nez p1, :cond_0

    sget-object p1, Leja;->d:Leja;

    :cond_0
    iget-object p1, p1, Leja;->c:Ljava/lang/String;

    return-object p1
.end method
