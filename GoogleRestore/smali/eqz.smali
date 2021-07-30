.class final Leqz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lera;


# direct methods
.method public constructor <init>(Lera;)V
    .locals 0

    iput-object p1, p0, Leqz;->a:Lera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Leqz;->a:Lera;

    iget-object v0, v0, Lera;->b:Lero;

    iget-object v1, v0, Lero;->b:Lerl;

    iget-object v2, v0, Lero;->o:Lerv;

    iget-object v0, v0, Lero;->p:Ljava/lang/String;

    new-instance v3, Lerf;

    .line 1
    invoke-direct {v3, v1, v2, v0}, Lerf;-><init>(Lerl;Lorg/chromium/net/UrlResponseInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lerl;->a(Lerp;)V

    return-void
.end method
