.class final Lerd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lerp;

.field final synthetic b:Lero;


# direct methods
.method public constructor <init>(Lero;Lerp;)V
    .locals 0

    iput-object p1, p0, Lerd;->b:Lero;

    iput-object p2, p0, Lerd;->a:Lerp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lerd;->a:Lerp;

    .line 1
    invoke-interface {v0}, Lerp;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lerd;->b:Lero;

    new-instance v2, Lepv;

    .line 2
    const-string v3, "Exception received from UrlRequest.Callback"

    invoke-direct {v2, v3, v0}, Lepv;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lero;->a(Lorg/chromium/net/CronetException;)V

    return-void
.end method
