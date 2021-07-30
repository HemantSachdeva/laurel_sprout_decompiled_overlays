.class public final Ladh;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Ladh;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;

    iput-object p2, p0, Ladh;->a:Landroid/content/Context;

    iput-object p3, p0, Ladh;->b:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Ladh;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->l:Ladg;

    iget-object v0, p0, Ladh;->a:Landroid/content/Context;

    iget-object v1, p0, Ladh;->b:Ljava/util/List;

    invoke-static {v0, v1}, Laox;->a(Landroid/content/Context;Ljava/util/Collection;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Interrupted while apply restore packages"

    invoke-virtual {v1, v3, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Remote exception applying restore packages"

    invoke-virtual {v1, v3, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 8

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Ladh;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    const-string v1, "onAsyncRestoreJobCompleted must run on the main thread."

    invoke-static {v1}, Laqe;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->j:Lacw;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    const-string v2, "failed"

    goto :goto_0

    :cond_0
    const-string v2, "succeeded"

    :goto_0
    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v2, "Async restore job for apps is completed, it %s"

    invoke-virtual {v1, v2, v3}, Laqd;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->k:Laoz;

    invoke-static {}, Lakb;->a()Ldjy;

    move-result-object v2

    sget-object v3, Lavl;->f:Lavl;

    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    iget v5, v1, Laoz;->a:I

    iget-boolean v6, v3, Ldjy;->b:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v4, v3, Ldjy;->b:Z

    :cond_1
    iget-object v6, v3, Ldjy;->a:Ldkd;

    check-cast v6, Lavl;

    iget v7, v6, Lavl;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v6, Lavl;->a:I

    iput v5, v6, Lavl;->c:I

    iget v5, v1, Laoz;->b:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v6, Lavl;->a:I

    iput v5, v6, Lavl;->d:I

    or-int/lit8 v5, v7, 0x8

    iput v5, v6, Lavl;->a:I

    iput-boolean p1, v6, Lavl;->e:Z

    iget-boolean p1, v2, Ldjy;->b:Z

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v4, v2, Ldjy;->b:Z

    :cond_2
    iget-object p1, v2, Ldjy;->a:Ldkd;

    check-cast p1, Lavi;

    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v3

    check-cast v3, Lavl;

    sget-object v4, Lavi;->q:Lavi;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, p1, Lavi;->o:Lavl;

    iget v3, p1, Lavi;->b:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p1, Lavi;->b:I

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lavi;

    sget-object v2, Lavh;->J:Lavh;

    invoke-virtual {v1, p1, v2}, Laoz;->a(Lavi;Lavh;)V

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/AppPickerHostActivity;->f()V

    return-void
.end method
