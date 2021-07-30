.class public final Lbhv;
.super Lbhw;
.source "PG"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lbgn;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lbgn;)V
    .locals 0

    iput-object p1, p0, Lbhv;->a:Landroid/content/Intent;

    iput-object p2, p0, Lbhv;->b:Lbgn;

    invoke-direct {p0}, Lbhw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lbhv;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lbhv;->b:Lbgn;

    const/4 v2, 0x2

    .line 1
    invoke-interface {v1, v0, v2}, Lbgn;->a(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
