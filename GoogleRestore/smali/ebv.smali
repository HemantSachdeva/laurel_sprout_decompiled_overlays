.class final Lebv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lebw;

.field final synthetic b:Lebf;


# direct methods
.method public constructor <init>(Lebw;Lebf;)V
    .locals 0

    iput-object p1, p0, Lebv;->a:Lebw;

    iput-object p2, p0, Lebv;->b:Lebf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lebv;->a:Lebw;

    iget-object v1, p0, Lebv;->b:Lebf;

    iget-object v2, v0, Lebw;->b:Ldwb;

    .line 1
    invoke-virtual {v2}, Ldwb;->b()Ldwb;

    move-result-object v2

    :try_start_0
    iget-object v3, v0, Lebw;->a:Ldxa;

    iget-object v4, v3, Ldxa;->c:Ldxx;

    iget-object v5, v3, Ldxa;->b:Ldxt;

    iget-object v3, v3, Ldxa;->a:Ldvh;

    .line 2
    invoke-interface {v1, v4, v5, v3}, Lebf;->a(Ldxx;Ldxt;Ldvh;)Lebc;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v3, v0, Lebw;->b:Ldwb;

    .line 3
    invoke-virtual {v3, v2}, Ldwb;->a(Ldwb;)V

    .line 5
    invoke-virtual {v0, v1}, Lecq;->a(Lebc;)V

    return-void

    .line 2
    :catchall_0
    move-exception v1

    iget-object v0, v0, Lebw;->b:Ldwb;

    .line 3
    invoke-virtual {v0, v2}, Ldwb;->a(Ldwb;)V

    .line 4
    throw v1
.end method
