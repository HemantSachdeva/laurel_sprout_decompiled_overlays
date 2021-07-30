.class public Lav;
.super Lba;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private Z:Landroid/os/Handler;

.field public final a:Landroid/content/DialogInterface$OnDismissListener;

.field private final aa:Ljava/lang/Runnable;

.field private final ab:Landroid/content/DialogInterface$OnCancelListener;

.field private ac:I

.field private ad:I

.field private ae:Z

.field private af:I

.field private ag:Z

.field private final ah:Lw;

.field private ai:Z

.field private aj:Z

.field private ak:Z

.field public b:Z

.field public c:Landroid/app/Dialog;

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lba;-><init>()V

    new-instance v0, Laq;

    .line 2
    invoke-direct {v0, p0}, Laq;-><init>(Lav;)V

    iput-object v0, p0, Lav;->aa:Ljava/lang/Runnable;

    new-instance v0, Lar;

    .line 3
    invoke-direct {v0, p0}, Lar;-><init>(Lav;)V

    iput-object v0, p0, Lav;->ab:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Las;

    .line 4
    invoke-direct {v0, p0}, Las;-><init>(Lav;)V

    iput-object v0, p0, Lav;->a:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput v0, p0, Lav;->ac:I

    iput v0, p0, Lav;->ad:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lav;->ae:Z

    iput-boolean v1, p0, Lav;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lav;->af:I

    new-instance v1, Lat;

    .line 5
    invoke-direct {v1, p0}, Lat;-><init>(Lav;)V

    iput-object v1, p0, Lav;->ah:Lw;

    iput-boolean v0, p0, Lav;->d:Z

    return-void
.end method

.method private final a(ZZ)V
    .locals 4

    iget-boolean v0, p0, Lav;->aj:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->aj:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lav;->ak:Z

    iget-object v2, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v2, p0, Lav;->c:Landroid/app/Dialog;

    .line 10
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v2, p0, Lav;->Z:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne p2, v2, :cond_1

    iget-object p2, p0, Lav;->c:Landroid/app/Dialog;

    .line 12
    invoke-virtual {p0, p2}, Lav;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object p2, p0, Lav;->Z:Landroid/os/Handler;

    iget-object v2, p0, Lav;->aa:Ljava/lang/Runnable;

    .line 13
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lav;->ai:Z

    iget p2, p0, Lav;->af:I

    if-ltz p2, :cond_4

    .line 14
    invoke-virtual {p0}, Lba;->t()Lbx;

    move-result-object p1

    iget p2, p0, Lav;->af:I

    if-ltz p2, :cond_3

    .line 15
    new-instance v0, Lbw;

    .line 16
    invoke-direct {v0, p1, p2}, Lbw;-><init>(Lbx;I)V

    invoke-virtual {p1, v0, v1}, Lbx;->a(Lbv;Z)V

    const/4 p1, -0x1

    iput p1, p0, Lav;->af:I

    return-void

    .line 14
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_4
    invoke-virtual {p0}, Lba;->t()Lbx;

    move-result-object p2

    invoke-virtual {p2}, Lbx;->a()Lch;

    move-result-object p2

    iget-object v0, p0, Lba;->w:Lbx;

    if-eqz v0, :cond_6

    move-object v1, p2

    check-cast v1, Lan;

    iget-object v1, v1, Lan;->a:Lbx;

    if-ne v0, v1, :cond_5

    goto :goto_1

    .line 20
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p0}, Lba;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is already attached to a FragmentManager."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_6
    :goto_1
    new-instance v0, Lcg;

    const/4 v1, 0x3

    .line 18
    invoke-direct {v0, v1, p0}, Lcg;-><init>(ILba;)V

    invoke-virtual {p2, v0}, Lch;->a(Lcg;)V

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {p2}, Lch;->c()V

    return-void

    .line 20
    :cond_7
    invoke-virtual {p2}, Lch;->b()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .line 23
    invoke-super {p0, p1}, Lba;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lba;->W:Lv;

    iget-object v0, p0, Lav;->ah:Lw;

    .line 24
    invoke-virtual {p1, v0}, Ls;->a(Lw;)V

    iget-boolean p1, p0, Lav;->ak:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lav;->aj:Z

    :cond_0
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 3

    .line 25
    invoke-super {p0, p1}, Lba;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/os/Handler;

    .line 26
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lav;->Z:Landroid/os/Handler;

    iget v0, p0, Lav;->B:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iput-boolean v0, p0, Lav;->b:Z

    if-eqz p1, :cond_1

    .line 27
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lav;->ac:I

    .line 28
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lav;->ad:I

    .line 29
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lav;->ae:Z

    iget-boolean v0, p0, Lav;->b:Z

    .line 30
    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lav;->b:Z

    const/4 v0, -0x1

    .line 31
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lav;->af:I

    :cond_1
    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 0

    .line 71
    invoke-super {p0, p1, p2, p3}, Lba;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    iget-object p1, p0, Lav;->L:Landroid/view/View;

    if-nez p1, :cond_0

    iget-object p1, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 72
    const-string p1, "android:savedDialogState"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lav;->c:Landroid/app/Dialog;

    .line 73
    invoke-virtual {p2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public a(Lbx;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->aj:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->ak:Z

    .line 75
    invoke-virtual {p1}, Lbx;->a()Lch;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p0, p2}, Lch;->a(Lba;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lch;->b()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    .line 68
    invoke-super {p0, p1}, Lba;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 69
    const-string v0, "android:savedDialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget v0, p0, Lav;->ac:I

    if-eqz v0, :cond_1

    .line 59
    const-string v1, "android:style"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, Lav;->ad:I

    if-eqz v0, :cond_2

    .line 60
    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v0, p0, Lav;->ae:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 61
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-boolean v0, p0, Lav;->b:Z

    if-nez v0, :cond_4

    .line 62
    const-string v0, "android:showsDialog"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget v0, p0, Lav;->af:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 63
    const-string v1, "android:backStackId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 1

    .line 8
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lav;->a(ZZ)V

    return-void
.end method

.method public final e()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 74
    return-object v0

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not have a Dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()V
    .locals 2

    .line 38
    invoke-super {p0}, Lba;->f()V

    iget-boolean v0, p0, Lav;->ak:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lav;->aj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lav;->aj:Z

    :cond_0
    iget-object v0, p0, Lba;->W:Lv;

    iget-object v1, p0, Lav;->ah:Lw;

    .line 39
    invoke-virtual {v0, v1}, Ls;->b(Lw;)V

    return-void
.end method

.method public final g()Lbj;
    .locals 2

    .line 6
    invoke-super {p0}, Lba;->g()Lbj;

    move-result-object v0

    new-instance v1, Lau;

    .line 7
    invoke-direct {v1, p0, v0}, Lau;-><init>(Lav;Lbj;)V

    return-object v1
.end method

.method public h()V
    .locals 2

    .line 64
    invoke-super {p0}, Lba;->h()V

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lav;->ai:Z

    .line 65
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .line 66
    invoke-super {p0}, Lba;->i()V

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 34
    invoke-super {p0}, Lba;->j()V

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lav;->ai:Z

    .line 35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-boolean v0, p0, Lav;->aj:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lav;->c:Landroid/app/Dialog;

    .line 37
    invoke-virtual {p0, v0}, Lav;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iput-object v1, p0, Lav;->c:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lav;->d:Z

    :cond_1
    return-void
.end method

.method public k()Landroid/app/Dialog;
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Lbx;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateDialog called for DialogFragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    new-instance v0, Landroid/app/Dialog;

    .line 33
    invoke-virtual {p0}, Lba;->q()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lav;->ad:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public final l()Landroid/view/LayoutInflater;
    .locals 7

    .line 42
    invoke-virtual {p0}, Lba;->J()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-boolean v1, p0, Lav;->b:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lav;->ag:Z

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 45
    :cond_0
    iget-boolean v1, p0, Lav;->d:Z

    if-nez v1, :cond_5

    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lav;->ag:Z

    .line 46
    invoke-virtual {p0}, Lav;->k()Landroid/app/Dialog;

    move-result-object v4

    iput-object v4, p0, Lav;->c:Landroid/app/Dialog;

    iget-boolean v5, p0, Lav;->b:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lav;->ac:I

    if-eq v5, v3, :cond_2

    if-eq v5, v2, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    if-eqz v5, :cond_2

    const/16 v6, 0x18

    .line 48
    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 56
    :cond_2
    nop

    .line 49
    invoke-virtual {v4, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 46
    :goto_0
    invoke-virtual {p0}, Lba;->r()Lbc;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lav;->c:Landroid/app/Dialog;

    .line 50
    invoke-virtual {v5, v4}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    :cond_3
    iget-object v4, p0, Lav;->c:Landroid/app/Dialog;

    iget-boolean v5, p0, Lav;->ae:Z

    .line 51
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v4, p0, Lav;->c:Landroid/app/Dialog;

    iget-object v5, p0, Lav;->ab:Landroid/content/DialogInterface$OnCancelListener;

    .line 52
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v4, p0, Lav;->c:Landroid/app/Dialog;

    iget-object v5, p0, Lav;->a:Landroid/content/DialogInterface$OnDismissListener;

    .line 53
    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-boolean v3, p0, Lav;->d:Z

    goto :goto_1

    .line 54
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lav;->c:Landroid/app/Dialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :goto_1
    iput-boolean v1, p0, Lav;->ag:Z

    goto :goto_2

    .line 48
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Lav;->ag:Z

    .line 54
    throw v0

    .line 53
    :cond_5
    :goto_2
    invoke-static {v2}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from dialog context"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    iget-object v1, p0, Lav;->c:Landroid/app/Dialog;

    if-eqz v1, :cond_7

    .line 56
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :cond_7
    return-object v0

    .line 42
    :cond_8
    :goto_3
    invoke-static {v2}, Lbx;->a(I)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getting layout inflater for DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lav;->b:Z

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShowsDialog = false: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_4

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCreatingDialog = true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    :cond_a
    :goto_4
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean p1, p0, Lav;->ai:Z

    if-nez p1, :cond_1

    const/4 p1, 0x3

    invoke-static {p1}, Lbx;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDismiss called for DialogFragment "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    nop

    .line 41
    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lav;->a(ZZ)V

    :cond_1
    return-void
.end method
