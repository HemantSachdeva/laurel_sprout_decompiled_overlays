.class public final Ljs;
.super Landroid/view/ActionMode;
.source "PG"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Ljo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Ljs;->a:Landroid/content/Context;

    iput-object p2, p0, Ljs;->b:Ljo;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 2
    invoke-virtual {v0}, Ljo;->c()V

    return-void
.end method

.method public final getCustomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 3
    invoke-virtual {v0}, Ljo;->h()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getMenu()Landroid/view/Menu;
    .locals 3

    new-instance v0, Llg;

    iget-object v1, p0, Ljs;->a:Landroid/content/Context;

    iget-object v2, p0, Ljs;->b:Ljo;

    .line 4
    invoke-virtual {v2}, Ljo;->b()Landroid/view/Menu;

    move-result-object v2

    check-cast v2, Len;

    invoke-direct {v0, v1, v2}, Llg;-><init>(Landroid/content/Context;Len;)V

    return-object v0
.end method

.method public final getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 5
    invoke-virtual {v0}, Ljo;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 6
    invoke-virtual {v0}, Ljo;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    iget-object v0, v0, Ljo;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 7
    invoke-virtual {v0}, Ljo;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getTitleOptionalHint()Z
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    iget-boolean v0, v0, Ljo;->e:Z

    return v0
.end method

.method public final invalidate()V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 8
    invoke-virtual {v0}, Ljo;->d()V

    return-void
.end method

.method public final isTitleOptional()Z
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 9
    invoke-virtual {v0}, Ljo;->g()Z

    move-result v0

    return v0
.end method

.method public final setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 10
    invoke-virtual {v0, p1}, Ljo;->a(Landroid/view/View;)V

    return-void
.end method

.method public final setSubtitle(I)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 11
    invoke-virtual {v0, p1}, Ljo;->b(I)V

    return-void
.end method

.method public final setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 12
    invoke-virtual {v0, p1}, Ljo;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    iput-object p1, v0, Ljo;->d:Ljava/lang/Object;

    return-void
.end method

.method public final setTitle(I)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 13
    invoke-virtual {v0, p1}, Ljo;->a(I)V

    return-void
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 14
    invoke-virtual {v0, p1}, Ljo;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleOptionalHint(Z)V
    .locals 1

    iget-object v0, p0, Ljs;->b:Ljo;

    .line 15
    invoke-virtual {v0, p1}, Ljo;->a(Z)V

    return-void
.end method
