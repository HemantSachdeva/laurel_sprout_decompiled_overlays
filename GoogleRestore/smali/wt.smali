.class final Lwt;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lwu;


# direct methods
.method public constructor <init>(Lwu;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lwt;->b:Lwu;

    iput-object p2, p0, Lwt;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lwt;->b:Lwu;

    iget-object v1, p0, Lwt;->a:Ljava/lang/Object;

    .line 1
    invoke-virtual {v0}, Lwu;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lwu;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v1}, Lwu;->a(Ljava/lang/Object;)V

    .line 2
    :goto_0
    const/4 v1, 0x3

    iput v1, v0, Lwu;->f:I

    return-void
.end method
