.class public Lbc;
.super Lsi;
.source "PG"


# instance fields
.field final a:Lbl;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:I

.field g:Ltp;

.field final h:Lj;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsi;-><init>()V

    new-instance v0, Lbb;

    .line 2
    invoke-direct {v0, p0}, Lbb;-><init>(Lbc;)V

    new-instance v1, Lbl;

    .line 3
    invoke-direct {v1, v0}, Lbl;-><init>(Lbn;)V

    iput-object v1, p0, Lbc;->a:Lbl;

    new-instance v0, Lj;

    .line 4
    invoke-direct {v0, p0}, Lj;-><init>(Ll;)V

    iput-object v0, p0, Lbc;->h:Lj;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc;->d:Z

    return-void
.end method

.method static a(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    .line 5
    return-void

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lbx;Li;)Z
    .locals 5

    iget-object p0, p0, Lbx;->a:Lcf;

    .line 21
    invoke-virtual {p0}, Lcf;->c()Ljava/util/List;

    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lba;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lba;->x:Lbn;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 28
    :cond_1
    check-cast v3, Lbb;

    iget-object v3, v3, Lbb;->a:Lbc;

    .line 22
    :goto_1
    if-eqz v3, :cond_2

    .line 23
    invoke-virtual {v2}, Lba;->u()Lbx;

    move-result-object v3

    .line 24
    invoke-static {v3, p1}, Lbc;->a(Lbx;Li;)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_2
    iget-object v3, v2, Lba;->V:Lda;

    if-eqz v3, :cond_3

    .line 25
    invoke-virtual {v3}, Lda;->ab()Lj;

    move-result-object v3

    iget-object v3, v3, Lj;->a:Li;

    sget-object v4, Li;->d:Li;

    invoke-virtual {v3, v4}, Li;->a(Li;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v2, Lba;->V:Lda;

    iget-object v1, v1, Lda;->a:Lj;

    .line 26
    invoke-virtual {v1, p1}, Lj;->a(Li;)V

    const/4 v1, 0x1

    :cond_3
    iget-object v3, v2, Lba;->Y:Lj;

    iget-object v3, v3, Lj;->a:Li;

    .line 27
    sget-object v4, Li;->d:Li;

    invoke-virtual {v3, v4}, Li;->a(Li;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v2, Lba;->Y:Lj;

    .line 28
    invoke-virtual {v1, p1}, Lj;->a(Li;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private final f()V
    .locals 2

    .line 20
    :cond_0
    invoke-virtual {p0}, Lbc;->aa()Lbx;

    move-result-object v0

    sget-object v1, Li;->c:Li;

    invoke-static {v0, v1}, Lbc;->a(Lbx;Li;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method


# virtual methods
.method public Z()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-virtual {p0}, Lbc;->invalidateOptionsMenu()V

    return-void
.end method

.method final a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    iget-object v0, v0, Lbx;->c:Lbo;

    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final aa()Lbx;
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 19
    invoke-virtual {v0}, Lbl;->a()Lbx;

    move-result-object v0

    return-object v0
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Lsi;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 10
    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbc;->b:Z

    .line 13
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbc;->c:Z

    .line 14
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lbc;->d:Z

    .line 15
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 16
    invoke-virtual {p0}, Lbc;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 17
    invoke-static {p0}, Lwg;->a(Ll;)Lwg;

    move-result-object v1

    invoke-virtual {v1, v0, p3}, Lwg;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    iget-object v0, p0, Lbc;->a:Lbl;

    .line 18
    invoke-virtual {v0}, Lbl;->a()Lbx;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lbx;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 29
    invoke-virtual {v0}, Lbl;->b()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lbc;->g:Ltp;

    .line 31
    invoke-virtual {v1, v0}, Ltp;->a(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lbc;->g:Ltp;

    .line 32
    invoke-virtual {v2, v0}, Ltp;->b(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    .line 33
    const-string p1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lbc;->a:Lbl;

    .line 34
    invoke-virtual {v2, v1}, Lbl;->a(Ljava/lang/String;)Lba;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    int-to-char p1, p1

    .line 36
    invoke-virtual {v2, p1, p2, p3}, Lba;->a(IILandroid/content/Intent;)V

    return-void

    .line 30
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lsi;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lsi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 38
    invoke-virtual {v0}, Lbl;->b()V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 39
    invoke-virtual {v0, p1}, Lbx;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v1, v0, Lbn;->e:Lbx;

    .line 40
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v0, v2}, Lbx;->a(Lbn;Lbj;Lba;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 41
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iget-object v2, p0, Lbc;->a:Lbl;

    iget-object v2, v2, Lbl;->a:Lbn;

    iget-object v2, v2, Lbn;->e:Lbx;

    .line 42
    invoke-virtual {v2, v1}, Lbx;->a(Landroid/os/Parcelable;)V

    .line 43
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lbc;->f:I

    .line 45
    const-string v1, "android:support:request_indicies"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 46
    const-string v2, "android:support:request_fragment_who"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    new-instance v4, Ltp;

    .line 48
    invoke-direct {v4, v3}, Ltp;-><init>(I)V

    iput-object v4, p0, Lbc;->g:Ltp;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lbc;->g:Ltp;

    .line 49
    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Ltp;->a(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lbc;->g:Ltp;

    if-nez v1, :cond_3

    new-instance v1, Ltp;

    .line 50
    invoke-direct {v1}, Ltp;-><init>()V

    iput-object v1, p0, Lbc;->g:Ltp;

    iput v0, p0, Lbc;->f:I

    .line 51
    :cond_3
    invoke-super {p0, p1}, Lsi;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lbc;->h:Lj;

    .line 52
    sget-object v0, Lh;->a:Lh;

    invoke-virtual {p1, v0}, Lj;->a(Lh;)V

    iget-object p1, p0, Lbc;->a:Lbl;

    iget-object p1, p1, Lbl;->a:Lbn;

    iget-object p1, p1, Lbn;->e:Lbx;

    .line 53
    invoke-virtual {p1}, Lbx;->f()V

    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 54
    invoke-super {p0, p1, p2}, Lsi;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 55
    invoke-virtual {p0}, Lbc;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 56
    invoke-virtual {v0, p2, v1}, Lbx;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 57
    :cond_0
    invoke-super {p0, p1, p2}, Lsi;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 58
    invoke-virtual {p0, p1, p2, p3, p4}, Lbc;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Lsi;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lbc;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 61
    invoke-super {p0, p1, p2, p3}, Lsi;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    .line 62
    invoke-super {p0}, Lsi;->onDestroy()V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 63
    invoke-virtual {v0}, Lbx;->l()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 64
    sget-object v1, Lh;->f:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 65
    invoke-super {p0}, Lsi;->onLowMemory()V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 66
    invoke-virtual {v0}, Lbx;->m()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 67
    invoke-super {p0, p1, p2}, Lsi;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    iget-object p1, p0, Lbc;->a:Lbl;

    iget-object p1, p1, Lbl;->a:Lbn;

    iget-object p1, p1, Lbn;->e:Lbx;

    .line 68
    invoke-virtual {p1, p2}, Lbx;->b(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_2
    iget-object p1, p0, Lbc;->a:Lbl;

    iget-object p1, p1, Lbl;->a:Lbn;

    iget-object p1, p1, Lbn;->e:Lbx;

    .line 69
    invoke-virtual {p1, p2}, Lbx;->a(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 70
    invoke-virtual {v0, p1}, Lbx;->a(Z)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Lsi;->onNewIntent(Landroid/content/Intent;)V

    iget-object p1, p0, Lbc;->a:Lbl;

    .line 72
    invoke-virtual {p1}, Lbl;->b()V

    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lbc;->a:Lbl;

    iget-object p1, p1, Lbl;->a:Lbn;

    iget-object p1, p1, Lbn;->e:Lbx;

    .line 73
    invoke-virtual {p1, p2}, Lbx;->b(Landroid/view/Menu;)V

    const/4 p1, 0x0

    .line 74
    :cond_0
    invoke-super {p0, p1, p2}, Lsi;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 75
    invoke-super {p0}, Lsi;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbc;->c:Z

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 76
    invoke-virtual {v0}, Lbx;->j()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 77
    sget-object v1, Lh;->d:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 78
    invoke-virtual {v0, p1}, Lbx;->b(Z)V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 79
    invoke-super {p0}, Lsi;->onPostResume()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 80
    sget-object v1, Lh;->c:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 81
    invoke-virtual {v0}, Lbx;->i()V

    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 82
    invoke-super {p0, p1, p2, p3}, Lsi;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    iget-object p2, p0, Lbc;->a:Lbl;

    iget-object p2, p2, Lbl;->a:Lbn;

    iget-object p2, p2, Lbn;->e:Lbx;

    .line 83
    invoke-virtual {p2, p3}, Lbx;->a(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 84
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lsi;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 85
    invoke-virtual {v0}, Lbl;->b()V

    .line 86
    invoke-super {p0, p1, p2, p3}, Lsi;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    shr-int/lit8 p1, p1, 0x10

    int-to-char p1, p1

    if-eqz p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    iget-object p2, p0, Lbc;->g:Ltp;

    .line 87
    invoke-virtual {p2, p1}, Ltp;->a(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object p3, p0, Lbc;->g:Ltp;

    .line 88
    invoke-virtual {p3, p1}, Ltp;->b(I)V

    const-string p1, "FragmentActivity"

    if-nez p2, :cond_0

    .line 89
    const-string p2, "Activity result delivered for unknown Fragment."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Lbc;->a:Lbl;

    .line 90
    invoke-virtual {p3, p2}, Lbl;->a(Ljava/lang/String;)Lba;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity result no fragment exists for who: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Lsi;->onResume()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc;->c:Z

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 93
    invoke-virtual {v0}, Lbl;->b()V

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 94
    invoke-virtual {v0}, Lbl;->c()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-super {p0, p1}, Lsi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lbc;->f()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 97
    sget-object v1, Lh;->e:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 98
    invoke-virtual {v0}, Lbx;->e()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Lbc;->g:Ltp;

    .line 100
    invoke-virtual {v0}, Ltp;->c()I

    move-result v0

    if-lez v0, :cond_2

    iget v0, p0, Lbc;->f:I

    .line 101
    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lbc;->g:Ltp;

    .line 102
    invoke-virtual {v0}, Ltp;->c()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lbc;->g:Ltp;

    .line 103
    invoke-virtual {v1}, Ltp;->c()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lbc;->g:Ltp;

    .line 104
    invoke-virtual {v3}, Ltp;->c()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lbc;->g:Ltp;

    .line 105
    invoke-virtual {v3, v2}, Ltp;->c(I)I

    move-result v3

    aput v3, v0, v2

    iget-object v3, p0, Lbc;->g:Ltp;

    .line 106
    invoke-virtual {v3, v2}, Ltp;->d(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 107
    const-string v2, "android:support:request_indicies"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 108
    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 109
    invoke-super {p0}, Lsi;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbc;->d:Z

    iget-boolean v0, p0, Lbc;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc;->b:Z

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 110
    invoke-virtual {v0}, Lbx;->g()V

    :cond_0
    iget-object v0, p0, Lbc;->a:Lbl;

    .line 111
    invoke-virtual {v0}, Lbl;->b()V

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 112
    invoke-virtual {v0}, Lbl;->c()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 113
    sget-object v1, Lh;->b:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 114
    invoke-virtual {v0}, Lbx;->h()V

    return-void
.end method

.method public final onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Lbc;->a:Lbl;

    .line 115
    invoke-virtual {v0}, Lbl;->b()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 116
    invoke-super {p0}, Lsi;->onStop()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbc;->d:Z

    .line 117
    invoke-direct {p0}, Lbc;->f()V

    iget-object v0, p0, Lbc;->a:Lbl;

    iget-object v0, v0, Lbl;->a:Lbn;

    iget-object v0, v0, Lbn;->e:Lbx;

    .line 118
    invoke-virtual {v0}, Lbx;->k()V

    iget-object v0, p0, Lbc;->h:Lj;

    .line 119
    sget-object v1, Lh;->e:Lh;

    invoke-virtual {v0, v1}, Lj;->a(Lh;)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Lbc;->e:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 120
    invoke-static {p2}, Lbc;->a(I)V

    .line 121
    :cond_0
    invoke-super {p0, p1, p2}, Lsi;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    iget-boolean v0, p0, Lbc;->e:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 122
    invoke-static {p2}, Lbc;->a(I)V

    .line 123
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lsi;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 124
    invoke-static {p2}, Lbc;->a(I)V

    .line 125
    :cond_0
    invoke-super/range {p0 .. p6}, Lsi;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public final startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 126
    invoke-static {p2}, Lbc;->a(I)V

    .line 127
    :cond_0
    invoke-super/range {p0 .. p7}, Lsi;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method
