.class public final synthetic Ladm;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/function/Supplier;


# instance fields
.field private final a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ladm;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Ladm;->a:Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;

    invoke-static {v1}, Lacy;->a(Landroid/content/Context;)Lacy;

    move-result-object v4

    new-instance v16, Ladl;

    invoke-static {v1}, Lbqm;->a(Lbc;)Lai;

    move-result-object v2

    const-class v3, Lagg;

    invoke-virtual {v2, v3}, Lai;->a(Ljava/lang/Class;)Lac;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lagg;

    new-instance v5, Lapj;

    invoke-direct {v5, v1}, Lapj;-><init>(Landroid/content/Context;)V

    new-instance v2, Ladi;

    invoke-direct {v2, v1}, Ladi;-><init>(Lcom/google/android/apps/pixelmigrate/cloudrestore/component/CloudRestoreFlowActivity;)V

    invoke-static {v2}, Lcrq;->a(Lcrm;)Lcrm;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ladj;

    invoke-direct {v6, v2}, Ladj;-><init>(Lcrm;)V

    new-instance v7, Lajz;

    invoke-direct {v7, v1}, Lajz;-><init>(Landroid/content/Context;)V

    new-instance v8, Lahc;

    invoke-direct {v8, v1, v1, v4}, Lahc;-><init>(Landroid/content/Context;Lahb;Lacy;)V

    new-instance v9, Lajs;

    invoke-static {}, Lajs;->a()Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Lajs;-><init>(Landroid/content/Context;Landroid/os/ResultReceiver;)V

    new-instance v10, Lasu;

    invoke-direct {v10, v1}, Lasu;-><init>(Landroid/content/Context;)V

    sget-object v11, Ladk;->a:Ladk;

    const/16 v2, 0x9

    invoke-static {v2}, Laqq;->a(I)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v12

    new-instance v13, Lafw;

    invoke-direct {v13, v1}, Lafw;-><init>(Landroid/content/Context;)V

    sget-object v14, Lbdy;->a:Lbdy;

    new-instance v15, Laul;

    invoke-direct {v15, v1}, Laul;-><init>(Landroid/app/Activity;)V

    move-object/from16 v2, v16

    invoke-direct/range {v2 .. v15}, Ladl;-><init>(Lagg;Lacy;Lapj;Lj$/util/function/Supplier;Lajz;Lahc;Lajs;Lasu;Ladk;Ljava/util/concurrent/ThreadPoolExecutor;Lafw;Lbdy;Laug;)V

    return-object v16
.end method
