.class final Lbon;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbpi;

.field final synthetic b:Lboo;


# direct methods
.method public constructor <init>(Lboo;Lbpi;)V
    .locals 0

    iput-object p1, p0, Lbon;->b:Lboo;

    iput-object p2, p0, Lbon;->a:Lbpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbon;->a:Lbpi;

    check-cast v0, Lbpp;

    iget-boolean v0, v0, Lbpp;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbon;->b:Lboo;

    iget-object v0, v0, Lboo;->b:Lbpp;

    .line 1
    invoke-virtual {v0}, Lbpp;->h()V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbon;->b:Lboo;

    iget-object v0, v0, Lboo;->a:Lbom;

    iget-object v1, p0, Lbon;->a:Lbpi;

    .line 2
    invoke-interface {v0, v1}, Lbom;->a(Lbpi;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lbpg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lbon;->b:Lboo;

    iget-object v1, v1, Lboo;->b:Lbpp;

    .line 7
    invoke-virtual {v1, v0}, Lbpp;->a(Ljava/lang/Object;)V

    return-void

    .line 5
    :catch_0
    move-exception v0

    iget-object v1, p0, Lbon;->b:Lboo;

    iget-object v1, v1, Lboo;->b:Lbpp;

    .line 3
    invoke-virtual {v1, v0}, Lbpp;->a(Ljava/lang/Exception;)V

    return-void

    .line 7
    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {v0}, Lbpg;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbon;->b:Lboo;

    iget-object v1, v1, Lboo;->b:Lbpp;

    .line 5
    invoke-virtual {v0}, Lbpg;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lbpp;->a(Ljava/lang/Exception;)V

    return-void

    .line 3
    :cond_1
    iget-object v1, p0, Lbon;->b:Lboo;

    iget-object v1, v1, Lboo;->b:Lbpp;

    .line 6
    invoke-virtual {v1, v0}, Lbpp;->a(Ljava/lang/Exception;)V

    return-void
.end method
