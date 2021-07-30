.class final Lne;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lnm;


# instance fields
.field a:Lia;

.field final synthetic b:Lnn;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Lnn;)V
    .locals 0

    iput-object p1, p0, Lne;->b:Lnn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lne;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    .line 10
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(II)V
    .locals 5

    iget-object v0, p0, Lne;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lne;->b:Lnn;

    iget-object v0, v0, Lnn;->a:Landroid/content/Context;

    const/4 v1, 0x0

    .line 11
    invoke-static {v0, v1}, Lia;->a(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Lhv;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    .line 12
    invoke-static {v0, v1}, Lia;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {v3, v0, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v3}, Lhv;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lne;->d:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iput-object v0, v2, Lhv;->d:Ljava/lang/CharSequence;

    :cond_1
    iget-object v0, p0, Lne;->c:Landroid/widget/ListAdapter;

    iget-object v3, p0, Lne;->b:Lnn;

    .line 13
    invoke-virtual {v3}, Lnn;->getSelectedItemPosition()I

    move-result v3

    iput-object v0, v2, Lhv;->g:Landroid/widget/ListAdapter;

    iput-object p0, v2, Lhv;->h:Landroid/content/DialogInterface$OnClickListener;

    iput v3, v2, Lhv;->j:I

    const/4 v0, 0x1

    iput-boolean v0, v2, Lhv;->i:Z

    invoke-static {v2, v1}, Lhz;->a(Lhv;I)Lia;

    move-result-object v0

    iput-object v0, p0, Lne;->a:Lia;

    iget-object v0, v0, Lia;->a:Lhy;

    iget-object v0, v0, Lhy;->e:Landroid/widget/ListView;

    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 16
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    iget-object p1, p0, Lne;->a:Lia;

    .line 17
    invoke-virtual {p1}, Lia;->show()V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 7
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Landroid/widget/ListAdapter;)V
    .locals 0

    iput-object p1, p0, Lne;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lne;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    .line 8
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 1

    .line 9
    const-string p1, "AppCompatSpinner"

    const-string v0, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lne;->a:Lia;

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {v0}, Lix;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lne;->a:Lia;

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lne;->a:Lia;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lia;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object p1, p0, Lne;->b:Lnn;

    .line 3
    invoke-virtual {p1, p2}, Lnn;->setSelection(I)V

    iget-object p1, p0, Lne;->b:Lnn;

    .line 4
    invoke-virtual {p1}, Lnn;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lne;->b:Lnn;

    const/4 v0, 0x0

    iget-object v1, p0, Lne;->c:Landroid/widget/ListAdapter;

    .line 5
    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Lnn;->performItemClick(Landroid/view/View;IJ)Z

    .line 6
    :cond_0
    invoke-virtual {p0}, Lne;->d()V

    return-void
.end method
