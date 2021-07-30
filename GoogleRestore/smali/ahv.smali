.class public final Lahv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field public g:Z

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lahv;->a:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lahv;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lahv;->e:Ljava/lang/String;

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iget v1, p0, Lahv;->a:I

    invoke-virtual {v0, v1}, Lada;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lahv;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lahv;->d:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lahv;->c:Ljava/lang/String;

    iput-object p1, p0, Lahv;->d:Ljava/lang/String;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 3
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iget v1, p0, Lahv;->a:I

    iget-object v0, v0, Lada;->e:Landroid/util/SparseBooleanArray;

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public final b()Z
    .locals 2

    .line 2
    invoke-static {}, Lada;->a()Lada;

    move-result-object v0

    iget v1, p0, Lahv;->a:I

    invoke-virtual {v0, v1}, Lada;->a(I)Z

    move-result v0

    return v0
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lahv;->f:Z

    return-void
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lahv;->g:Z

    return-void
.end method
