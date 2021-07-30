.class final Lbfp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lbfq;

.field private final b:Lbfo;


# direct methods
.method public constructor <init>(Lbfq;Lbfo;)V
    .locals 0

    iput-object p1, p0, Lbfp;->a:Lbfq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbfp;->b:Lbfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lbfp;->a:Lbfq;

    iget-boolean v0, v0, Lbfq;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbfp;->b:Lbfo;

    iget-object v0, v0, Lbfo;->b:Lbds;

    .line 1
    invoke-virtual {v0}, Lbds;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget v1, v0, Lbds;->c:I

    .line 2
    invoke-static {v1}, Lbei;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbfp;->a:Lbfq;

    iget-object v2, v1, Lbfq;->d:Lbdy;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lbfp;->a:Lbfq;

    iget-object v4, v3, Lbfq;->f:Lbgn;

    iget v0, v0, Lbds;->c:I

    .line 22
    const-string v5, "d"

    invoke-virtual {v2, v1, v0, v5}, Lbdz;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v6, Lbhv;

    .line 23
    invoke-direct {v6, v5, v4}, Lbhv;-><init>(Landroid/content/Intent;Lbgn;)V

    .line 24
    invoke-virtual {v2, v1, v0, v6, v3}, Lbdy;->a(Landroid/content/Context;ILbhw;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 25
    :cond_1
    const-string v4, "GooglePlayServicesErrorDialog"

    invoke-virtual {v2, v1, v0, v4, v3}, Lbdy;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void

    :cond_2
    iget v1, v0, Lbds;->c:I

    const/16 v4, 0x12

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lbfp;->a:Lbfq;

    iget-object v1, v0, Lbfq;->d:Lbdy;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()Landroid/app/Activity;

    move-result-object v0

    iget-object v5, p0, Lbfp;->a:Lbfq;

    new-instance v6, Landroid/widget/ProgressBar;

    const v7, 0x101007a

    .line 3
    const/4 v8, 0x0

    invoke-direct {v6, v0, v8, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {v6, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 5
    invoke-virtual {v6, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 8
    invoke-static {v0, v4}, Lbhp;->c(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10
    const-string v3, ""

    invoke-virtual {v2, v3, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 11
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 12
    const-string v3, "GooglePlayServicesUpdatingDialog"

    invoke-virtual {v1, v0, v2, v3, v5}, Lbdy;->a(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lbfp;->a:Lbfq;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()Landroid/app/Activity;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lbgk;

    invoke-direct {v1, p0, v2}, Lbgk;-><init>(Lbfp;Landroid/app/Dialog;)V

    new-instance v2, Landroid/content/IntentFilter;

    .line 14
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v3, Lbgl;

    .line 16
    invoke-direct {v3, v1}, Lbgl;-><init>(Lbgk;)V

    .line 17
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object v0, v3, Lbgl;->a:Landroid/content/Context;

    .line 18
    invoke-static {v0}, Lbei;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    invoke-virtual {v1}, Lbgk;->a()V

    .line 20
    invoke-virtual {v3}, Lbgl;->a()V

    return-void

    .line 24
    :cond_3
    :goto_0
    return-void

    .line 20
    :cond_4
    iget-object v1, p0, Lbfp;->a:Lbfq;

    iget-object v2, p0, Lbfp;->b:Lbfo;

    iget v2, v2, Lbfo;->a:I

    .line 21
    invoke-virtual {v1, v0, v2}, Lbfq;->a(Lbds;I)V

    return-void

    :cond_5
    iget-object v1, p0, Lbfp;->a:Lbfq;

    iget-object v4, v1, Lbfq;->f:Lbgn;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->g()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, v0, Lbds;->d:Landroid/app/PendingIntent;

    .line 26
    invoke-static {v0}, Lbir;->a(Ljava/lang/Object;)V

    iget-object v5, p0, Lbfp;->b:Lbfo;

    iget v5, v5, Lbfo;->a:I

    .line 27
    invoke-static {v1, v0, v5, v3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;

    move-result-object v0

    .line 28
    invoke-interface {v4, v0, v2}, Lbgn;->a(Landroid/content/Intent;I)V

    return-void
.end method
