.class final synthetic Lagk;
.super Ljava/lang/Object;

# interfaces
.implements Lbpa;


# instance fields
.field private final a:Lagm;

.field private final b:Ldac;


# direct methods
.method public constructor <init>(Lagm;Ldac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lagk;->a:Lagm;

    iput-object p2, p0, Lagk;->b:Ldac;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lagk;->a:Lagm;

    iget-object v1, p0, Lagk;->b:Ldac;

    iget-object v2, v0, Lagm;->j:Lacw;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Failed to fetch contacts backup info. No retries."

    invoke-virtual {v2, v4, p1, v3}, Laqd;->a(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v2, v0, Lagm;->m:Lacy;

    sget-object v3, Laxj;->b:Laxj;

    sget-object v4, Laxl;->c:Laxl;

    instance-of v5, p1, Lbep;

    if-eqz v5, :cond_0

    check-cast p1, Lbep;

    invoke-virtual {p1}, Lbep;->a()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v2, v3, v4, p1}, Lacy;->a(Laxj;Laxl;I)V

    invoke-virtual {v0}, Lagm;->f()Lahe;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldac;->a(Ljava/lang/Object;)Z

    return-void
.end method
