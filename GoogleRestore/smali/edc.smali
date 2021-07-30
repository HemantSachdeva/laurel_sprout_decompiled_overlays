.class public final Ledc;
.super Legi;
.source "PG"


# instance fields
.field private b:Z

.field private final c:Ldyv;

.field private final d:Lebd;


# direct methods
.method public constructor <init>(Ldyv;)V
    .locals 1

    .line 1
    sget-object v0, Lebd;->a:Lebd;

    invoke-direct {p0, p1, v0}, Ledc;-><init>(Ldyv;Lebd;)V

    return-void
.end method

.method public constructor <init>(Ldyv;Lebd;)V
    .locals 2

    invoke-direct {p0}, Legi;-><init>()V

    .line 2
    invoke-virtual {p1}, Ldyv;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iput-object p1, p0, Ledc;->c:Ldyv;

    iput-object p2, p0, Ledc;->d:Lebd;

    return-void
.end method


# virtual methods
.method public final a(Lebe;)V
    .locals 3

    iget-boolean v0, p0, Ledc;->b:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4
    const-string v2, "already started"

    invoke-static {v0, v2}, Lcrj;->b(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Ledc;->b:Z

    iget-object v0, p0, Ledc;->c:Ldyv;

    iget-object v1, p0, Ledc;->d:Lebd;

    .line 5
    new-instance v2, Ldxt;

    invoke-direct {v2}, Ldxt;-><init>()V

    invoke-interface {p1, v0, v1, v2}, Lebe;->a(Ldyv;Lebd;Ldxt;)V

    return-void
.end method

.method public final a(Ledu;)V
    .locals 2

    iget-object v0, p0, Ledc;->c:Ldyv;

    .line 3
    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Ledu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Ledc;->d:Lebd;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Ledu;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
