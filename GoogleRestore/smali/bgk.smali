.class public final Lbgk;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lbfp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lbfp;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lbgk;->b:Lbfp;

    iput-object p2, p0, Lbgk;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lbgk;->b:Lbfp;

    iget-object v0, v0, Lbfp;->a:Lbfq;

    .line 1
    invoke-virtual {v0}, Lbfq;->b()V

    iget-object v0, p0, Lbgk;->a:Landroid/app/Dialog;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgk;->a:Landroid/app/Dialog;

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
