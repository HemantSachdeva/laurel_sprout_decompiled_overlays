.class final Leax;
.super Lebp;
.source "PG"


# instance fields
.field final synthetic a:Ldyv;

.field final synthetic b:Ldxt;

.field final synthetic c:Leaz;


# direct methods
.method public constructor <init>(Leaz;Ldyv;Ldxt;)V
    .locals 0

    iput-object p1, p0, Leax;->c:Leaz;

    iput-object p2, p0, Leax;->a:Ldyv;

    iput-object p3, p0, Leax;->b:Ldxt;

    iget-object p1, p1, Leaz;->c:Lebb;

    iget-object p1, p1, Lebb;->e:Ldwb;

    .line 1
    invoke-direct {p0, p1}, Lebp;-><init>(Ldwb;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 2
    sget v0, Lein;->a:I

    :try_start_0
    iget-object v0, p0, Leax;->a:Ldyv;

    iget-object v1, p0, Leax;->b:Ldxt;

    iget-object v2, p0, Leax;->c:Leaz;

    iget-object v2, v2, Leaz;->b:Ldyv;

    if-eqz v2, :cond_0

    .line 3
    new-instance v1, Ldxt;

    invoke-direct {v1}, Ldxt;-><init>()V

    move-object v0, v2

    :cond_0
    iget-object v2, p0, Leax;->c:Leaz;

    iget-object v2, v2, Leaz;->c:Lebb;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lebb;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Leax;->c:Leaz;

    iget-object v3, v2, Leaz;->c:Lebb;

    iget-object v2, v2, Leaz;->a:Ldvk;

    .line 4
    invoke-virtual {v3, v2, v0, v1}, Lebb;->a(Ldvk;Ldyv;Ldxt;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Leax;->c:Leaz;

    iget-object v1, v1, Leaz;->c:Lebb;

    .line 5
    invoke-virtual {v1}, Lebb;->c()V

    iget-object v1, p0, Leax;->c:Leaz;

    iget-object v1, v1, Leaz;->c:Lebb;

    iget-object v1, v1, Lebb;->d:Leap;

    .line 6
    invoke-virtual {v0}, Ldyv;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Leap;->a(Z)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Leax;->c:Leaz;

    iget-object v2, v2, Leaz;->c:Lebb;

    .line 5
    invoke-virtual {v2}, Lebb;->c()V

    iget-object v2, p0, Leax;->c:Leaz;

    iget-object v2, v2, Leaz;->c:Lebb;

    iget-object v2, v2, Lebb;->d:Leap;

    .line 6
    invoke-virtual {v0}, Ldyv;->a()Z

    move-result v0

    invoke-virtual {v2, v0}, Leap;->a(Z)V

    .line 7
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    throw v0
.end method
