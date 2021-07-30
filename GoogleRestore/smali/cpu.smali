.class public final Lcpu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcpv;

.field final synthetic b:Ldzd;


# direct methods
.method public constructor <init>(Lcpv;Ldzd;)V
    .locals 0

    iput-object p1, p0, Lcpu;->a:Lcpv;

    iput-object p2, p0, Lcpu;->b:Ldzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcpu;->a:Lcpv;

    iget-object v1, p0, Lcpu;->b:Ldzd;

    .line 1
    :try_start_0
    invoke-virtual {v0}, Lcpv;->a()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {v1, v0}, Ldzd;->a(Ljava/util/Map;)V

    return-void

    :catchall_0
    move-exception v0

    .line 2
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_0

    iget-object v1, v1, Ldzd;->a:Ldve;

    .line 3
    sget-object v2, Ldyv;->i:Ldyv;

    .line 4
    const-string v3, "Credentials failed to obtain metadata"

    invoke-virtual {v2, v3}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v2

    .line 5
    invoke-virtual {v2, v0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v0

    .line 3
    invoke-virtual {v1, v0}, Ldve;->a(Ldyv;)V

    return-void

    :cond_0
    iget-object v1, v1, Ldzd;->a:Ldve;

    .line 6
    sget-object v2, Ldyv;->f:Ldyv;

    .line 7
    const-string v3, "Failed computing credential metadata"

    invoke-virtual {v2, v3}, Ldyv;->a(Ljava/lang/String;)Ldyv;

    move-result-object v2

    .line 8
    invoke-virtual {v2, v0}, Ldyv;->b(Ljava/lang/Throwable;)Ldyv;

    move-result-object v0

    .line 6
    invoke-virtual {v1, v0}, Ldve;->a(Ldyv;)V

    return-void
.end method
