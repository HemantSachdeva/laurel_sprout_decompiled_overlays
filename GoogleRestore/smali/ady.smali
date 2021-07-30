.class public final synthetic Lady;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lady;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lady;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->s:Lacw;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Restore jobs timeout! Force Activity to finish."

    invoke-virtual {v1, v4, v3}, Laqd;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-boolean v1, v1, Lada;->h:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v3, Laww;->d:Laww;

    sget-object v4, Lawu;->e:Lawu;

    invoke-virtual {v1, v3, v4}, Lacy;->a(Laww;Lawu;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->o:Lada;

    iget-boolean v1, v1, Lada;->i:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v3, Laww;->e:Laww;

    sget-object v4, Lawu;->e:Lawu;

    invoke-virtual {v1, v3, v4}, Lacy;->a(Laww;Lawu;)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->a(IZ)V

    :cond_1
    iget-object v1, v0, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->l:Lacy;

    sget-object v2, Lawo;->e:Lawo;

    invoke-virtual {v1, v2}, Lacy;->a(Lawo;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;->b(I)V

    return-void
.end method
