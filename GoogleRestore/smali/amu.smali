.class final synthetic Lamu;
.super Ljava/lang/Object;

# interfaces
.implements Leip;


# instance fields
.field private final a:Lcbs;


# direct methods
.method public constructor <init>(Lcbs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lamu;->a:Lcbs;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 15

    iget-object v0, p0, Lamu;->a:Lcbs;

    new-instance v1, Lbsx;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbsx;-><init>([B)V

    invoke-static {}, Lbxp;->b()Lbxo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lbxo;->a(Z)V

    invoke-virtual {v2}, Lbxo;->a()Lbxp;

    move-result-object v2

    iput-object v2, v1, Lbsx;->c:Lbxp;

    new-instance v2, Lamv;

    invoke-direct {v2, v0}, Lamv;-><init>(Lcbs;)V

    iput-object v2, v1, Lbsx;->a:Leip;

    invoke-static {}, Lbut;->a()Lbus;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->a()Z

    move-result v2

    invoke-static {v2}, Lbuo;->a(Z)I

    move-result v2

    iput v2, v0, Lbus;->a:I

    invoke-virtual {v0}, Lbus;->a()Lbut;

    move-result-object v0

    invoke-static {v0}, Lcqu;->c(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    iput-object v0, v1, Lbsx;->k:Lcqu;

    invoke-static {}, Lbwe;->a()Lbwd;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->b()Z

    move-result v2

    invoke-static {v2}, Lbuo;->a(Z)I

    move-result v2

    iput v2, v0, Lbwd;->d:I

    invoke-virtual {v0}, Lbwd;->a()Lbwe;

    move-result-object v0

    invoke-static {v0}, Lcqu;->c(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    iput-object v0, v1, Lbsx;->e:Lcqu;

    invoke-static {}, Lbxp;->b()Lbxo;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lbxo;->a(Z)V

    invoke-virtual {v0}, Lbxo;->a()Lbxp;

    move-result-object v0

    iput-object v0, v1, Lbsx;->c:Lbxp;

    invoke-static {}, Lbym;->b()Lbyl;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->d()Z

    move-result v2

    invoke-static {v2}, Lbuo;->a(Z)I

    move-result v2

    iput v2, v0, Lbyl;->d:I

    invoke-virtual {v0}, Lbyl;->a()Lbym;

    move-result-object v0

    invoke-static {v0}, Lcqu;->c(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    iput-object v0, v1, Lbsx;->f:Lcqu;

    invoke-static {}, Lbzt;->a()Lbzs;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->e()Z

    move-result v2

    invoke-static {v2}, Lbuo;->a(Z)I

    move-result v2

    iput v2, v0, Lbzs;->c:I

    invoke-virtual {v0}, Lbzs;->a()Lbzt;

    move-result-object v0

    invoke-static {v0}, Lcqu;->c(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    iput-object v0, v1, Lbsx;->g:Lcqu;

    invoke-static {}, Lcaj;->a()Lcai;

    move-result-object v0

    sget-object v2, Ldty;->a:Ldty;

    invoke-virtual {v2}, Ldty;->b()Ldtz;

    move-result-object v2

    invoke-interface {v2}, Ldtz;->f()Z

    move-result v2

    invoke-static {v2}, Lbuo;->a(Z)I

    move-result v2

    iput v2, v0, Lcai;->d:I

    invoke-virtual {v0}, Lcai;->a()Lcaj;

    move-result-object v0

    invoke-static {v0}, Lcqu;->c(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    iput-object v0, v1, Lbsx;->d:Lcqu;

    iget-object v0, v1, Lbsx;->a:Leip;

    if-nez v0, :cond_0

    const-string v0, " metricTransmitterProvider"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v2, v1, Lbsx;->c:Lbxp;

    if-nez v2, :cond_1

    const-string v2, " memoryConfigurations"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Lbsy;

    iget-object v3, v1, Lbsx;->a:Leip;

    iget-object v4, v1, Lbsx;->b:Lcqu;

    iget-object v5, v1, Lbsx;->c:Lbxp;

    iget-object v6, v1, Lbsx;->d:Lcqu;

    iget-object v7, v1, Lbsx;->e:Lcqu;

    iget-object v8, v1, Lbsx;->f:Lcqu;

    iget-object v9, v1, Lbsx;->g:Lcqu;

    iget-object v10, v1, Lbsx;->h:Lcqu;

    iget-object v11, v1, Lbsx;->i:Lcqu;

    iget-object v12, v1, Lbsx;->j:Lcqu;

    iget-object v13, v1, Lbsx;->k:Lcqu;

    iget-object v14, v1, Lbsx;->l:Lcqu;

    move-object v2, v0

    invoke-direct/range {v2 .. v14}, Lbsy;-><init>(Leip;Lcqu;Lbxp;Lcqu;Lcqu;Lcqu;Lcqu;Lcqu;Lcqu;Lcqu;Lcqu;Lcqu;)V

    return-object v0
.end method
