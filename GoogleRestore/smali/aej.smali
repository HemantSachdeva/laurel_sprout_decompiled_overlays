.class public final Laej;
.super Landroid/os/AsyncTask;
.source "PG"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;Landroid/content/Context;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iput-object p2, p0, Laej;->a:Landroid/content/Context;

    iput-object p3, p0, Laej;->b:Ljava/util/Map;

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, [Ljava/lang/Void;

    const/4 p1, 0x0

    :try_start_0
    sget-object v0, Land;->v:Lccv;

    invoke-virtual {v0}, Lccv;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laej;->a:Landroid/content/Context;

    iget-object v1, p0, Laej;->b:Ljava/util/Map;

    invoke-static {v1}, Laqe;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Laox;->a(Landroid/content/Context;Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Laej;->a:Landroid/content/Context;

    iget-object v1, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v1, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->k:Lagf;

    iget-object v1, v1, Lagf;->a:Landroid/accounts/Account;

    iget-object v2, p0, Laej;->b:Ljava/util/Map;

    invoke-static {v2}, Laqe;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Laox;->a(Landroid/content/Context;Landroid/accounts/Account;Ljava/util/Collection;)V

    :goto_0
    iget-object v0, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v1, Laww;->b:Laww;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-wide v4, v4, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->r:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lacy;->a(Laww;J)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v1, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Interrupted while apply restore packages"

    invoke-virtual {v1, v3, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v1, Laww;->b:Laww;

    sget-object v2, Lawu;->c:Lawu;

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v1, v1, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    new-array v2, p1, [Ljava/lang/Object;

    const-string v3, "Remote exception applying restore packages"

    invoke-virtual {v1, v3, v0, v2}, Laqd;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    iget-object v0, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v0, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v1, Laww;->b:Laww;

    sget-object v2, Lawu;->b:Lawu;

    :goto_1
    invoke-virtual {v0, v1, v2}, Lacy;->a(Laww;Lawu;)V

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Laej;->c:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    return-void
.end method
