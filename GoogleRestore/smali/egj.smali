.class final Legj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Ldxd;

.field final synthetic b:Legn;


# direct methods
.method public constructor <init>(Legn;Ldxd;)V
    .locals 0

    iput-object p1, p0, Legj;->b:Legn;

    iput-object p2, p0, Legj;->a:Ldxd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ldvy;)V
    .locals 5

    iget-object v0, p0, Legj;->b:Legn;

    iget-object v1, p0, Legj;->a:Ldxd;

    iget-object v2, p1, Ldvy;->a:Ldvx;

    sget-object v3, Ldvx;->e:Ldvx;

    if-ne v2, v3, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {v2}, Ldvx;->ordinal()I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 p1, 0x3

    if-ne v3, p1, :cond_1

    .line 7
    new-instance p1, Legm;

    .line 5
    invoke-direct {p1, v0, v1}, Legm;-><init>(Legn;Ldxd;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x12

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported state:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_2
    new-instance v1, Legk;

    iget-object p1, p1, Ldvy;->b:Ldyv;

    .line 2
    invoke-static {p1}, Ldwz;->a(Ldyv;)Ldwz;

    move-result-object p1

    invoke-direct {v1, p1}, Legk;-><init>(Ldwz;)V

    move-object p1, v1

    goto :goto_0

    .line 6
    :cond_3
    new-instance p1, Legk;

    .line 3
    invoke-static {v1}, Ldwz;->a(Ldxd;)Ldwz;

    move-result-object v1

    invoke-direct {p1, v1}, Legk;-><init>(Ldwz;)V

    goto :goto_0

    :cond_4
    new-instance p1, Legk;

    .line 4
    sget-object v1, Ldwz;->a:Ldwz;

    invoke-direct {p1, v1}, Legk;-><init>(Ldwz;)V

    .line 2
    :goto_0
    iget-object v0, v0, Legn;->c:Ldwy;

    .line 6
    invoke-virtual {v0, v2, p1}, Ldwy;->a(Ldvx;Ldxe;)V

    return-void
.end method
