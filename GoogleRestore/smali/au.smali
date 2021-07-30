.class final Lau;
.super Lbj;
.source "PG"


# instance fields
.field final synthetic a:Lbj;

.field final synthetic b:Lav;


# direct methods
.method public constructor <init>(Lav;Lbj;)V
    .locals 0

    iput-object p1, p0, Lau;->b:Lav;

    iput-object p2, p0, Lau;->a:Lbj;

    invoke-direct {p0}, Lbj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lau;->b:Lav;

    iget-object v0, v0, Lav;->c:Landroid/app/Dialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    move-object v0, v1

    .line 1
    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    iget-object v0, p0, Lau;->a:Lbj;

    .line 2
    invoke-virtual {v0}, Lbj;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lau;->a:Lbj;

    .line 3
    invoke-virtual {v0, p1}, Lbj;->a(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public final a()Z
    .locals 1

    iget-object v0, p0, Lau;->b:Lav;

    iget-boolean v0, v0, Lav;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lau;->a:Lbj;

    .line 4
    invoke-virtual {v0}, Lbj;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
