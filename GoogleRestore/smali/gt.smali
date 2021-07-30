.class Lgt;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final c:Lgu;


# instance fields
.field final d:Lgu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    new-instance v0, Lgm;

    .line 2
    invoke-direct {v0}, Lgm;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    new-instance v0, Lgm;

    .line 4
    invoke-direct {v0}, Lgm;-><init>()V

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    new-instance v0, Lgl;

    .line 6
    invoke-direct {v0}, Lgl;-><init>()V

    .line 7
    :goto_0
    invoke-virtual {v0}, Lgn;->a()Lgu;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lgu;->h()Lgu;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lgu;->g()Lgu;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lgu;->f()Lgu;

    move-result-object v0

    sput-object v0, Lgt;->c:Lgu;

    return-void
.end method

.method public constructor <init>(Lgu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgt;->d:Lgu;

    return-void
.end method


# virtual methods
.method public a(IIII)Lgu;
    .locals 0

    sget-object p1, Lgt;->c:Lgu;

    return-object p1
.end method

.method public a(Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method

.method public a(Lgu;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Ldz;
    .locals 1

    .line 20
    sget-object v0, Ldz;->a:Ldz;

    return-object v0
.end method

.method public b(Lgu;)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Lgu;
    .locals 1

    iget-object v0, p0, Lgt;->d:Lgu;

    return-object v0
.end method

.method public e()Lgu;
    .locals 1

    iget-object v0, p0, Lgt;->d:Lgu;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lgt;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 12
    :cond_1
    check-cast p1, Lgt;

    .line 13
    invoke-virtual {p0}, Lgt;->a()Z

    move-result v1

    invoke-virtual {p1}, Lgt;->a()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 14
    invoke-virtual {p0}, Lgt;->c()Z

    move-result v1

    invoke-virtual {p1}, Lgt;->c()Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 15
    invoke-virtual {p0}, Lgt;->b()Ldz;

    move-result-object v1

    invoke-virtual {p1}, Lgt;->b()Ldz;

    move-result-object v3

    invoke-static {v1, v3}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    invoke-virtual {p0}, Lgt;->f()Ldz;

    move-result-object v1

    invoke-virtual {p1}, Lgt;->f()Ldz;

    move-result-object v3

    invoke-static {v1, v3}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    invoke-virtual {p0}, Lgt;->g()Lfn;

    move-result-object v1

    invoke-virtual {p1}, Lgt;->g()Lfn;

    move-result-object p1

    invoke-static {v1, p1}, Ley;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public f()Ldz;
    .locals 1

    .line 19
    sget-object v0, Ldz;->a:Ldz;

    return-object v0
.end method

.method public g()Lfn;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lgu;
    .locals 1

    iget-object v0, p0, Lgt;->d:Lgu;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lgt;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgt;->c()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgt;->b()Ldz;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 22
    invoke-virtual {p0}, Lgt;->f()Ldz;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lgt;->g()Lfn;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 23
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Ldz;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lgt;->b()Ldz;

    move-result-object v0

    return-object v0
.end method
