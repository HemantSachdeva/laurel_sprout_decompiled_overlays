.class public final Lwl;
.super Lwu;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Z

.field final synthetic b:Lwm;


# direct methods
.method public constructor <init>(Lwm;)V
    .locals 0

    iput-object p1, p0, Lwl;->b:Lwm;

    .line 1
    invoke-direct {p0}, Lwu;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lwl;->b:Lwm;

    .line 2
    invoke-virtual {v0}, Lwm;->c()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Luh; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0}, Lwu;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    const/4 v0, 0x0

    return-object v0

    :cond_0
    throw v0
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lwl;->b:Lwm;

    iget-object v1, v0, Lwm;->a:Lwl;

    if-ne v1, p0, :cond_1

    iget-boolean v1, v0, Lwq;->g:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lwm;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lwq;->j:Z

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v1, 0x0

    iput-object v1, v0, Lwm;->a:Lwl;

    .line 7
    invoke-virtual {v0, p1}, Lwq;->b(Ljava/lang/Object;)V

    return-void

    .line 9
    :cond_1
    invoke-virtual {v0, p0, p1}, Lwm;->a(Lwl;Ljava/lang/Object;)V

    return-void
.end method

.method protected final b(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lwl;->b:Lwm;

    .line 5
    invoke-virtual {v0, p0, p1}, Lwm;->a(Lwl;Ljava/lang/Object;)V

    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwl;->a:Z

    iget-object v0, p0, Lwl;->b:Lwm;

    .line 10
    invoke-virtual {v0}, Lwm;->b()V

    return-void
.end method
